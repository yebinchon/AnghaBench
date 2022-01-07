
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int device_read_db_internal (int *,int) ;

__attribute__((used)) static inline int device_read_db(sd_device *device) {
        return device_read_db_internal(device, 0);
}
