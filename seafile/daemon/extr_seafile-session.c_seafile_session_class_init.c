
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafileSessionClass ;


 int G_SIGNAL_RUN_LAST ;
 int G_TYPE_NONE ;
 int G_TYPE_POINTER ;
 size_t REPO_COMMITTED ;
 size_t REPO_FETCHED ;
 size_t REPO_HTTP_FETCHED ;
 size_t REPO_HTTP_UPLOADED ;
 size_t REPO_UPLOADED ;
 int SEAFILE_TYPE_SESSION ;
 int g_cclosure_marshal_VOID__POINTER ;
 int g_signal_new (char*,int ,int ,int ,int *,int *,int ,int ,int,int ) ;
 int * signals ;

__attribute__((used)) static void
seafile_session_class_init (SeafileSessionClass *klass)
{

    signals[REPO_COMMITTED] =
        g_signal_new ("repo-committed", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,
                      ((void*)0), ((void*)0),
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_FETCHED] =
        g_signal_new ("repo-fetched", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,
                      ((void*)0), ((void*)0),
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_UPLOADED] =
        g_signal_new ("repo-uploaded", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,
                      ((void*)0), ((void*)0),
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);
    signals[REPO_HTTP_FETCHED] =
        g_signal_new ("repo-http-fetched", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,
                      ((void*)0), ((void*)0),
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);

    signals[REPO_HTTP_UPLOADED] =
        g_signal_new ("repo-http-uploaded", SEAFILE_TYPE_SESSION,
                      G_SIGNAL_RUN_LAST,
                      0,
                      ((void*)0), ((void*)0),
                      g_cclosure_marshal_VOID__POINTER,
                      G_TYPE_NONE, 1, G_TYPE_POINTER);
}
