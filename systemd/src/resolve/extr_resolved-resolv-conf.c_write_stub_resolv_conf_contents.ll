; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-resolv-conf.c_write_stub_resolv_conf_contents.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-resolv-conf.c_write_stub_resolv_conf_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [709 x i8] c"# This file is managed by man:systemd-resolved(8). Do not edit.\0A#\0A# This is a dynamic resolv.conf file for connecting local clients to the\0A# internal DNS stub resolver of systemd-resolved. This file lists all\0A# configured search domains.\0A#\0A# Run \22resolvectl status\22 to see details about the uplink DNS servers\0A# currently in use.\0A#\0A# Third party programs must not access this file directly, but only through the\0A# symlink at /etc/resolv.conf. To manage man:resolv.conf(5) in a different way,\0A# replace this symlink by a static file or a different symlink.\0A#\0A# See man:systemd-resolved.service(8) for details about the supported modes of\0A# operation for /etc/resolv.conf.\0A\0Anameserver 127.0.0.53\0Aoptions edns0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @write_stub_resolv_conf_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_stub_resolv_conf_contents(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([709 x i8], [709 x i8]* @.str, i64 0, i64 0), i32* %7)
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @ordered_set_isempty(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @write_resolv_conf_search(i32* %13, i32* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fflush_and_check(i32* %17)
  ret i32 %18
}

declare dso_local i32 @fputs_unlocked(i8*, i32*) #1

declare dso_local i32 @ordered_set_isempty(i32*) #1

declare dso_local i32 @write_resolv_conf_search(i32*, i32*) #1

declare dso_local i32 @fflush_and_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
