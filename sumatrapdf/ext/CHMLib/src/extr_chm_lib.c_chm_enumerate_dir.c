
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {int flags; scalar_t__ length; char* path; } ;
struct chmPmglHeader {int block_next; int * free_space; } ;
struct chmFile {size_t block_len; int index_head; scalar_t__ dir_offset; } ;
typedef size_t UInt64 ;
typedef int UChar ;
typedef int Int32 ;
typedef int (* CHM_ENUMERATOR ) (struct chmFile*,struct chmUnitInfo*,void*) ;


 int CHM_ENUMERATE_DIRS ;
 int CHM_ENUMERATE_FILES ;
 int CHM_ENUMERATE_META ;
 int CHM_ENUMERATE_NORMAL ;
 int CHM_ENUMERATE_SPECIAL ;



 int CHM_MAX_PATHLEN ;
 unsigned int _CHM_PMGL_LEN ;
 size_t _chm_fetch_bytes (struct chmFile*,int *,size_t,size_t) ;
 int _chm_parse_PMGL_entry (int **,struct chmUnitInfo*) ;
 int _unmarshal_pmgl_header (int **,unsigned int*,size_t,struct chmPmglHeader*) ;
 int free (int *) ;
 int * malloc (unsigned int) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 int stub1 (struct chmFile*,struct chmUnitInfo*,void*) ;

int chm_enumerate_dir(struct chmFile *h,
                      const char *prefix,
                      int what,
                      CHM_ENUMERATOR e,
                      void *context)
{




    Int32 curPage;



    UChar *page_buf = malloc((unsigned int)h->block_len);
    struct chmPmglHeader header;
    UChar *end;
    UChar *cur;
    unsigned int lenRemain;


    int it_has_begun=0;


    struct chmUnitInfo ui;
    int type_bits = (what & 0x7);
    int filter_bits = (what & 0xF8);
    UInt64 ui_path_len;


    char prefixRectified[CHM_MAX_PATHLEN+1];
    int prefixLen;
    char lastPath[CHM_MAX_PATHLEN+1];
    int lastPathLen;

    if (page_buf == ((void*)0))
        return 0;


    curPage = h->index_head;


    strncpy(prefixRectified, prefix, CHM_MAX_PATHLEN);
    prefixRectified[CHM_MAX_PATHLEN] = '\0';
    prefixLen = strlen(prefixRectified);
    if (prefixLen != 0)
    {
        if (prefixRectified[prefixLen-1] != '/')
        {
            prefixRectified[prefixLen] = '/';
            prefixRectified[prefixLen+1] = '\0';
            ++prefixLen;
        }
    }
    lastPath[0] = '\0';
    lastPathLen = -1;


    while (curPage != -1)
    {


        if (_chm_fetch_bytes(h,
                             page_buf,
                             (UInt64)h->dir_offset + (UInt64)curPage*h->block_len,
                             h->block_len) != h->block_len)
        {
            free(page_buf);
            return 0;
        }


        cur = page_buf;
        lenRemain = _CHM_PMGL_LEN;
        if (! _unmarshal_pmgl_header(&cur, &lenRemain, h->block_len, &header))
        {
            free(page_buf);
            return 0;
        }
        end = page_buf + h->block_len - (header.free_space);


        while (cur < end)
        {
            ui.flags = 0;

            if (! _chm_parse_PMGL_entry(&cur, &ui))
            {
                free(page_buf);
                return 0;
            }


            if (! it_has_begun)
            {
                if (ui.length == 0 && strncasecmp(ui.path, prefixRectified, prefixLen) == 0)
                    it_has_begun = 1;
                else
                    continue;

                if (ui.path[prefixLen] == '\0')
                    continue;
            }


            else
            {
                if (strncasecmp(ui.path, prefixRectified, prefixLen) != 0)
                {
                    free(page_buf);
                    return 1;
                }
            }


            if (lastPathLen != -1)
            {
                if (strncasecmp(ui.path, lastPath, lastPathLen) == 0)
                    continue;
            }
            strncpy(lastPath, ui.path, CHM_MAX_PATHLEN);
            lastPath[CHM_MAX_PATHLEN] = '\0';
            lastPathLen = strlen(lastPath);


            ui_path_len = strlen(ui.path)-1;


            if (ui.path[ui_path_len] == '/')
                ui.flags |= CHM_ENUMERATE_DIRS;


            if (ui.path[ui_path_len] != '/')
                ui.flags |= CHM_ENUMERATE_FILES;


            if (ui.path[0] == '/')
            {


                if (ui.path[1] == '#' || ui.path[1] == '$')
                    ui.flags |= CHM_ENUMERATE_SPECIAL;
                else
                    ui.flags |= CHM_ENUMERATE_NORMAL;
            }
            else
                ui.flags |= CHM_ENUMERATE_META;

            if (! (type_bits & ui.flags))
                continue;

            if (filter_bits && ! (filter_bits & ui.flags))
                continue;


            {
                int status = (*e)(h, &ui, context);
                switch (status)
                {
                    case 129:
                        free(page_buf);
                        return 0;
                    case 130:
                        break;
                    case 128:
                        free(page_buf);
                        return 1;
                    default:
                        break;
                }
            }
        }


        curPage = header.block_next;
    }

    free(page_buf);
    return 1;
}
