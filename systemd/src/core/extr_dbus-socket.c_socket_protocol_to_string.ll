; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-socket.c_socket_protocol_to_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-socket.c_socket_protocol_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @socket_protocol_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @socket_protocol_to_string(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @IPPROTO_IP, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %11 = load i32, i32* @IPPROTO_SCTP, align 4
  %12 = call i32 @IN_SET(i64 %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %18

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = call i8* @ip_protocol_to_name(i64 %16)
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %15, %14, %7
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @IN_SET(i64, i32, i32) #1

declare dso_local i8* @ip_protocol_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
