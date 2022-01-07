; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_match_is_valid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_match_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @match_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_is_valid(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @startswith(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %70

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %66, %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = icmp ult i8* %22, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 61
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ugt i8* %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 95
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %66

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 65
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %66

54:                                               ; preds = %48, %43
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59, %54
  store i32 0, i32* %3, align 4
  br label %70

66:                                               ; preds = %64, %53, %42
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %21

69:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %32, %17, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
