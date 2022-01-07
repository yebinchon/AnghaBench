
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_EXTENSION_WRAPPER (int ) ;
 int MASTER_EXTENSIONS ;
 int SLAVE_AUDIO_EXTENSIONS ;
 int SLAVE_SPU_EXTENSIONS ;

int main(void)
{
    CHECK_EXTENSION_WRAPPER( MASTER_EXTENSIONS );
    CHECK_EXTENSION_WRAPPER( SLAVE_SPU_EXTENSIONS );
    CHECK_EXTENSION_WRAPPER( SLAVE_AUDIO_EXTENSIONS );
    return 0;
}
