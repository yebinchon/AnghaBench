; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*)* }
%struct.expr = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32*, %struct.TYPE_23__*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@update_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @UPDATE_CreateView(%struct.TYPE_23__* %0, %struct.TYPE_21__** %1, i32 %2, i32* %3, %struct.expr* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.expr*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.expr* %4, %struct.expr** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %16)
  %18 = load %struct.expr*, %struct.expr** %11, align 8
  %19 = icmp ne %struct.expr* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.expr*, %struct.expr** %11, align 8
  %24 = call i64 @WHERE_CreateView(%struct.TYPE_23__* %21, %struct.TYPE_21__** %15, i32 %22, %struct.expr* %23)
  store i64 %24, i64* %13, align 8
  br label %29

25:                                               ; preds = %5
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @TABLE_CreateView(%struct.TYPE_23__* %26, i32 %27, %struct.TYPE_21__** %15)
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %6, align 8
  br label %85

35:                                               ; preds = %29
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @SELECT_CreateView(%struct.TYPE_23__* %36, %struct.TYPE_21__** %14, %struct.TYPE_21__* %37, i32* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %50 = call i32 %48(%struct.TYPE_21__* %49)
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %6, align 8
  br label %85

52:                                               ; preds = %35
  %53 = call %struct.TYPE_22__* @msi_alloc_zero(i32 32)
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %12, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %55 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %63 = call i32 %61(%struct.TYPE_21__* %62)
  %64 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %64, i64* %6, align 8
  br label %85

65:                                               ; preds = %52
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  store i32* @update_ops, i32** %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = call i32 @msiobj_addref(i32* %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %74, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %80, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %82 = bitcast %struct.TYPE_22__* %81 to %struct.TYPE_21__*
  %83 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %83, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %65, %56, %43, %33
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*) #1

declare dso_local i64 @WHERE_CreateView(%struct.TYPE_23__*, %struct.TYPE_21__**, i32, %struct.expr*) #1

declare dso_local i64 @TABLE_CreateView(%struct.TYPE_23__*, i32, %struct.TYPE_21__**) #1

declare dso_local i64 @SELECT_CreateView(%struct.TYPE_23__*, %struct.TYPE_21__**, %struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_22__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msiobj_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
