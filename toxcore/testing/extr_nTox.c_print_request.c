
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ accepted; int id; } ;


 int TOX_PUBLIC_KEY_SIZE ;
 int do_refresh () ;
 int memcpy (int ,int const*,int ) ;
 int new_lines (char*) ;
 int num_requests ;
 TYPE_1__* pending_requests ;
 int sprintf (char*,char*,int) ;

void print_request(Tox *m, const uint8_t *public_key, const uint8_t *data, size_t length, void *userdata)
{
    new_lines("[i] received friend request with message:");
    new_lines((char *)data);
    char numchar[100];
    sprintf(numchar, "[i] accept request with /a %u", num_requests);
    new_lines(numchar);
    memcpy(pending_requests[num_requests].id, public_key, TOX_PUBLIC_KEY_SIZE);
    pending_requests[num_requests].accepted = 0;
    ++num_requests;
    do_refresh();
}
