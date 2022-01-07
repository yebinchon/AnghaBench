; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/extr_mouse32.c_ToMouseCoordinates.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/extr_mouse32.c_ToMouseCoordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DriverState = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ToMouseCoordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ToMouseCoordinates(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = call i64 (...) @VgaGetDisplayResolution()
  %8 = bitcast %struct.TYPE_7__* %4 to i64*
  store i64 %7, i64* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 1), align 4
  %11 = sub nsw i32 %9, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 2), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 3), align 4
  %15 = sub nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = call i32 @VgaGetDoubleVisionState(i32* null, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 1), align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %32, %34
  %36 = add nsw i32 %27, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @DriverState, i32 0, i32 3), align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %44, %46
  %48 = add nsw i32 %39, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @VgaGetDisplayResolution(...) #1

declare dso_local i32 @VgaGetDoubleVisionState(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
