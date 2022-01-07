; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_INSERT_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_INSERT_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, i32*, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@insert_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @INSERT_CreateView(%struct.TYPE_20__* %0, %struct.TYPE_18__** %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %18)
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @count_column_info(i32* %20)
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @count_column_info(i32* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  store i64 %26, i64* %7, align 8
  br label %89

27:                                               ; preds = %6
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @TABLE_CreateView(%struct.TYPE_20__* %28, i32 %29, %struct.TYPE_18__** %16)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %7, align 8
  br label %89

36:                                               ; preds = %27
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @SELECT_CreateView(%struct.TYPE_20__* %37, %struct.TYPE_18__** %17, %struct.TYPE_18__* %38, i32* %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %46 = icmp ne %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %54 = call i32 %52(%struct.TYPE_18__* %53)
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i64, i64* %15, align 8
  store i64 %56, i64* %7, align 8
  br label %89

57:                                               ; preds = %36
  %58 = call %struct.TYPE_19__* @msi_alloc_zero(i32 48)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %14, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %62, i64* %7, align 8
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i32* @insert_ops, i32** %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = call i32 @msiobj_addref(i32* %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %75, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %86 = bitcast %struct.TYPE_19__* %85 to %struct.TYPE_18__*
  %87 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %87, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %63, %61, %55, %34, %25
  %90 = load i64, i64* %7, align 8
  ret i64 %90
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_19__*) #1

declare dso_local i64 @count_column_info(i32*) #1

declare dso_local i64 @TABLE_CreateView(%struct.TYPE_20__*, i32, %struct.TYPE_18__**) #1

declare dso_local i64 @SELECT_CreateView(%struct.TYPE_20__*, %struct.TYPE_18__**, %struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_19__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msiobj_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
