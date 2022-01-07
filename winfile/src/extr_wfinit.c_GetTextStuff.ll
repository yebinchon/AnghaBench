; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetTextStuff.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetTextStuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"W\00", align 1
@dxText = common dso_local global i32 0, align 4
@dyText = common dso_local global i64 0, align 8
@dxDriveBitmap = common dso_local global i64 0, align 8
@dyBorderx2 = common dso_local global i32 0, align 4
@dxDrive = common dso_local global i64 0, align 8
@dyDriveBitmap = common dso_local global i64 0, align 8
@dyDrive = common dso_local global i8* null, align 8
@dyFolder = common dso_local global i64 0, align 8
@dyFileName = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetTextStuff(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TEXT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @GetTextExtentPoint32(i32 %6, i32 %7, i32 1, %struct.TYPE_6__* %4)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* @dxText, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* @dyText, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GetTextMetrics(i32 %13, %struct.TYPE_5__* %5)
  %15 = load i64, i64* @dxDriveBitmap, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @dyBorderx2, align 4
  %20 = mul nsw i32 4, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* @dxDrive, align 8
  %23 = load i64, i64* @dyDriveBitmap, align 8
  %24 = load i32, i32* @dyBorderx2, align 4
  %25 = mul nsw i32 4, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @dyText, align 8
  %29 = call i8* @max(i64 %27, i64 %28)
  store i8* %29, i8** @dyDrive, align 8
  %30 = load i64, i64* @dyText, align 8
  %31 = load i64, i64* @dyFolder, align 8
  %32 = call i8* @max(i64 %30, i64 %31)
  store i8* %32, i8** @dyFileName, align 8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @GetTextExtentPoint32(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @GetTextMetrics(i32, %struct.TYPE_5__*) #1

declare dso_local i8* @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
