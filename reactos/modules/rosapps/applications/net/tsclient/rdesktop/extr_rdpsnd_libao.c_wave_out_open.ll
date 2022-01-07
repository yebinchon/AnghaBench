; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@default_driver = common dso_local global i32 0, align 4
@This = common dso_local global %struct.TYPE_5__* null, align 8
@g_samplerate = common dso_local global i32 0, align 4
@AO_FMT_LITTLE = common dso_local global i32 0, align 4
@o_device = common dso_local global i32* null, align 8
@False = common dso_local global i32 0, align 4
@queue_hi = common dso_local global i64 0, align 8
@queue_lo = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@g_reopened = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wave_out_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = call i32 (...) @ao_initialize()
  %4 = call i32 (...) @ao_default_driver_id()
  store i32 %4, i32* @default_driver, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 16, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @This, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 44100, i32* %9, align 4
  store i32 44100, i32* @g_samplerate, align 4
  %10 = load i32, i32* @AO_FMT_LITTLE, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @default_driver, align 4
  %13 = call i32* @ao_open_live(i32 %12, %struct.TYPE_4__* %2, i32* null)
  store i32* %13, i32** @o_device, align 8
  %14 = load i32*, i32** @o_device, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @False, align 4
  store i32 %17, i32* %1, align 4
  br label %23

18:                                               ; preds = %0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @This, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  store i64 0, i64* @queue_hi, align 8
  store i64 0, i64* @queue_lo, align 8
  %21 = load i32, i32* @True, align 4
  store i32 %21, i32* @g_reopened, align 4
  %22 = load i32, i32* @True, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @ao_initialize(...) #1

declare dso_local i32 @ao_default_driver_id(...) #1

declare dso_local i32* @ao_open_live(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
