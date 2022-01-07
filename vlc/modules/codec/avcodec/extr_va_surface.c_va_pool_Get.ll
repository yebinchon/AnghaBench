; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va_surface.c_va_pool_Get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_va_surface.c_va_pool_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MAX_GET_RETRIES = common dso_local global i32 0, align 4
@VOUT_OUTMEM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @va_pool_Get(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @MAX_GET_RETRIES, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %27

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %22, %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32* @GetSurface(%struct.TYPE_4__* %14)
  store i32* %15, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @VOUT_OUTMEM_SLEEP, align 4
  %24 = call i32 @vlc_tick_sleep(i32 %23)
  br label %13

25:                                               ; preds = %13
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %25, %21, %11
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

declare dso_local i32* @GetSurface(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
