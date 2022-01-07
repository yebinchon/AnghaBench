; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_ary_sort.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_ary_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_arg = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"a|v\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ary_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_sort(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sort_arg, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @strm_get_args(i32* %14, i32 %15, i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %10, i32* %11, i32* %12)
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @strm_ary_new(i32* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @strm_ary_ptr(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @mem_sort(i32* %26, i32 %27, %struct.sort_arg* null)
  br label %37

29:                                               ; preds = %4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds %struct.sort_arg, %struct.sort_arg* %13, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.sort_arg, %struct.sort_arg* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mem_sort(i32* %34, i32 %35, %struct.sort_arg* %13)
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @strm_ary_value(i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @STRM_OK, align 4
  ret i32 %41
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*, i32*) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @mem_sort(i32*, i32, %struct.sort_arg*) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
