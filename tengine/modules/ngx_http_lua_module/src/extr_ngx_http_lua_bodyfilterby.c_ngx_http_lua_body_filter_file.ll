; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_file.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_body_filter_file(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = load i32, i32* @ngx_http_lua_module, align 4
  %13 = call %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %11, i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = call i64 @ngx_http_complex_value(%struct.TYPE_14__* %14, i32* %16, %struct.TYPE_13__* %10)
  %18 = load i64, i64* @NGX_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @NGX_ERROR, align 8
  store i64 %21, i64* %3, align 8
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @ngx_http_lua_rebase_path(i32 %25, i32 %27, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %3, align 8
  br label %69

35:                                               ; preds = %22
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__* %36, i32* null)
  store i32* %37, i32** %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ngx_http_lua_cache_loadfile(i32 %42, i32* %43, i32* %44, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i64, i64* @NGX_ERROR, align 8
  store i64 %53, i64* %3, align 8
  br label %69

54:                                               ; preds = %35
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @lua_isfunction(i32* %55, i32 -1)
  %57 = call i32 @ngx_http_lua_assert(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @ngx_http_lua_body_filter_by_chunk(i32* %58, %struct.TYPE_14__* %59, i32* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @NGX_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* @NGX_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %69

67:                                               ; preds = %54
  %68 = load i64, i64* @NGX_OK, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %65, %52, %33, %20
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_14__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @ngx_http_lua_rebase_path(i32, i32, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ngx_http_lua_cache_loadfile(i32, i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @ngx_http_lua_body_filter_by_chunk(i32*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
