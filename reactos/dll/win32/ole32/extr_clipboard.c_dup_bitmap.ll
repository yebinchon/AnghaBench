; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_dup_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_dup_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SRCCOPY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @dup_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dup_bitmap(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @SelectObject(i32 %12, i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @GetObjectW(i64 %15, i32 8, %struct.TYPE_3__* %7)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CreateCompatibleBitmap(i32 %17, i32 %19, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @SelectObject(i32 %27, i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SRCCOPY, align 4
  %37 = call i32 @BitBlt(i32 %30, i32 0, i32 0, i32 %32, i32 %34, i32 %35, i32 0, i32 0, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @SelectObject(i32 %38, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DeleteDC(i32 %41)
  br label %43

43:                                               ; preds = %25, %2
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @SelectObject(i32 %44, i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @DeleteDC(i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %4, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @S_OK, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @E_FAIL, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  ret i32 %58
}

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
