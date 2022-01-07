; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_unsigned.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { x86_fp80, i64, i32 }

@JSON_VARIANT_MAGIC_ZERO_INTEGER = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_UNSIGNED = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_REAL = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"Signed integer %ju requested as unsigned integer and out of range, returning 0.\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Real %Lg requested as unsigned integer, and cannot be converted losslessly, returning 0.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Non-integer JSON variant requested as unsigned, returning 0.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_variant_unsigned(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %86

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
  br label %88

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @json_variant_is_regular(%struct.TYPE_9__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %86

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 16
  %35 = call i64 @json_variant_integer(i32 %34)
  store i64 %35, i64* %2, align 8
  br label %88

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 16
  switch i32 %39, label %84 [
    i32 130, label %40
    i32 128, label %58
    i32 129, label %63
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %2, align 8
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i64 0, i64* %2, align 8
  br label %88

58:                                               ; preds = %36
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 16
  store i64 %62, i64* %2, align 8
  br label %88

63:                                               ; preds = %36
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load x86_fp80, x86_fp80* %66, align 16
  %68 = fptosi x86_fp80 %67 to i64
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = sitofp i64 %69 to x86_fp80
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load x86_fp80, x86_fp80* %73, align 16
  %75 = fcmp oeq x86_fp80 %70, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load x86_fp80, x86_fp80* %81, align 16
  %83 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %82)
  store i64 0, i64* %2, align 8
  br label %88

84:                                               ; preds = %36
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %25, %7
  %87 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %88

88:                                               ; preds = %86, %78, %76, %58, %52, %46, %31, %20
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_9__*) #1

declare dso_local i64 @json_variant_integer(i32) #1

declare dso_local i32 @log_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
