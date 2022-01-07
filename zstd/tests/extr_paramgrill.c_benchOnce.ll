; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_benchOnce.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_benchOnce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@g_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error during benchmarking\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CUSTOM_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @benchOnce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @benchOnce(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_8__* %5 to i64*
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ZSTD_getCParams(i32 %11, i32 %13, i32 %15)
  %17 = call i32 @cParamsToPVals(i32 %16)
  %18 = load i32, i32* @g_params, align 4
  %19 = call i32 @overwriteParams(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @adjustParams(i32 %19, i32 %21, i32 %23)
  store i32 %24, i32* @g_params, align 4
  %25 = load i32, i32* @g_params, align 4
  %26 = bitcast %struct.TYPE_8__* %5 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @BMK_benchParam(i32* %8, i64 %27, i32 %29, i32 %25)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %42

34:                                               ; preds = %3
  %35 = load i32, i32* @stdout, align 4
  %36 = load i32, i32* @CUSTOM_LEVEL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @g_params, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BMK_printWinner(i32 %35, i32 %36, i32 %37, i32 %38, i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @adjustParams(i32, i32, i32) #1

declare dso_local i32 @overwriteParams(i32, i32) #1

declare dso_local i32 @cParamsToPVals(i32) #1

declare dso_local i32 @ZSTD_getCParams(i32, i32, i32) #1

declare dso_local i64 @BMK_benchParam(i32*, i64, i32, i32) #1

declare dso_local i32 @DISPLAY(i8*) #1

declare dso_local i32 @BMK_printWinner(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
