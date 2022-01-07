
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int LP_AFTER ;
 int LP_BEFORE ;
 int LP_ENCODING_INT ;
 unsigned char LP_EOF ;
 int LP_HDR_NUMELE_UNKNOWN ;
 int LP_MAX_BACKLEN_SIZE ;
 int LP_MAX_INT_ENCODING_LEN ;
 int LP_REPLACE ;
 int UINT32_MAX ;
 int lpCurrentEncodedSize (unsigned char*) ;
 unsigned long lpEncodeBacklen (unsigned char*,int) ;
 int lpEncodeGetType (unsigned char*,int,unsigned char*,int*) ;
 int lpEncodeString (unsigned char*,unsigned char*,int) ;
 int lpGetNumElements (unsigned char*) ;
 int lpGetTotalBytes (unsigned char*) ;
 int lpSetNumElements (unsigned char*,int) ;
 int lpSetTotalBytes (unsigned char*,int) ;
 unsigned char* lpSkip (unsigned char*) ;
 int lp_free (unsigned char*) ;
 unsigned char* lp_malloc (int) ;
 unsigned char* lp_realloc (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,char,int) ;

unsigned char *lpInsert(unsigned char *lp, unsigned char *ele, uint32_t size, unsigned char *p, int where, unsigned char **newp) {
    unsigned char intenc[LP_MAX_INT_ENCODING_LEN];
    unsigned char backlen[LP_MAX_BACKLEN_SIZE];

    uint64_t enclen;




    if (ele == ((void*)0)) where = LP_REPLACE;





    if (where == LP_AFTER) {
        p = lpSkip(p);
        where = LP_BEFORE;
    }



    unsigned long poff = p-lp;
    int enctype;
    if (ele) {
        enctype = lpEncodeGetType(ele,size,intenc,&enclen);
    } else {
        enctype = -1;
        enclen = 0;
    }




    unsigned long backlen_size = ele ? lpEncodeBacklen(backlen,enclen) : 0;
    uint64_t old_listpack_bytes = lpGetTotalBytes(lp);
    uint32_t replaced_len = 0;
    if (where == LP_REPLACE) {
        replaced_len = lpCurrentEncodedSize(p);
        replaced_len += lpEncodeBacklen(((void*)0),replaced_len);
    }

    uint64_t new_listpack_bytes = old_listpack_bytes + enclen + backlen_size
                                  - replaced_len;
    if (new_listpack_bytes > UINT32_MAX) return ((void*)0);







    unsigned char *dst = lp + poff;


    if (new_listpack_bytes > old_listpack_bytes) {
        if ((lp = lp_realloc(lp,new_listpack_bytes)) == ((void*)0)) return ((void*)0);
        dst = lp + poff;
    }



    if (where == LP_BEFORE) {
        memmove(dst+enclen+backlen_size,dst,old_listpack_bytes-poff);
    } else {
        long lendiff = (enclen+backlen_size)-replaced_len;
        memmove(dst+replaced_len+lendiff,
                dst+replaced_len,
                old_listpack_bytes-poff-replaced_len);
    }


    if (new_listpack_bytes < old_listpack_bytes) {
        if ((lp = lp_realloc(lp,new_listpack_bytes)) == ((void*)0)) return ((void*)0);
        dst = lp + poff;
    }


    if (newp) {
        *newp = dst;


        if (!ele && dst[0] == LP_EOF) *newp = ((void*)0);
    }
    if (ele) {
        if (enctype == LP_ENCODING_INT) {
            memcpy(dst,intenc,enclen);
        } else {
            lpEncodeString(dst,ele,size);
        }
        dst += enclen;
        memcpy(dst,backlen,backlen_size);
        dst += backlen_size;
    }


    if (where != LP_REPLACE || ele == ((void*)0)) {
        uint32_t num_elements = lpGetNumElements(lp);
        if (num_elements != LP_HDR_NUMELE_UNKNOWN) {
            if (ele)
                lpSetNumElements(lp,num_elements+1);
            else
                lpSetNumElements(lp,num_elements-1);
        }
    }
    lpSetTotalBytes(lp,new_listpack_bytes);
    return lp;
}
