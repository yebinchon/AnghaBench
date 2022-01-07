
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event ;


 int * SD_EVENT_DEFAULT ;
 int * default_event ;

__attribute__((used)) static sd_event *event_resolve(sd_event *e) {
        return e == SD_EVENT_DEFAULT ? default_event : e;
}
