; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_flatmap_push.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_flatmap_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32**)* @flatmap_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flatmap_push(i32* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @strm_ary_ptr(i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @strm_ary_len(i32 %15)
  store i64 %16, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %63, %4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strm_array_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32**, i32*** %9, align 8
  %36 = call i32 @flatmap_push(i32* %29, i32 %33, i32 %34, i32** %35)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @STRM_NG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* @STRM_NG, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %68

43:                                               ; preds = %28
  br label %62

44:                                               ; preds = %21
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32**, i32*** %9, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @strm_funcall(i32* %45, i32 %46, i32 1, i32* %49, i32* %51)
  %53 = load i64, i64* @STRM_NG, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i64, i64* @STRM_NG, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %44
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %59, align 8
  br label %62

62:                                               ; preds = %58, %43
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %17

66:                                               ; preds = %17
  %67 = load i32, i32* @STRM_OK, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %55, %40
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i64 @strm_ary_len(i32) #1

declare dso_local i64 @strm_array_p(i32) #1

declare dso_local i64 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
