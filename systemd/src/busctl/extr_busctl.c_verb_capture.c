
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_snaplen ;
 int bus_pcap_header (int ,int ) ;
 int fflush_and_check (int ) ;
 int fileno (int ) ;
 scalar_t__ isatty (int ) ;
 int log_error_errno (int,char*) ;
 int message_pcap ;
 int monitor (int,char**,int ) ;
 int stdout ;

__attribute__((used)) static int verb_capture(int argc, char **argv, void *userdata) {
        int r;

        if (isatty(fileno(stdout)) > 0)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Refusing to write message data to console, please redirect output to a file.");

        bus_pcap_header(arg_snaplen, stdout);

        r = monitor(argc, argv, message_pcap);
        if (r < 0)
                return r;

        r = fflush_and_check(stdout);
        if (r < 0)
                return log_error_errno(r, "Couldn't write capture file: %m");

        return r;
}
