
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmgiHeader {int * free_space; } ;
typedef int UInt64 ;
typedef int UInt32 ;
typedef int UChar ;
typedef int Int32 ;


 int CHM_MAX_PATHLEN ;
 unsigned int _CHM_PMGI_LEN ;
 int _chm_parse_UTF8 (int **,int,char*) ;
 int _chm_parse_cword (int **) ;
 int _unmarshal_pmgi_header (int **,unsigned int*,int,struct chmPmgiHeader*) ;
 scalar_t__ strcasecmp (char*,char const*) ;

__attribute__((used)) static Int32 _chm_find_in_PMGI(UChar *page_buf,
                        UInt32 block_len,
                        const char *objPath)
{



    struct chmPmgiHeader header;
    unsigned int hremain;
    int page=-1;
    UChar *end;
    UChar *cur;
    UInt64 strLen;
    char buffer[CHM_MAX_PATHLEN+1];


    cur = page_buf;
    hremain = _CHM_PMGI_LEN;
    if (! _unmarshal_pmgi_header(&cur, &hremain, block_len, &header))
        return -1;
    end = page_buf + block_len - (header.free_space);


    while (cur < end)
    {

        strLen = _chm_parse_cword(&cur);
        if (strLen > CHM_MAX_PATHLEN)
            return -1;
        if (! _chm_parse_UTF8(&cur, strLen, buffer))
            return -1;


        if (strcasecmp(buffer, objPath) > 0)
            return page;


        page = (int)_chm_parse_cword(&cur);
    }

    return page;
}
