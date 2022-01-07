; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_set_http_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_set_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_http_header(%struct.list* %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.list* %0, %struct.list** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @debugstr_wn(%struct.TYPE_11__* %14, i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @debugstr_wn(%struct.TYPE_11__* %17, i32 %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.list*, %struct.list** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.TYPE_11__* @find_http_header(%struct.list* %21, %struct.TYPE_11__* %22, i32 %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %12, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @heap_strndupW(%struct.TYPE_11__* %28, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %13, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %35, i32* %6, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i32 @heap_free(%struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  br label %89

44:                                               ; preds = %5
  %45 = call %struct.TYPE_11__* @heap_alloc(i32 24)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %12, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %6, align 4
  br label %91

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @heap_strndupW(%struct.TYPE_11__* %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_11__*
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i8* @heap_strndupW(%struct.TYPE_11__* %57, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_11__*
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %67, %50
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @heap_free(%struct.TYPE_11__* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @heap_free(%struct.TYPE_11__* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = call i32 @heap_free(%struct.TYPE_11__* %81)
  %83 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %83, i32* %6, align 4
  br label %91

84:                                               ; preds = %67
  %85 = load %struct.list*, %struct.list** %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(%struct.list* %85, i32* %87)
  br label %89

89:                                               ; preds = %84, %36
  %90 = load i32, i32* @S_OK, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %72, %48, %34
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_wn(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @find_http_header(%struct.list*, %struct.TYPE_11__*, i32) #1

declare dso_local i8* @heap_strndupW(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @heap_alloc(i32) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
