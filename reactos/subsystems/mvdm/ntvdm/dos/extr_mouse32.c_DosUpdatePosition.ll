; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/extr_mouse32.c_DosUpdatePosition.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/extr_mouse32.c_DosUpdatePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DriverState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DosUpdatePosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DosUpdatePosition(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i64 (...) @VgaGetDisplayResolution()
  %6 = bitcast %struct.TYPE_4__* %4 to i64*
  store i64 %5, i64* %6, align 4
  %7 = call i32 @VgaGetDoubleVisionState(i32* null, i32* null)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 8
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DriverState, i32 0, i32 0), align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @EraseMouseCursor()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DriverState, i32 0, i32 1), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DriverState, i32 0, i32 0), align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @PaintMouseCursor()
  br label %28

28:                                               ; preds = %26, %21
  %29 = call i32 @CallMouseUserHandlers(i32 1)
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @VgaGetDisplayResolution(...) #1

declare dso_local i32 @VgaGetDoubleVisionState(i32*, i32*) #1

declare dso_local i32 @EraseMouseCursor(...) #1

declare dso_local i32 @PaintMouseCursor(...) #1

declare dso_local i32 @CallMouseUserHandlers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
