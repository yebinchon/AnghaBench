; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_int.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64, i32, i32, i32, i32)* @strftime_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strftime_int(i8* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %7
  %25 = load i8*, i8** %9, align 8
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32* (...) @_errno()
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %8, align 4
  br label %54

29:                                               ; preds = %20
  %30 = load i8*, i8** %9, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %34, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @_snprintf(i8* %33, i64 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load i8*, i8** %9, align 8
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @ERANGE, align 4
  %46 = call i32* (...) @_errno()
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %8, align 4
  br label %54

48:                                               ; preds = %29
  %49 = load i64, i64* %16, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %43, %24
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32* @_errno(...) #1

declare dso_local i64 @_snprintf(i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
