
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct nd_router_advert {scalar_t__ nd_ra_type; scalar_t__ nd_ra_code; int nd_ra_flags_reserved; int nd_ra_router_lifetime; int nd_ra_curhoplimit; } ;
struct TYPE_5__ {int raw_size; int flags; int preference; int rindex; int mtu; int lifetime; int hop_limit; } ;
typedef TYPE_1__ sd_ndisc_router ;


 int EBADMSG ;
 int IN_SET (int,int ,int ) ;
 int IPV6_MIN_MTU ;
 struct nd_router_advert* NDISC_ROUTER_RAW (TYPE_1__*) ;
 scalar_t__ ND_ROUTER_ADVERT ;






 int SD_NDISC_PREFERENCE_HIGH ;
 int SD_NDISC_PREFERENCE_LOW ;
 int SD_NDISC_PREFERENCE_MEDIUM ;
 int assert (TYPE_1__*) ;
 int be16toh (int ) ;
 int be32toh (int ) ;
 int log_ndisc (char*) ;

int ndisc_router_parse(sd_ndisc_router *rt) {
        struct nd_router_advert *a;
        const uint8_t *p;
        bool has_mtu = 0, has_flag_extension = 0;
        size_t left;

        assert(rt);

        if (rt->raw_size < sizeof(struct nd_router_advert)) {
                log_ndisc("Too small to be a router advertisement, ignoring.");
                return -EBADMSG;
        }


        a = NDISC_ROUTER_RAW(rt);

        if (a->nd_ra_type != ND_ROUTER_ADVERT) {
                log_ndisc("Received ND packet that is not a router advertisement, ignoring.");
                return -EBADMSG;
        }

        if (a->nd_ra_code != 0) {
                log_ndisc("Received ND packet with wrong RA code, ignoring.");
                return -EBADMSG;
        }

        rt->hop_limit = a->nd_ra_curhoplimit;
        rt->flags = a->nd_ra_flags_reserved;
        rt->lifetime = be16toh(a->nd_ra_router_lifetime);

        rt->preference = (rt->flags >> 3) & 3;
        if (!IN_SET(rt->preference, SD_NDISC_PREFERENCE_LOW, SD_NDISC_PREFERENCE_HIGH))
                rt->preference = SD_NDISC_PREFERENCE_MEDIUM;

        p = (const uint8_t*) NDISC_ROUTER_RAW(rt) + sizeof(struct nd_router_advert);
        left = rt->raw_size - sizeof(struct nd_router_advert);

        for (;;) {
                uint8_t type;
                size_t length;

                if (left == 0)
                        break;

                if (left < 2) {
                        log_ndisc("Option lacks header, ignoring datagram.");
                        return -EBADMSG;
                }

                type = p[0];
                length = p[1] * 8;

                if (length == 0) {
                        log_ndisc("Zero-length option, ignoring datagram.");
                        return -EBADMSG;
                }
                if (left < length) {
                        log_ndisc("Option truncated, ignoring datagram.");
                        return -EBADMSG;
                }

                switch (type) {

                case 130:

                        if (length != 4*8) {
                                log_ndisc("Prefix option of invalid size, ignoring datagram.");
                                return -EBADMSG;
                        }

                        if (p[2] > 128) {
                                log_ndisc("Bad prefix length, ignoring datagram.");
                                return -EBADMSG;
                        }

                        break;

                case 131: {
                        uint32_t m;

                        if (has_mtu) {
                                log_ndisc("MTU option specified twice, ignoring.");
                                break;
                        }

                        if (length != 8) {
                                log_ndisc("MTU option of invalid size, ignoring datagram.");
                                return -EBADMSG;
                        }

                        m = be32toh(*(uint32_t*) (p + 4));
                        if (m >= IPV6_MIN_MTU)
                                rt->mtu = m;

                        has_mtu = 1;
                        break;
                }

                case 128:
                        if (length < 1*8 || length > 3*8) {
                                log_ndisc("Route information option of invalid size, ignoring datagram.");
                                return -EBADMSG;
                        }

                        if (p[2] > 128) {
                                log_ndisc("Bad route prefix length, ignoring datagram.");
                                return -EBADMSG;
                        }

                        break;

                case 129:
                        if (length < 3*8 || (length % (2*8)) != 1*8) {
                                log_ndisc("RDNSS option has invalid size.");
                                return -EBADMSG;
                        }

                        break;

                case 132:

                        if (has_flag_extension) {
                                log_ndisc("Flags extension option specified twice, ignoring.");
                                break;
                        }

                        if (length < 1*8) {
                                log_ndisc("Flags extension option has invalid size.");
                                return -EBADMSG;
                        }


                        rt->flags |=
                                ((uint64_t) p[2] << 8) |
                                ((uint64_t) p[3] << 16) |
                                ((uint64_t) p[4] << 24) |
                                ((uint64_t) p[5] << 32) |
                                ((uint64_t) p[6] << 40) |
                                ((uint64_t) p[7] << 48);

                        has_flag_extension = 1;
                        break;

                case 133:
                        if (length < 2*8) {
                                log_ndisc("DNSSL option has invalid size.");
                                return -EBADMSG;
                        }

                        break;
                }

                p += length, left -= length;
        }

        rt->rindex = sizeof(struct nd_router_advert);
        return 0;
}
