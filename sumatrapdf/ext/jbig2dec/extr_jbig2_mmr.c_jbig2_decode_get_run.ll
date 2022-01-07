; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_get_run.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_get_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid code detected in MMR-coded data\00", align 1
@UNCOMPRESSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"uncompressed code in MMR-coded data\00", align 1
@ZEROES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"zeroes code in MMR-coded data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @jbig2_decode_get_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_get_run(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @jbig2_decode_get_code(i32* %13, i32* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @ERROR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %23 = call i32 @jbig2_error(i32* %21, i32 %22, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %12
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @UNCOMPRESSED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %31 = call i32 @jbig2_error(i32* %29, i32 %30, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ZEROES, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %39 = call i32 @jbig2_error(i32* %37, i32 %38, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 64
  br i1 %48, label %12, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %36, %28, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @jbig2_decode_get_code(i32*, i32*, i32) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
