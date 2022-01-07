
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ read_size; scalar_t__ read_buf; int netconn; scalar_t__ read_pos; } ;
typedef TYPE_1__ http_request_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ NETCON_recv (int ,scalar_t__,scalar_t__,int ,int*) ;
 int TRUE ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static DWORD read_more_data( http_request_t *req, int maxlen )
{
    DWORD res;
    int len;

    if (req->read_pos)
    {

        if(req->read_size)
            memmove( req->read_buf, req->read_buf + req->read_pos, req->read_size );
        req->read_pos = 0;
    }

    if (maxlen == -1) maxlen = sizeof(req->read_buf);

    res = NETCON_recv( req->netconn, req->read_buf + req->read_size,
                       maxlen - req->read_size, TRUE, &len );
    if(res == ERROR_SUCCESS)
        req->read_size += len;

    return res;
}
