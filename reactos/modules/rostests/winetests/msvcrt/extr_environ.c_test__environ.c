
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __getmainargs (int*,char***,char***,int ,int*) ;
 int ok (int,char*,...) ;
 char*** p__p__environ () ;
 char*** p_environ ;
 int p_get_environ (char***) ;
 int skip (char*) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__environ(void)
{
    int argc;
    char **argv, **envp = ((void*)0);
    int i, mode = 0;

    ok( p_environ != ((void*)0), "Expected the pointer to _environ to be non-NULL\n" );
    if (p_environ)
        ok( *p_environ != ((void*)0), "Expected _environ to be initialized on startup\n" );

    if (!p_environ || !*p_environ)
    {
        skip( "_environ pointers are not valid\n" );
        return;
    }


    if (p__p__environ)
    {
        ok( *p__p__environ() == *p_environ,
            "Expected _environ pointers to be identical\n" );
    }
    else
        skip( "__p__environ() is not available\n" );

    if (p_get_environ)
    {
        char **retptr;
        p_get_environ(&retptr);
        ok( retptr == *p_environ,
            "Expected _environ pointers to be identical\n" );
    }
    else
        win_skip( "_get_environ() is not available\n" );



    __getmainargs(&argc, &argv, &envp, 0, &mode);

    ok( envp != ((void*)0), "Expected initial environment block pointer to be non-NULL\n" );
    if (!envp)
    {
        skip( "Initial environment block pointer is not valid\n" );
        return;
    }

    for (i = 0; ; i++)
    {
        if ((*p_environ)[i])
        {
            ok( envp[i] != ((void*)0), "Expected environment block pointer element to be non-NULL\n" );
            ok( !strcmp((*p_environ)[i], envp[i]),
                "Expected _environ and environment block pointer strings (%s vs. %s) to match\n",
                (*p_environ)[i], envp[i] );
        }
        else
        {
            ok( !envp[i], "Expected environment block pointer element to be NULL, got %p\n", envp[i] );
            break;
        }
    }
}
