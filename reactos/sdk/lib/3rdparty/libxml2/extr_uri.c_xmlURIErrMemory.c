
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XML_ERR_FATAL ;
 int XML_ERR_NO_MEMORY ;
 int XML_FROM_URI ;
 int __xmlRaiseError (int *,int *,int *,int *,int *,int ,int ,int ,int *,int ,char const*,int *,int *,int ,int ,char*,...) ;

__attribute__((used)) static void
xmlURIErrMemory(const char *extra)
{
    if (extra)
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), XML_FROM_URI,
                        XML_ERR_NO_MEMORY, XML_ERR_FATAL, ((void*)0), 0,
                        extra, ((void*)0), ((void*)0), 0, 0,
                        "Memory allocation failed : %s\n", extra);
    else
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0), XML_FROM_URI,
                        XML_ERR_NO_MEMORY, XML_ERR_FATAL, ((void*)0), 0,
                        ((void*)0), ((void*)0), ((void*)0), 0, 0,
                        "Memory allocation failed\n");
}
