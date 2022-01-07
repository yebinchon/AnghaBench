
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct parser {int error; struct view** view; struct list* mem; scalar_t__ len; scalar_t__ idx; int const* cmd; } ;
struct list {int dummy; } ;
typedef int WCHAR ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int) ;
 int WBEM_E_INVALID_QUERY ;
 int destroy_view (struct view*) ;
 int wql_parse (struct parser*) ;

HRESULT parse_query( const WCHAR *str, struct view **view, struct list *mem )
{
    struct parser parser;
    int ret;

    *view = ((void*)0);

    parser.cmd = str;
    parser.idx = 0;
    parser.len = 0;
    parser.error = WBEM_E_INVALID_QUERY;
    parser.view = view;
    parser.mem = mem;

    ret = wql_parse( &parser );
    TRACE("wql_parse returned %d\n", ret);
    if (ret)
    {
        if (*parser.view)
        {
            destroy_view( *parser.view );
            *parser.view = ((void*)0);
        }
        return parser.error;
    }
    return S_OK;
}
