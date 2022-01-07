; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler_file.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_rewrite_handler_file(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = load i32, i32* @ngx_http_lua_module, align 4
  %11 = call %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %9, i32 %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = call i64 @ngx_http_complex_value(%struct.TYPE_14__* %12, i32* %14, %struct.TYPE_13__* %8)
  %16 = load i64, i64* @NGX_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @NGX_ERROR, align 8
  store i64 %19, i64* %2, align 8
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @ngx_http_lua_rebase_path(i32 %23, i32 %25, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i64, i64* @NGX_ERROR, align 8
  store i64 %32, i64* %2, align 8
  br label %62

33:                                               ; preds = %20
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__* %34, i32* null)
  store i32* %35, i32** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ngx_http_lua_cache_loadfile(i32 %40, i32* %41, i32* %42, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %55, i64* %2, align 8
  br label %62

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %62

58:                                               ; preds = %33
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = call i64 @ngx_http_lua_rewrite_by_chunk(i32* %59, %struct.TYPE_14__* %60)
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %58, %56, %54, %31, %18
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_14__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @ngx_http_lua_rebase_path(i32, i32, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ngx_http_lua_cache_loadfile(i32, i32*, i32*, i32) #1

declare dso_local i64 @ngx_http_lua_rewrite_by_chunk(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
