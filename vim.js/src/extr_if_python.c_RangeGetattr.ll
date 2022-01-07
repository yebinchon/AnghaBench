; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python.c_RangeGetattr.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python.c_RangeGetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@Py_ssize_t_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@RangeAttrs = common dso_local global i32 0, align 4
@RangeMethods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @RangeGetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RangeGetattr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* @Py_ssize_t_fmt, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32* @Py_BuildValue(i32 %10, i64 %15)
  store i32* %16, i32** %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @Py_ssize_t_fmt, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32* @Py_BuildValue(i32 %22, i64 %27)
  store i32* %28, i32** %3, align 8
  br label %41

29:                                               ; preds = %17
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @RangeAttrs, align 4
  %35 = call i32* @ObjectDir(i32* null, i32 %34)
  store i32* %35, i32** %3, align 8
  br label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @RangeMethods, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @Py_FindMethod(i32 %37, i32* %38, i8* %39)
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %36, %33, %21, %9
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @Py_BuildValue(i32, i64) #1

declare dso_local i32* @ObjectDir(i32*, i32) #1

declare dso_local i32* @Py_FindMethod(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
