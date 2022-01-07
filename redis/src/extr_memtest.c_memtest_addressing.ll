; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_addressing.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_addressing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"\0A*** MEMORY ADDRESSING ERROR: %p contains %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_addressing(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = udiv i64 %11, 8
  store i64 %12, i64* %8, align 8
  %13 = load i64*, i64** %5, align 8
  store i64* %13, i64** %10, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %36, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i64*, i64** %10, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = load i64*, i64** %10, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = mul i64 %32, 2
  %34 = call i32 @memtest_progress_step(i64 %31, i64 %33, i8 signext 65)
  br label %35

35:                                               ; preds = %30, %27, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load i64*, i64** %5, align 8
  store i64* %40, i64** %10, align 8
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %79, %39
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = ptrtoint i64* %48 to i64
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64*, i64** %10, align 8
  %56 = bitcast i64* %55 to i8*
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %56, i64 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %83

62:                                               ; preds = %45
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %8, align 8
  %76 = mul i64 %75, 2
  %77 = call i32 @memtest_progress_step(i64 %74, i64 %76, i8 signext 65)
  br label %78

78:                                               ; preds = %71, %68, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %41

82:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
