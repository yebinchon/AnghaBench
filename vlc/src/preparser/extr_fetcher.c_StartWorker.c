
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetcher_thread {void (* pf_worker ) (int *,struct fetcher_request*) ;int interrupt; int thread; int active; int * fetcher; struct background_worker* worker; struct fetcher_request* req; } ;
struct fetcher_request {int dummy; } ;
struct background_worker {int dummy; } ;
typedef int input_fetcher_t ;


 int FetcherThread ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int atomic_init (int *,int) ;
 int free (struct fetcher_thread*) ;
 struct fetcher_thread* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_clone (int *,int ,struct fetcher_thread*,int ) ;
 int vlc_interrupt_deinit (int *) ;
 int vlc_interrupt_init (int *) ;

__attribute__((used)) static int StartWorker( input_fetcher_t* fetcher,
    void( *pf_worker )( input_fetcher_t*, struct fetcher_request* ),
    struct background_worker* bg, struct fetcher_request* req, void** handle )
{
    struct fetcher_thread* th = malloc( sizeof *th );

    if( unlikely( !th ) )
        return VLC_ENOMEM;

    th->req = req;
    th->worker = bg;
    th->fetcher = fetcher;
    th->pf_worker = pf_worker;

    vlc_interrupt_init( &th->interrupt );
    atomic_init( &th->active, 1 );

    if( !vlc_clone( &th->thread, FetcherThread, th, VLC_THREAD_PRIORITY_LOW ) )
    {
        *handle = th;
        return VLC_SUCCESS;
    }

    vlc_interrupt_deinit( &th->interrupt );
    free( th );
    return VLC_EGENERIC;
}
