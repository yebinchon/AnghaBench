; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_ExtSelectClipRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_ExtSelectClipRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_COPY = common dso_local global i64 0, align 8
@ERROR = common dso_local global i64 0, align 8
@NULLREGION = common dso_local global i64 0, align 8
@META_SELECTOBJECT = common dso_local global i32 0, align 4
@META_DELETEOBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MFDRV_ExtSelectClipRgn(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @RGN_COPY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @ERROR, align 8
  store i64 %14, i64* %4, align 8
  br label %48

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @NULLREGION, align 8
  store i64 %19, i64* %4, align 8
  br label %48

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MFDRV_CreateRegion(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @ERROR, align 8
  store i64 %27, i64* %4, align 8
  br label %48

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @META_SELECTOBJECT, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @MFDRV_MetaParam1(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NULLREGION, align 8
  br label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @ERROR, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @META_DELETEOBJECT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @MFDRV_MetaParam1(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MFDRV_RemoveHandle(i32 %44, i32 %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %38, %26, %18, %13
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32 @MFDRV_CreateRegion(i32, i32) #1

declare dso_local i64 @MFDRV_MetaParam1(i32, i32, i32) #1

declare dso_local i32 @MFDRV_RemoveHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
