; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_ary_each.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_ary_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"av\00", align 1
@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ary_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_each(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @strm_get_args(i32* %15, i32 %16, i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %10, i64* %11, i32* %12)
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %36, %4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i64 @strm_funcall(i32* %24, i32 %25, i32 1, i32* %28, i32* %14)
  %30 = load i64, i64* @STRM_NG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i64, i64* @STRM_NG, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %46

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %13, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strm_ary_value(i32 %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @STRM_OK, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i64 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
