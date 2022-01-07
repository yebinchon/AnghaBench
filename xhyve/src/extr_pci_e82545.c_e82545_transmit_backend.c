
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
struct e82545_softc {int vms; } ;


 int vmn_write (int ,struct iovec*,int) ;

__attribute__((used)) static void
e82545_transmit_backend(struct e82545_softc *sc, struct iovec *iov, int iovcnt)
{
    if (!sc->vms)
        return;

    vmn_write(sc->vms, iov, iovcnt);
}
