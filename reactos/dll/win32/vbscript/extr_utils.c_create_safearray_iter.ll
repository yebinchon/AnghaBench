; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_utils.c_create_safearray_iter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_utils.c_create_safearray_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__, i32, i64, %struct.TYPE_11__* }

@FADF_VARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"enumeration not supported: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@safearray_iter_EnumVARIANTVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_safearray_iter(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FADF_VARIANT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %10, %2
  %24 = call %struct.TYPE_10__* @heap_alloc(i32 40)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = call i32 @SafeArrayLock(%struct.TYPE_11__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @heap_free(%struct.TYPE_10__* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32* @safearray_iter_EnumVARIANTVtbl, i32** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = call i32 @get_safearray_size(%struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %60, align 8
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %43, %38, %27, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @heap_alloc(i32) #1

declare dso_local i32 @SafeArrayLock(%struct.TYPE_11__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_10__*) #1

declare dso_local i32 @get_safearray_size(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
