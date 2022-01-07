; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_fill_random.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_fill_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_fill_random(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 512, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %16, 8
  %18 = udiv i64 %17, 2
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = call i64 @UINT64_C(i32 -1694648986)
  store i64 %22, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 4095
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %73, %3
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64* %35, i64** %12, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64* %38, i64** %13, align 8
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %69, %32
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = call i32 (...) @xorshift64star_next()
  %45 = load i64, i64* %15, align 8
  %46 = load i64*, i64** %13, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %12, align 8
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %48
  store i64* %50, i64** %12, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %51
  store i64* %53, i64** %13, align 8
  %54 = load i64, i64* %11, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = mul i64 %62, %63
  %65 = add i64 %61, %64
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memtest_progress_step(i64 %65, i64 %66, i8 signext 82)
  br label %68

68:                                               ; preds = %60, %57, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %39

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %28

76:                                               ; preds = %28
  ret void
}

declare dso_local i64 @UINT64_C(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xorshift64star_next(...) #1

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
