; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_rlimit_parse_nice.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_rlimit_parse_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIO_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @rlimit_parse_nice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rlimit_parse_nice(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i32 @safe_atou64(i8* %15, i64* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PRIO_MAX, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 20, %29
  store i64 %30, i64* %6, align 8
  br label %75

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @safe_atou64(i8* %39, i64* %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %78

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @PRIO_MIN, align 4
  %48 = sub nsw i32 0, %47
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %78

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 20, %55
  store i64 %56, i64* %6, align 8
  br label %74

57:                                               ; preds = %31
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @safe_atou64(i8* %58, i64* %6)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %78

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @PRIO_MIN, align 4
  %67 = sub nsw i32 20, %66
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ERANGE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %78

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %28
  %76 = load i64, i64* %6, align 8
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %70, %62, %51, %43, %25, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @safe_atou64(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
