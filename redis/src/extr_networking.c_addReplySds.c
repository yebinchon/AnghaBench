
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int client ;


 scalar_t__ C_OK ;
 int _addReplyProtoToList (int *,int ,int ) ;
 scalar_t__ _addReplyToBuffer (int *,int ,int ) ;
 scalar_t__ prepareClientToWrite (int *) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;

void addReplySds(client *c, sds s) {
    if (prepareClientToWrite(c) != C_OK) {

        sdsfree(s);
        return;
    }
    if (_addReplyToBuffer(c,s,sdslen(s)) != C_OK)
        _addReplyProtoToList(c,s,sdslen(s));
    sdsfree(s);
}
