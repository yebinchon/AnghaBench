; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_INSERT_execute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_INSERT_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32*, i32*)* }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"sv execute returned %x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, %struct.TYPE_20__*)* @INSERT_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @INSERT_execute(%struct.tagMSIVIEW* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tagMSIVIEW*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %4, align 8
  %13 = bitcast %struct.tagMSIVIEW* %12 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %14, %struct.TYPE_20__* %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %23, i32* %3, align 4
  br label %98

24:                                               ; preds = %2
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = call i32 %29(%struct.TYPE_19__* %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %98

38:                                               ; preds = %24
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_19__*, i32*, i32*)*, i32 (%struct.TYPE_19__*, i32*, i32*)** %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = call i32 %43(%struct.TYPE_19__* %44, i32* null, i32* %9)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %89

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = call %struct.TYPE_20__* @msi_query_merge_record(i32 %50, i32 %53, %struct.TYPE_20__* %54)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %11, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %57 = icmp ne %struct.TYPE_20__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %89

59:                                               ; preds = %49
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = call i32 @msi_arrange_record(%struct.TYPE_21__* %60, %struct.TYPE_20__** %11)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ERROR_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %89

66:                                               ; preds = %59
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %69 = call i64 @row_has_null_primary_keys(%struct.TYPE_21__* %67, %struct.TYPE_20__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32)** %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %79(%struct.TYPE_22__* %82, %struct.TYPE_20__* %83, i32 %84, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %72, %65, %58, %48
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = icmp ne %struct.TYPE_20__* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = call i32 @msiobj_release(i32* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %36, %22
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_20__* @msi_query_merge_record(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @msi_arrange_record(%struct.TYPE_21__*, %struct.TYPE_20__**) #1

declare dso_local i64 @row_has_null_primary_keys(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
