; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_set_builtin_multi_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_set_builtin_multi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"clear multi-value headers: %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"new multi-value header: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*)* @ngx_http_set_builtin_multi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_set_builtin_multi_header(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = call i32 @ngx_array_destroy(%struct.TYPE_17__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ngx_array_init(%struct.TYPE_17__* %32, i32 %35, i32 2, i32 8)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %93

41:                                               ; preds = %29
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @dd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %24, %3
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ngx_array_init(%struct.TYPE_17__* %53, i32 %56, i32 2, i32 8)
  %58 = load i64, i64* @NGX_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @NGX_ERROR, align 8
  store i64 %61, i64* %4, align 8
  br label %93

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call i64 @ngx_http_set_header_helper(%struct.TYPE_15__* %64, %struct.TYPE_16__* %65, %struct.TYPE_14__* %66, i32** %10)
  %68 = load i64, i64* @NGX_ERROR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %4, align 8
  br label %93

72:                                               ; preds = %63
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* @NGX_OK, align 8
  store i64 %78, i64* %4, align 8
  br label %93

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i32 @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i32** @ngx_array_push(%struct.TYPE_17__* %83)
  store i32** %84, i32*** %9, align 8
  %85 = load i32**, i32*** %9, align 8
  %86 = icmp eq i32** %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @NGX_ERROR, align 8
  store i64 %88, i64* %4, align 8
  br label %93

89:                                               ; preds = %79
  %90 = load i32*, i32** %10, align 8
  %91 = load i32**, i32*** %9, align 8
  store i32* %90, i32** %91, align 8
  %92 = load i64, i64* @NGX_OK, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %89, %87, %77, %70, %60, %39
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i32 @ngx_array_destroy(%struct.TYPE_17__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i64 @ngx_http_set_header_helper(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32**) #1

declare dso_local i32** @ngx_array_push(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
