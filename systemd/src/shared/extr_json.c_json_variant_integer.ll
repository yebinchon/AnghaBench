; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_integer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { x86_fp80, i32, i64 }

@JSON_VARIANT_MAGIC_ZERO_INTEGER = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_UNSIGNED = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_REAL = common dso_local global %struct.TYPE_9__* null, align 8
@INTMAX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Unsigned integer %ju requested as signed integer and out of range, returning 0.\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Real %Lg requested as integer, and cannot be converted losslessly, returning 0.\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Non-integer JSON variant requested as integer, returning 0.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_variant_integer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %87

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_INTEGER, align 8
  %11 = icmp eq %struct.TYPE_9__* %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_UNSIGNED, align 8
  %15 = icmp eq %struct.TYPE_9__* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_REAL, align 8
  %19 = icmp eq %struct.TYPE_9__* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %8
  store i64 0, i64* %2, align 8
  br label %89

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @json_variant_is_regular(%struct.TYPE_9__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %87

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 16
  %35 = call i64 @json_variant_integer(%struct.TYPE_9__* %34)
  store i64 %35, i64* %2, align 8
  br label %89

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 16
  switch i32 %39, label %85 [
    i32 130, label %40
    i32 128, label %45
    i32 129, label %64
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %2, align 8
  br label %89

45:                                               ; preds = %36
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 16
  %50 = load i32, i32* @INTMAX_MAX, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 16
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %2, align 8
  br label %89

58:                                               ; preds = %45
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 16
  %63 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i64 0, i64* %2, align 8
  br label %89

64:                                               ; preds = %36
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load x86_fp80, x86_fp80* %67, align 16
  %69 = fptosi x86_fp80 %68 to i64
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = sitofp i64 %70 to x86_fp80
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load x86_fp80, x86_fp80* %74, align 16
  %76 = fcmp oeq x86_fp80 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %89

79:                                               ; preds = %64
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load x86_fp80, x86_fp80* %82, align 16
  %84 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %83)
  store i64 0, i64* %2, align 8
  br label %89

85:                                               ; preds = %36
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %25, %7
  %88 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %89

89:                                               ; preds = %87, %79, %77, %58, %52, %40, %31, %20
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_9__*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
