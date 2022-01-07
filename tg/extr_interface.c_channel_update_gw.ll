; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_channel_update_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_channel_update_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.tgl_channel = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global i32 0, align 4
@binlog_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_update_gw(%struct.tgl_state* %0, %struct.tgl_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca %struct.tgl_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store %struct.tgl_channel* %1, %struct.tgl_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %8 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %9 = icmp eq %struct.tgl_state* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.tgl_channel*, %struct.tgl_channel** %5, align 8
  %13 = bitcast %struct.tgl_channel* %12 to i8*
  %14 = load %struct.tgl_channel*, %struct.tgl_channel** %5, align 8
  %15 = getelementptr inbounds %struct.tgl_channel, %struct.tgl_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @peer_update_username(i8* %13, i32 %16)
  %18 = load i64, i64* @disable_output, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @notify_ev, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %28

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @binlog_read, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %23, %27, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @peer_update_username(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
