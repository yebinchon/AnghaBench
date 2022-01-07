; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_create_class_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_create_class_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.class_object = type { i32, %struct.TYPE_4__, %struct.record*, i64, i64, i32, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%s, %p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@class_object_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_class_object(i32* %0, i32* %1, i32 %2, %struct.record* %3, %struct.TYPE_4__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.record*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca %struct.class_object*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.record* %3, %struct.record** %10, align 8
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @debugstr_w(i32* %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %18 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %16, %struct.TYPE_4__** %17)
  %19 = call %struct.class_object* @heap_alloc(i32 64)
  store %struct.class_object* %19, %struct.class_object** %12, align 8
  %20 = load %struct.class_object*, %struct.class_object** %12, align 8
  %21 = icmp ne %struct.class_object* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %6, align 4
  br label %73

24:                                               ; preds = %5
  %25 = load %struct.class_object*, %struct.class_object** %12, align 8
  %26 = getelementptr inbounds %struct.class_object, %struct.class_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* @class_object_vtbl, i32** %27, align 8
  %28 = load %struct.class_object*, %struct.class_object** %12, align 8
  %29 = getelementptr inbounds %struct.class_object, %struct.class_object* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load %struct.class_object*, %struct.class_object** %12, align 8
  %34 = getelementptr inbounds %struct.class_object, %struct.class_object* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  br label %46

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @heap_strdupW(i32* %36)
  %38 = load %struct.class_object*, %struct.class_object** %12, align 8
  %39 = getelementptr inbounds %struct.class_object, %struct.class_object* %38, i32 0, i32 7
  store i32* %37, i32** %39, align 8
  %40 = icmp ne i32* %37, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.class_object*, %struct.class_object** %12, align 8
  %43 = call i32 @heap_free(%struct.class_object* %42)
  %44 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %44, i32* %6, align 4
  br label %73

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.class_object*, %struct.class_object** %12, align 8
  %49 = getelementptr inbounds %struct.class_object, %struct.class_object* %48, i32 0, i32 6
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.class_object*, %struct.class_object** %12, align 8
  %52 = getelementptr inbounds %struct.class_object, %struct.class_object* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.class_object*, %struct.class_object** %12, align 8
  %54 = getelementptr inbounds %struct.class_object, %struct.class_object* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.class_object*, %struct.class_object** %12, align 8
  %56 = getelementptr inbounds %struct.class_object, %struct.class_object* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.record*, %struct.record** %10, align 8
  %58 = load %struct.class_object*, %struct.class_object** %12, align 8
  %59 = getelementptr inbounds %struct.class_object, %struct.class_object* %58, i32 0, i32 2
  store %struct.record* %57, %struct.record** %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @IEnumWbemClassObject_AddRef(i32* %63)
  br label %65

65:                                               ; preds = %62, %46
  %66 = load %struct.class_object*, %struct.class_object** %12, align 8
  %67 = getelementptr inbounds %struct.class_object, %struct.class_object* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %70)
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %65, %41, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local %struct.class_object* @heap_alloc(i32) #1

declare dso_local i32* @heap_strdupW(i32*) #1

declare dso_local i32 @heap_free(%struct.class_object*) #1

declare dso_local i32 @IEnumWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
