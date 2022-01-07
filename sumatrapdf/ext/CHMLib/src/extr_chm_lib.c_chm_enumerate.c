
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {int flags; char* path; } ;
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



 unsigned int _CHM_PMGL_LEN ;
 size_t _chm_fetch_bytes (struct chmFile*,int *,size_t,size_t) ;
 int _chm_parse_PMGL_entry (int **,struct chmUnitInfo*) ;
 int _unmarshal_pmgl_header (int **,unsigned int*,size_t,struct chmPmglHeader*) ;
 int free (int *) ;
 int * malloc (unsigned int) ;
 size_t strlen (char*) ;
 int stub1 (struct chmFile*,struct chmUnitInfo*,void*) ;

int chm_enumerate(struct chmFile *h,
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
    UInt64 ui_path_len;


    struct chmUnitInfo ui;
    int type_bits = (what & 0x7);
    int filter_bits = (what & 0xF8);

    if (page_buf == ((void*)0))
        return 0;


    curPage = h->index_head;


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
