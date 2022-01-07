
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_tokenizer ;
struct TYPE_3__ {scalar_t__* locale; } ;
typedef TYPE_1__ mm_tokenizer_t ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 TYPE_1__* sqlite3_malloc (int) ;
 int strncpy (scalar_t__*,char const* const,int) ;

__attribute__((used)) static int
mmtok_create(int argc, const char *const *argv, sqlite3_tokenizer **ppTokenizer)
{
    mm_tokenizer_t *tok = sqlite3_malloc(sizeof(mm_tokenizer_t));
    if (!tok)
        return SQLITE_NOMEM;

    if (argc > 0) {
        strncpy(tok->locale, argv[0], 15);
        tok->locale[15] = 0;
    } else
        tok->locale[0] = 0;

    *ppTokenizer = (sqlite3_tokenizer *) tok;
    return SQLITE_OK;
}
