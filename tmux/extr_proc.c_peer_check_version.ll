; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_peer_check_version.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_peer_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxpeer = type { i32 }
%struct.imsg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@MSG_VERSION = common dso_local global i64 0, align 8
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"peer %p bad version %d\00", align 1
@PEER_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmuxpeer*, %struct.imsg*)* @peer_check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peer_check_version(%struct.tmuxpeer* %0, %struct.imsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmuxpeer*, align 8
  %5 = alloca %struct.imsg*, align 8
  %6 = alloca i32, align 4
  store %struct.tmuxpeer* %0, %struct.tmuxpeer** %4, align 8
  store %struct.imsg* %1, %struct.imsg** %5, align 8
  %7 = load %struct.imsg*, %struct.imsg** %5, align 8
  %8 = getelementptr inbounds %struct.imsg, %struct.imsg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %6, align 4
  %12 = load %struct.imsg*, %struct.imsg** %5, align 8
  %13 = getelementptr inbounds %struct.imsg, %struct.imsg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MSG_VERSION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PROTOCOL_VERSION, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.tmuxpeer*, %struct.tmuxpeer** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.tmuxpeer* %23, i32 %24)
  %26 = load %struct.tmuxpeer*, %struct.tmuxpeer** %4, align 8
  %27 = load i64, i64* @MSG_VERSION, align 8
  %28 = call i32 @proc_send(%struct.tmuxpeer* %26, i64 %27, i32 -1, i32* null, i32 0)
  %29 = load i32, i32* @PEER_BAD, align 4
  %30 = load %struct.tmuxpeer*, %struct.tmuxpeer** %4, align 8
  %31 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 -1, i32* %3, align 4
  br label %35

34:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @log_debug(i8*, %struct.tmuxpeer*, i32) #1

declare dso_local i32 @proc_send(%struct.tmuxpeer*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
