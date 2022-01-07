
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int __getmainargs (int*,char***,char***,int ,int*) ;
 int __wgetmainargs (int*,char***,char***,int ,int*) ;
 scalar_t__ _putenv (char*) ;
 scalar_t__ _wputenv (char const*) ;
 int ok (int,char*,...) ;
 char*** p__p__wenviron () ;
 int p_get_wenviron (char***) ;
 char*** p_wenviron ;
 int skip (char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;
 int winetest_strcmpW (char*,char*) ;

__attribute__((used)) static void test__wenviron(void)
{
    static const WCHAR cat_eq_dogW[] = {'c','a','t','=','d','o','g',0};
    static const WCHAR cat_eqW[] = {'c','a','t','=',0};

    int argc;
    char **argv, **envp = ((void*)0);
    WCHAR **wargv, **wenvp = ((void*)0);
    int i, mode = 0;

    ok( p_wenviron != ((void*)0), "Expected the pointer to _wenviron to be non-NULL\n" );
    if (p_wenviron)
        ok( *p_wenviron == ((void*)0), "Expected _wenviron to be NULL, got %p\n", *p_wenviron );
    else
    {
        win_skip( "Pointer to _wenviron is not valid\n" );
        return;
    }


    if (p__p__wenviron)
    {
        ok( *p__p__wenviron() == ((void*)0),
            "Expected _wenviron pointers to be NULL\n" );
    }
    else
        skip( "__p__wenviron() is not available\n" );

    if (p_get_wenviron)
    {
        WCHAR **retptr;
        p_get_wenviron(&retptr);
        ok( retptr == ((void*)0),
            "Expected _wenviron pointers to be NULL\n" );
    }
    else
        win_skip( "_get_wenviron() is not available\n" );


    __getmainargs(&argc, &argv, &envp, 0, &mode);

    ok( *p_wenviron == ((void*)0), "Expected _wenviron to be NULL, got %p\n", *p_wenviron);
    ok( envp != ((void*)0), "Expected initial environment block pointer to be non-NULL\n" );
    if (!envp)
    {
        skip( "Initial environment block pointer is not valid\n" );
        return;
    }


    ok( _putenv("cat=dog") == 0, "failed setting cat=dog\n" );
    ok( *p_wenviron == ((void*)0), "Expected _wenviron to be NULL, got %p\n", *p_wenviron);
    ok( _putenv("cat=") == 0, "failed deleting cat\n" );



    ok( _wputenv(cat_eq_dogW) == 0, "failed setting cat=dog\n" );
    ok( *p_wenviron != ((void*)0), "Expected _wenviron to be non-NULL\n" );
    ok( _wputenv(cat_eqW) == 0, "failed deleting cat\n" );

    __wgetmainargs(&argc, &wargv, &wenvp, 0, &mode);

    ok( *p_wenviron != ((void*)0), "Expected _wenviron to be non-NULL\n" );
    ok( wenvp != ((void*)0), "Expected initial environment block pointer to be non-NULL\n" );
    if (!wenvp)
    {
        skip( "Initial environment block pointer is not valid\n" );
        return;
    }



    if (p__p__wenviron)
    {
        ok( *p__p__wenviron() == *p_wenviron,
            "Expected _wenviron pointers to be identical\n" );
    }

    if (p_get_wenviron)
    {
        WCHAR **retptr;
        p_get_wenviron(&retptr);
        ok( retptr == *p_wenviron,
            "Expected _wenviron pointers to be identical\n" );
    }

    for (i = 0; ; i++)
    {
        if ((*p_wenviron)[i])
        {
            ok( wenvp[i] != ((void*)0), "Expected environment block pointer element to be non-NULL\n" );
            ok( !winetest_strcmpW((*p_wenviron)[i], wenvp[i]),
                "Expected _wenviron and environment block pointer strings (%s vs. %s) to match\n",
                wine_dbgstr_w((*p_wenviron)[i]), wine_dbgstr_w(wenvp[i]) );
        }
        else
        {
            ok( !wenvp[i], "Expected environment block pointer element to be NULL, got %p\n", wenvp[i] );
            break;
        }
    }
}
