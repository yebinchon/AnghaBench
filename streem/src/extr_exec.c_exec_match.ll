; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_exec_match.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_exec_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_lambda = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@NODE_LAMBDA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"not a case function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_match(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strm_lambda*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @strm_raise(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @STRM_NG, align 4
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @strm_lambda_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.strm_lambda* @strm_value_lambda(i32 %29)
  store %struct.strm_lambda* %30, %struct.strm_lambda** %11, align 8
  %31 = load %struct.strm_lambda*, %struct.strm_lambda** %11, align 8
  %32 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NODE_LAMBDA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @strm_raise(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @STRM_NG, align 4
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @strm_funcall(i32* %44, i32 %45, i32 %47, i32* %48, i32* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %38, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i64 @strm_lambda_p(i32) #1

declare dso_local %struct.strm_lambda* @strm_value_lambda(i32) #1

declare dso_local i32 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
