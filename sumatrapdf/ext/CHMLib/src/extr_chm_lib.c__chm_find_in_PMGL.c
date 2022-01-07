
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmglHeader {int * free_space; } ;
typedef int UInt64 ;
typedef int UInt32 ;
typedef int UChar ;


 int CHM_MAX_PATHLEN ;
 unsigned int _CHM_PMGL_LEN ;
 int _chm_parse_UTF8 (int **,int,char*) ;
 int _chm_parse_cword (int **) ;
 int _chm_skip_PMGL_entry_data (int **) ;
 int _unmarshal_pmgl_header (int **,unsigned int*,int,struct chmPmglHeader*) ;
 int strcasecmp (char*,char const*) ;

__attribute__((used)) static UChar *_chm_find_in_PMGL(UChar *page_buf,
                         UInt32 block_len,
                         const char *objPath)
{



    struct chmPmglHeader header;
    unsigned int hremain;
    UChar *end;
    UChar *cur;
    UChar *temp;
    UInt64 strLen;
    char buffer[CHM_MAX_PATHLEN+1];


    cur = page_buf;
    hremain = _CHM_PMGL_LEN;
    if (! _unmarshal_pmgl_header(&cur, &hremain, block_len, &header))
        return ((void*)0);
    end = page_buf + block_len - (header.free_space);


    while (cur < end)
    {

        temp = cur;
        strLen = _chm_parse_cword(&cur);
        if (strLen > CHM_MAX_PATHLEN)
            return ((void*)0);
        if (! _chm_parse_UTF8(&cur, strLen, buffer))
            return ((void*)0);


        if (! strcasecmp(buffer, objPath))
            return temp;

        _chm_skip_PMGL_entry_data(&cur);
    }

    return ((void*)0);
}
