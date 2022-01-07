
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int data; } ;


 int O_BINARY ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int assert (int) ;
 int close (int) ;
 int error (char*,char const*) ;
 int free (int ) ;
 unsigned int nb_resources ;
 int open (char const*,int,int) ;
 int output_buffer ;
 scalar_t__ output_buffer_pos ;
 int put_dword (int) ;
 int put_word (int) ;
 TYPE_1__* resources ;
 scalar_t__ write (int,int ,scalar_t__) ;

void flush_output_resources( const char *name )
{
    int fd;
    unsigned int i;


    assert( !output_buffer_pos );

    put_dword( 0 );
    put_dword( 32 );
    put_word( 0xffff );
    put_word( 0x0000 );
    put_word( 0xffff );
    put_word( 0x0000 );
    put_dword( 0 );
    put_word( 0 );
    put_word( 0 );
    put_dword( 0 );
    put_dword( 0 );

    fd = open( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666 );
    if (fd == -1) error( "Error creating %s\n", name );
    if (write( fd, output_buffer, output_buffer_pos ) != output_buffer_pos)
        error( "Error writing to %s\n", name );
    for (i = 0; i < nb_resources; i++)
    {
        if (write( fd, resources[i].data, resources[i].size ) != resources[i].size)
            error( "Error writing to %s\n", name );
        free( resources[i].data );
    }
    close( fd );
    nb_resources = 0;
    free( output_buffer );
}
