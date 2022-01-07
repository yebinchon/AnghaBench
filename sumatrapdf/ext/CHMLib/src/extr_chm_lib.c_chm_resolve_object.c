
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {int dummy; } ;
struct chmFile {int block_len; int index_root; scalar_t__ dir_offset; } ;
typedef int UInt64 ;
typedef int UChar ;
typedef int Int32 ;


 int CHM_RESOLVE_FAILURE ;
 int CHM_RESOLVE_SUCCESS ;
 int _chm_fetch_bytes (struct chmFile*,int *,int,int) ;
 int _chm_find_in_PMGI (int *,int,char const*) ;
 int * _chm_find_in_PMGL (int *,int,char const*) ;
 int _chm_parse_PMGL_entry (int **,struct chmUnitInfo*) ;
 int _chm_pmgi_marker ;
 int _chm_pmgl_marker ;
 int free (int *) ;
 int * malloc (int) ;
 scalar_t__ memcmp (int *,int ,int) ;

int chm_resolve_object(struct chmFile *h,
                       const char *objPath,
                       struct chmUnitInfo *ui)
{




    Int32 curPage;



    UChar *page_buf = malloc(h->block_len);
    if (page_buf == ((void*)0))
        return CHM_RESOLVE_FAILURE;


    curPage = h->index_root;


    while (curPage != -1)
    {


        if (_chm_fetch_bytes(h, page_buf,
                             (UInt64)h->dir_offset + (UInt64)curPage*h->block_len,
                             h->block_len) != h->block_len)
        {
            free(page_buf);
            return CHM_RESOLVE_FAILURE;
        }


        if (memcmp(page_buf, _chm_pmgl_marker, 4) == 0)
        {

            UChar *pEntry = _chm_find_in_PMGL(page_buf,
                                              h->block_len,
                                              objPath);
            if (pEntry == ((void*)0))
            {
                free(page_buf);
                return CHM_RESOLVE_FAILURE;
            }


            _chm_parse_PMGL_entry(&pEntry, ui);
            free(page_buf);
            return CHM_RESOLVE_SUCCESS;
        }


        else if (memcmp(page_buf, _chm_pmgi_marker, 4) == 0)
            curPage = _chm_find_in_PMGI(page_buf, h->block_len, objPath);


        else
        {
            free(page_buf);
            return CHM_RESOLVE_FAILURE;
        }
    }


    free(page_buf);
    return CHM_RESOLVE_FAILURE;
}
