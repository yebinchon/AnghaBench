
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read_so_far; } ;
struct TYPE_6__ {TYPE_1__ conn; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;
typedef int off_t ;



__attribute__((used)) static off_t rioConnTell(rio *r) {
    return r->io.conn.read_so_far;
}
