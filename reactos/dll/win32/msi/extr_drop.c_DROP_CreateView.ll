; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_drop.c_DROP_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_drop.c_DROP_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"%p %s\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@drop_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DROP_CreateView(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %10, i32 %12)
  %14 = call %struct.TYPE_6__* @msi_alloc_zero(i32 24)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %18, i64* %4, align 8
  br label %43

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = call i64 @TABLE_CreateView(i32* %20, i32 %21, i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i32 @msi_free(%struct.TYPE_6__* %29)
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %4, align 8
  br label %43

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* @drop_ops, i32** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = bitcast %struct.TYPE_6__* %39 to i32*
  %41 = load i32**, i32*** %6, align 8
  store i32* %40, i32** %41, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %32, %28, %17
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @TRACE(i8*, i32**, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_6__* @msi_alloc_zero(i32) #1

declare dso_local i64 @TABLE_CreateView(i32*, i32, i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
