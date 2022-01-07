
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct hllhdr {char* magic; scalar_t__ encoding; } ;
struct TYPE_6__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ HLL_DENSE ;
 int HLL_DENSE_SIZE ;
 scalar_t__ HLL_MAX_ENCODING ;
 int OBJ_STRING ;
 int addReplySds (int *,int ) ;
 scalar_t__ checkType (int *,TYPE_1__*,int ) ;
 int sdsEncodedObject (TYPE_1__*) ;
 int sdsnew (char*) ;
 int stringObjectLen (TYPE_1__*) ;

int isHLLObjectOrReply(client *c, robj *o) {
    struct hllhdr *hdr;


    if (checkType(c,o,OBJ_STRING))
        return C_ERR;

    if (!sdsEncodedObject(o)) goto invalid;
    if (stringObjectLen(o) < sizeof(*hdr)) goto invalid;
    hdr = o->ptr;


    if (hdr->magic[0] != 'H' || hdr->magic[1] != 'Y' ||
        hdr->magic[2] != 'L' || hdr->magic[3] != 'L') goto invalid;

    if (hdr->encoding > HLL_MAX_ENCODING) goto invalid;


    if (hdr->encoding == HLL_DENSE &&
        stringObjectLen(o) != HLL_DENSE_SIZE) goto invalid;


    return C_OK;

invalid:
    addReplySds(c,
        sdsnew("-WRONGTYPE Key is not a valid "
               "HyperLogLog string value.\r\n"));
    return C_ERR;
}
