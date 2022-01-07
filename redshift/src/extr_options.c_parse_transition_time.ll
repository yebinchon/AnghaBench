; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_options.c_parse_transition_time.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_options.c_parse_transition_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_transition_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_transition_time(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strtol(i8* %9, i8** %6, i32 10)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* @errno, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 58
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp sge i64 %27, 24
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %17, %13, %2
  store i32 -1, i32* %3, align 4
  br label %57

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = call i64 @strtol(i8* %33, i8** %34, i32 10)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %30
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = icmp sge i64 %47, 60
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %38, %30
  store i32 -1, i32* %3, align 4
  br label %57

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = mul nsw i64 %51, 60
  %53 = load i64, i64* %7, align 8
  %54 = mul nsw i64 %53, 3600
  %55 = add nsw i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %49, %29
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
