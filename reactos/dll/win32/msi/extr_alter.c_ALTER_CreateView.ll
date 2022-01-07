; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_ALTER_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_ALTER_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%p %p %s %d\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@alter_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ALTER_CreateView(i32* %0, %struct.TYPE_11__** %1, i32 %2, %struct.TYPE_10__* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__** %14, %struct.TYPE_10__* %15, i32 %17, i32 %18)
  %20 = call %struct.TYPE_12__* @msi_alloc_zero(i32 40)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %12, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %24, i64* %6, align 8
  br label %62

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = call i64 @TABLE_CreateView(i32* %26, i32 %27, i32* %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = call i32 @msi_free(%struct.TYPE_12__* %35)
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %6, align 8
  br label %62

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32* @alter_ops, i32** %48, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %60, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %45, %34, %23
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__**, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_12__* @msi_alloc_zero(i32) #1

declare dso_local i64 @TABLE_CreateView(i32*, i32, i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
