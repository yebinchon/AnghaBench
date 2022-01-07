
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Assoc ;


 int id_closest (int const*,int const*,int const*) ;

__attribute__((used)) static int assoc_id_closest(const Assoc *assoc, void *callback_data, const uint8_t *client_id,
                            const uint8_t *client_id1, const uint8_t *client_id2)
{
    return id_closest(client_id, client_id1, client_id2);
}
