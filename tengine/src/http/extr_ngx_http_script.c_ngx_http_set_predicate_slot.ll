; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_set_predicate_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_set_predicate_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, %struct.TYPE_11__* }

@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_set_predicate_slot(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = bitcast i8* %20 to i32**
  store i32** %21, i32*** %11, align 8
  %22 = load i32**, i32*** %11, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @ngx_array_create(i32 %29, i32 1, i32 4)
  %31 = load i32**, i32*** %11, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %36, i8** %4, align 8
  br label %81

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  store i64 1, i64* %10, align 8
  br label %44

44:                                               ; preds = %76, %38
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load i32**, i32*** %11, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @ngx_array_push(i32* %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %59, i8** %4, align 8
  br label %81

60:                                               ; preds = %52
  %61 = call i32 @ngx_memzero(%struct.TYPE_10__* %13, i32 24)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %63, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32* %66, i32** %67, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* %68, i32** %69, align 8
  %70 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_10__* %13)
  %71 = load i64, i64* @NGX_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %74, i8** %4, align 8
  br label %81

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %44

79:                                               ; preds = %44
  %80 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %73, %58, %35
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
