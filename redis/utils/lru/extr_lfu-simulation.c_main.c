
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct entry {scalar_t__ ctime; scalar_t__ hits; void* decrtime; void* counter; } ;


 void* COUNTER_INIT_VAL ;
 int access_entry (struct entry*) ;
 int keyspace_size ;
 struct entry* malloc (int) ;
 int printf (char*,...) ;
 int rand () ;
 int scan_entry (struct entry*) ;
 int show_entry (long,struct entry*) ;
 scalar_t__ switch_after ;
 scalar_t__ time (int *) ;
 void* to_16bit_minutes (scalar_t__) ;

int main(void) {
    time_t start = time(((void*)0));
    time_t new_entry_time = start;
    time_t display_time = start;
    struct entry *entries = malloc(sizeof(*entries)*keyspace_size);
    long j;


    for (j = 0; j < keyspace_size; j++) {
        entries[j].counter = COUNTER_INIT_VAL;
        entries[j].decrtime = to_16bit_minutes(start);
        entries[j].hits = 0;
        entries[j].ctime = time(((void*)0));
    }

    while(1) {
        time_t now = time(((void*)0));
        long idx;


        for (j = 0; j < 3; j++) {
            scan_entry(entries+(rand()%keyspace_size));
        }



        if (now-start < switch_after) {

            idx = 1;
            while((rand() % 21) != 0 && idx < keyspace_size) idx *= 2;
            if (idx > keyspace_size) idx = keyspace_size;
            idx = rand() % idx;
        } else {

            idx = rand() % keyspace_size;
        }
        if ((idx < 10 || idx > 14) && (idx < keyspace_size-5))
            access_entry(entries+idx);



        if (new_entry_time <= now) {
            idx = 10+(rand()%10);
            entries[idx].counter = COUNTER_INIT_VAL;
            entries[idx].decrtime = to_16bit_minutes(time(((void*)0)));
            entries[idx].hits = 0;
            entries[idx].ctime = time(((void*)0));
            new_entry_time = now+10;
        }


        if (display_time != now) {
            printf("=============================\n");
            printf("Current minutes time: %d\n", (int)to_16bit_minutes(now));
            printf("Access method: %s\n",
                (now-start < switch_after) ? "power-law" : "flat");

            for (j = 0; j < 20; j++)
                show_entry(j,entries+j);

            for (j = keyspace_size-20; j < keyspace_size; j++)
                show_entry(j,entries+j);
            display_time = now;
        }
    }
    return 0;
}
