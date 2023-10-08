class UserModel {
  static String? objectId;
  static String? username;
  static String? createdAt;
  static String? updatedAt;
  static String? sessionToken;

  UserModel.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    username = json['username'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    sessionToken = json['sessionToken'];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['objectId'] = objectId;
    data['username'] = username;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['sessionToken'] = sessionToken;

    return data;
  }
}

class Owner {
  static String sType = "Pointer";
  static String className = "_User";
  static String? objectId = UserModel.objectId;

  Owner();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['__type'] = sType;
    data['className'] = className;
    data['objectId'] = objectId;

    return data;
  }
}
