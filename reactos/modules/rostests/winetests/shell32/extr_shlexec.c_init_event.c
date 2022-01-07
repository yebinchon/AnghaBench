
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateEventA (int *,int ,int ,char*) ;
 int FALSE ;
 int hEvent ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void init_event(const char* child_file)
{
    char* event_name;
    event_name=strrchr(child_file, '\\')+1;
    hEvent=CreateEventA(((void*)0), FALSE, FALSE, event_name);
}
