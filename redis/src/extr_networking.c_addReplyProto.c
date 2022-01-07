
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 scalar_t__ C_OK ;
 int _addReplyProtoToList (int *,char const*,size_t) ;
 scalar_t__ _addReplyToBuffer (int *,char const*,size_t) ;
 scalar_t__ prepareClientToWrite (int *) ;

void addReplyProto(client *c, const char *s, size_t len) {
    if (prepareClientToWrite(c) != C_OK) return;
    if (_addReplyToBuffer(c,s,len) != C_OK)
        _addReplyProtoToList(c,s,len);
}
