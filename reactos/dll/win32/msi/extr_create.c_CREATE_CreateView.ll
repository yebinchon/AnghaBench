; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_create.c_CREATE_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_create.c_CREATE_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i8*, i8*, %struct.TYPE_12__*, i8*, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@MSITYPE_KEY = common dso_local global i32 0, align 4
@create_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CREATE_CreateView(%struct.TYPE_13__* %0, i32** %1, i8* %2, %struct.TYPE_12__* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %16, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = call i64 @check_columns(%struct.TYPE_12__* %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* %13, align 8
  store i64 %27, i64* %6, align 8
  br label %106

28:                                               ; preds = %5
  %29 = call %struct.TYPE_14__* @msi_alloc_zero(i32 48)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %12, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %33, i64* %6, align 8
  br label %106

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %14, align 8
  br label %36

36:                                               ; preds = %66, %34
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** @FALSE, align 8
  store i8* %54, i8** %15, align 8
  br label %65

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSITYPE_KEY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** %16, align 8
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %14, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = call i32 @msi_free(%struct.TYPE_14__* %77)
  %79 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %79, i64* %6, align 8
  br label %106

80:                                               ; preds = %73, %70
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32* @create_ops, i32** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = call i32 @msiobj_addref(i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %95, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = bitcast %struct.TYPE_14__* %102 to i32*
  %104 = load i32**, i32*** %8, align 8
  store i32* %103, i32** %104, align 8
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %80, %76, %32, %26
  %107 = load i64, i64* %6, align 8
  ret i64 %107
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @check_columns(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_14__*) #1

declare dso_local i32 @msiobj_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
