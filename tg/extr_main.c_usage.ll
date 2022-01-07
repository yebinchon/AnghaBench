; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s Usage\0A\00", align 1
@PROGNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"  --phone/-u                           specify username (would not be asked during authorization)\0A\00", align 1
@.str.2 = private unnamed_addr constant [99 x i8] c"  --rsa-key/-k                         specify location of public key (possible multiple entries)\0A\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"  --verbosity/-v                       increase verbosity (0-ERROR 1-WARNIN 2-NOTICE 3+-DEBUG-levels)\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"  --enable-msg-id/-N                   message num mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"  --log-level/-l                       log level\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"  --sync-from-start/-f                 during authorization fetch all messages since registration\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"  --disable-auto-accept/-E             disable auto accept of encrypted chats\0A\00", align 1
@.str.8 = private unnamed_addr constant [104 x i8] c"  --wait-dialog-list/-W                send dialog_list query and wait for answer before reading input\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"  --disable-colors/-C                  disable color output\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"  --disable-readline/-R                disable readline\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"  --alert/-A                           enable bell notifications\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"  --daemonize/-d                       daemon mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"  --logname/-L <log-name>              log file name\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"  --username/-U <user-name>            change uid after start\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"  --groupname/-G <group-name>          change gid after start\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"  --disable-output/-D                  disable output\0A\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"  --tcp-port/-P <port>                 port to listen for input commands\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"  --udp-socket/-S <socket-name>        unix socket to create\0A\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"  --exec/-e <commands>                 make commands end exit\0A\00", align 1
@.str.20 = private unnamed_addr constant [90 x i8] c"  --disable-names/-I                   use user and chat IDs in updates instead of names\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"  --enable-ipv6/-6                     use ipv6 (may be unstable)\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"  --help/-h                            prints this help\0A\00", align 1
@.str.23 = private unnamed_addr constant [104 x i8] c"  --accept-any-tcp                     accepts tcp connections from any src (only loopback by default)\0A\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"  --disable-link-preview               disables server-side previews to links\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"  --bot/-b                             bot mode\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"  --permanent-msg-ids                  use permanent msg ids\0A\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"  --permanent-peer-ids                 use permanent peer ids\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @PROGNAME, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.8, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.20, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.21, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.23, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
