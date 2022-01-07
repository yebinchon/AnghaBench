; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sun.c_wave_out_close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sun.c_wave_out_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@queue_lo = common dso_local global i64 0, align 8
@queue_hi = common dso_local global i64 0, align 8
@packet_queue = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_QUEUE = common dso_local global i64 0, align 8
@This = common dso_local global %struct.TYPE_6__* null, align 8
@AUDIO_FLUSH = common dso_local global i32 0, align 4
@FLUSHW = common dso_local global i32* null, align 8
@I_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wave_out_close() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i64, i64* @queue_lo, align 8
  %3 = load i64, i64* @queue_hi, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @packet_queue, align 8
  %7 = load i64, i64* @queue_lo, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @packet_queue, align 8
  %12 = load i64, i64* @queue_lo, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rdpsnd_send_completion(i32 %10, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @packet_queue, align 8
  %18 = load i64, i64* @queue_lo, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @free(i32 %22)
  %24 = load i64, i64* @queue_lo, align 8
  %25 = add i64 %24, 1
  %26 = load i64, i64* @MAX_QUEUE, align 8
  %27 = urem i64 %25, %26
  store i64 %27, i64* @queue_lo, align 8
  br label %1

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @This, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  ret void
}

declare dso_local i32 @rdpsnd_send_completion(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
