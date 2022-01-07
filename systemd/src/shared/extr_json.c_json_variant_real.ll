; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_real.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { x86_fp80, i64, i64 }

@JSON_VARIANT_MAGIC_ZERO_INTEGER = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_UNSIGNED = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_ZERO_REAL = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [87 x i8] c"Signed integer %ji requested as real, and cannot be converted losslessly, returning 0.\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Unsigned integer %ju requested as real, and cannot be converted losslessly, returning 0.\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Non-integer JSON variant requested as integer, returning 0.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @json_variant_real(%struct.TYPE_9__* %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %92

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_INTEGER, align 8
  %12 = icmp eq %struct.TYPE_9__* %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_UNSIGNED, align 8
  %16 = icmp eq %struct.TYPE_9__* %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_ZERO_REAL, align 8
  %20 = icmp eq %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %9
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %92

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @json_variant_is_regular(%struct.TYPE_9__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %90

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 16
  %36 = call x86_fp80 @json_variant_real(%struct.TYPE_9__* %35)
  store x86_fp80 %36, x86_fp80* %2, align 16
  br label %92

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  switch i32 %40, label %88 [
    i32 129, label %41
    i32 130, label %46
    i32 128, label %67
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load x86_fp80, x86_fp80* %44, align 16
  store x86_fp80 %45, x86_fp80* %2, align 16
  br label %92

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to x86_fp80
  store x86_fp80 %51, x86_fp80* %4, align 16
  %52 = load x86_fp80, x86_fp80* %4, align 16
  %53 = fptosi x86_fp80 %52 to i64
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %60, x86_fp80* %2, align 16
  br label %92

61:                                               ; preds = %46
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %65)
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %92

67:                                               ; preds = %37
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 16
  %72 = sitofp i64 %71 to x86_fp80
  store x86_fp80 %72, x86_fp80* %5, align 16
  %73 = load x86_fp80, x86_fp80* %5, align 16
  %74 = fptosi x86_fp80 %73 to i64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 16
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %81, x86_fp80* %2, align 16
  br label %92

82:                                               ; preds = %67
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 16
  %87 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %92

88:                                               ; preds = %37
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %26
  %91 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %92

92:                                               ; preds = %90, %82, %80, %61, %59, %41, %32, %21, %8
  %93 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %93
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_9__*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
