
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int data_callback_good ;

__attribute__((used)) static int data_callback(void *object, uint32_t number, uint8_t connection_id, const uint8_t *data, uint16_t length)
{
    if (object != (void *)3)
        return 1;

    if (number != 7)
        return 1;

    if (length != 5)
        return 1;

    if (data[0] == 1 && data[1] == 2 && data[2] == 3 && data[3] == 4 && data[4] == 5) {
        data_callback_good++;
        return 0;
    }

    return 1;
}
