; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_LoadIconW.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_LoadIconW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_REALSIZEIMAGE = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@LR_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @STATIC_LoadIconW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STATIC_LoadIconW(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = ashr i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SS_REALSIZEIMAGE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IMAGE_ICON, align 4
  %24 = load i32, i32* @LR_SHARED, align 4
  %25 = call i64 @LoadImageW(i64 %21, i32 %22, i32 %23, i32 0, i32 0, i32 %24)
  store i64 %25, i64* %7, align 8
  br label %37

26:                                               ; preds = %15
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @LoadIconW(i64 %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @LoadCursorW(i64 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %10, %3
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @LoadIconW(i64 0, i32 %42)
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local i64 @LoadImageW(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LoadIconW(i64, i32) #1

declare dso_local i64 @LoadCursorW(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
