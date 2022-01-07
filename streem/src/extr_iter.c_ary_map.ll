; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_ary_map.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_ary_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"av\00", align 1
@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ary_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_map(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @strm_get_args(i32* %16, i32 %17, i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %10, i64* %11, i32* %12)
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @strm_ary_new(i32* null, i64 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32* @strm_ary_ptr(i32 %22)
  store i32* %23, i32** %15, align 8
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %44, %4
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32*, i32** %15, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i64 @strm_funcall(i32* %29, i32 %30, i32 1, i32* %33, i32* %36)
  %38 = load i64, i64* @STRM_NG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* @STRM_NG, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %13, align 8
  br label %24

47:                                               ; preds = %24
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @strm_ary_value(i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @STRM_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @strm_ary_new(i32*, i64) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i64 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
