
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int LOG_VVERB ;
 int free (void*) ;
 int log_debug (int ,char*,void*,char const*,int) ;

void
_nc_free(void *ptr, const char *name, int line)
{
    ASSERT(ptr != ((void*)0));
    log_debug(LOG_VVERB, "free(%p) @ %s:%d", ptr, name, line);
    free(ptr);
}
