; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_14__*, i32*, i64*)* }
%struct.TYPE_15__ = type { i64, i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"can't get table dimensions\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@distinct_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DISTINCT_CreateView(%struct.TYPE_16__* %0, %struct.TYPE_14__** %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64 (%struct.TYPE_14__*, i32*, i64*)*, i64 (%struct.TYPE_14__*, i32*, i64*)** %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = call i64 %17(%struct.TYPE_14__* %18, i32* null, i64* %9)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %4, align 8
  br label %53

26:                                               ; preds = %3
  %27 = call %struct.TYPE_15__* @msi_alloc_zero(i32 40)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %31, i64* %4, align 8
  br label %53

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32* @distinct_ops, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = call i32 @msiobj_addref(i32* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = bitcast %struct.TYPE_15__* %49 to %struct.TYPE_14__*
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %51, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %32, %30, %23
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_15__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msiobj_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
