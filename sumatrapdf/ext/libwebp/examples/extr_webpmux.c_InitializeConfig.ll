; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_InitializeConfig.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_InitializeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Exiting due to command-line parsing error.\0A\00", align 1
@Err1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ERROR: Memory allocation error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.TYPE_6__*, i32**)* @InitializeConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitializeConfig(i32 %0, i8** %1, %struct.TYPE_6__* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 24)
  %14 = load i32, i32* %6, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @ExUtilInitCommandLineArguments(i32 %14, i8** %15, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = call i32 @ValidateCommandLine(i32* %24, i32* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @Err1, align 4
  %29 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @calloc(i32 %34, i32 4)
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @Err1, align 4
  %45 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load i32**, i32*** %9, align 8
  %49 = call i32 @ParseCommandLine(%struct.TYPE_6__* %47, i32** %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = call i32 @ValidateConfig(%struct.TYPE_6__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @Err1, align 4
  %57 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ExUtilInitCommandLineArguments(i32, i8**, i32*) #1

declare dso_local i32 @ValidateCommandLine(i32*, i32*) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ParseCommandLine(%struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ValidateConfig(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
