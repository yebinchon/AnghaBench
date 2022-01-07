; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_fill_value.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_fill_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_fill_value(i64* %0, i64 %1, i64 %2, i64 %3, i8 signext %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  store i64 512, i64* %13, align 8
  %21 = load i64, i64* %8, align 8
  %22 = udiv i64 %21, 8
  %23 = udiv i64 %22, 2
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %27, 4095
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i64 0, i64* %16, align 8
  br label %32

32:                                               ; preds = %95, %6
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64* %39, i64** %18, align 8
  %40 = load i64*, i64** %18, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64* %42, i64** %19, align 8
  %43 = load i64, i64* %16, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* %10, align 8
  br label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %9, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %20, align 8
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %91, %50
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = shl i64 %58, 16
  %60 = or i64 %57, %59
  %61 = load i64, i64* %20, align 8
  %62 = shl i64 %61, 32
  %63 = or i64 %60, %62
  %64 = load i64, i64* %20, align 8
  %65 = shl i64 %64, 48
  %66 = or i64 %63, %65
  %67 = load i64*, i64** %19, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64*, i64** %18, align 8
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %18, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 %69
  store i64* %71, i64** %18, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64*, i64** %19, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 %72
  store i64* %74, i64** %19, align 8
  %75 = load i64, i64* %17, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %56
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = mul i64 %83, %84
  %86 = add i64 %82, %85
  %87 = load i64, i64* %14, align 8
  %88 = load i8, i8* %11, align 1
  %89 = call i32 @memtest_progress_step(i64 %86, i64 %87, i8 signext %88)
  br label %90

90:                                               ; preds = %81, %78, %56
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %17, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %17, align 8
  br label %52

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %16, align 8
  br label %32

98:                                               ; preds = %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
