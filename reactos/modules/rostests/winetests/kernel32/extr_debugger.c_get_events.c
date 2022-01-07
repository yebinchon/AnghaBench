
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int CreateEventA (int *,int ,int ,char*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void get_events(const char* name, HANDLE *start_event, HANDLE *done_event)
{
    const char* basename;
    char* event_name;

    basename=strrchr(name, '\\');
    basename=(basename ? basename+1 : name);
    event_name=HeapAlloc(GetProcessHeap(), 0, 6+strlen(basename)+1);

    sprintf(event_name, "start_%s", basename);
    *start_event=CreateEventA(((void*)0), 0,0, event_name);
    sprintf(event_name, "done_%s", basename);
    *done_event=CreateEventA(((void*)0), 0,0, event_name);
    HeapFree(GetProcessHeap(), 0, event_name);
}
