
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BasicTest (int *,int *,int) ;
 int DataCreate () ;
 int DataSharedMem (int *,int *,int,int,int,char*,int) ;
 int DeleteImage (int *,int *,int) ;
 scalar_t__ EEXIST ;
 int GenImage (int *,int *) ;
 int HEIGHT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int S_IRWXU ;
 int TEXTSIZE ;
 int TextTest (int *,int *,int) ;
 int WIDTH ;
 scalar_t__ errno ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 scalar_t__ mkfifo (char*,int ) ;
 void* p_imageRGBA ;
 void* p_text ;
 int printf (char*,...) ;
 void* shmat (int,int *,int ) ;
 int shmctl (int,int ,int ) ;
 int shmget (int ,int,int ) ;

int main( int i_argc, char *ppsz_argv[] ) {
    if( i_argc != 3 ) {
        printf( "Incorrect number of parameters.\n"
                "Usage is: %s command-fifo response-fifo\n", ppsz_argv[0] );
        exit( -2 );
    }

    printf( "Creating shared memory for RGBA..." );
    int i_shmRGBA = shmget( IPC_PRIVATE, WIDTH * HEIGHT * 4, S_IRWXU );
    if( i_shmRGBA == -1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done, ID is %d. Text...", i_shmRGBA );
    int i_shmText = shmget( IPC_PRIVATE, TEXTSIZE, S_IRWXU );
    if( i_shmText == -1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done, ID is %d\n", i_shmText );

    printf( "Attaching shared memory for RGBA..." );
    p_imageRGBA = shmat( i_shmRGBA, ((void*)0), 0 );
    if( p_imageRGBA == (void*)-1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done. Text..." );
    p_text = shmat( i_shmText, ((void*)0), 0 );
    if( p_text == (void*)-1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done\n" );

    printf( "Queueing shared memory for destruction, RGBA..." );
    if( shmctl( i_shmRGBA, IPC_RMID, 0 ) == -1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done. Text..." );
    if( shmctl( i_shmText, IPC_RMID, 0 ) == -1 ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done\n" );

    printf( "Generating data..." );
    DataCreate();
    printf( " done\n" );

    printf( "Making FIFOs..." );
    if( mkfifo( ppsz_argv[1], S_IRWXU ) ) {
        if( errno != EEXIST ) {
            printf( " failed\n" );
            exit( -1 );
        }
        printf( " input already exists..." );
    }
    if( mkfifo( ppsz_argv[2], S_IRWXU ) ) {
        if( errno != EEXIST ) {
            printf( " failed\n" );
            exit( -1 );
        }
        printf( " output already exists..." );
    }
    printf( " done\n" );

    printf( "Please make sure vlc is running.\n"
            "You should append parameters similar to the following:\n"
            "--sub-source overlay{input=%s,output=%s}\n",
            ppsz_argv[1], ppsz_argv[2] );

    printf( "Opening FIFOs..." );
    FILE *p_cmd = fopen( ppsz_argv[1], "w" );
    if( p_cmd == ((void*)0) ) {
        printf( " failed\n" );
        exit( -1 );
    }
    FILE *p_res = fopen( ppsz_argv[2], "r" );
    if( p_res == ((void*)0) ) {
        printf( " failed\n" );
        exit( -1 );
    }
    printf( " done\n" );

    int i_overlay_image = GenImage( p_cmd, p_res );
    int i_overlay_text = GenImage( p_cmd, p_res );
    DataSharedMem( p_cmd, p_res, i_overlay_image, WIDTH, HEIGHT, "RGBA",
                   i_shmRGBA );
    DataSharedMem( p_cmd, p_res, i_overlay_text, TEXTSIZE, 1, "TEXT",
                   i_shmText );

    BasicTest( p_cmd, p_res, i_overlay_image );
    BasicTest( p_cmd, p_res, i_overlay_text );
    TextTest( p_cmd, p_res, i_overlay_text );

    DeleteImage( p_cmd, p_res, i_overlay_image );
    DeleteImage( p_cmd, p_res, i_overlay_text );
}
