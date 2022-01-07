
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INThandler ;
 int SIGINT ;
 scalar_t__ UTIL_isRegularFile (char const*) ;
 char const* g_artefact ;
 int signal (int ,int ) ;

__attribute__((used)) static void addHandler(char const* dstFileName)
{
    if (UTIL_isRegularFile(dstFileName)) {
        g_artefact = dstFileName;
        signal(SIGINT, INThandler);
    } else {
        g_artefact = ((void*)0);
    }
}
