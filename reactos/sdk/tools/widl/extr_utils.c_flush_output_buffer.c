
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_BINARY ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int error (char*,char const*) ;
 int free (int ) ;
 int open (char const*,int,int) ;
 int output_buffer ;
 scalar_t__ output_buffer_pos ;
 scalar_t__ write (int,int ,scalar_t__) ;

void flush_output_buffer( const char *name )
{
    int fd = open( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666 );
    if (fd == -1) error( "Error creating %s\n", name );
    if (write( fd, output_buffer, output_buffer_pos ) != output_buffer_pos)
        error( "Error writing to %s\n", name );
    close( fd );
    free( output_buffer );
}
