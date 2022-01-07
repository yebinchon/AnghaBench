; ModuleID = '/home/carl/AnghaBench/toxcore/other/extr_bootstrap_node_packets.c_bootstrap_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/extr_bootstrap_node_packets.c_bootstrap_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MOTD_LENGTH = common dso_local global i64 0, align 8
@bootstrap_version = common dso_local global i32 0, align 4
@bootstrap_motd = common dso_local global i32 0, align 4
@bootstrap_motd_length = common dso_local global i64 0, align 8
@BOOTSTRAP_INFO_PACKET_ID = common dso_local global i32 0, align 4
@handle_info_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootstrap_set_callbacks(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_MOTD_LENGTH, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @htonl(i32 %15)
  store i32 %16, i32* @bootstrap_version, align 4
  %17 = load i32, i32* @bootstrap_motd, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @memcpy(i32 %17, i32* %18, i64 %19)
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* @bootstrap_motd_length, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @BOOTSTRAP_INFO_PACKET_ID, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @networking_registerhandler(i32* %22, i32 %23, i32* @handle_info_request, i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @networking_registerhandler(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
