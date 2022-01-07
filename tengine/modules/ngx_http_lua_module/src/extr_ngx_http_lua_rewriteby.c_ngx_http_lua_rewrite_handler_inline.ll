; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler_inline.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"rewrite by lua inline\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_rewrite_handler_inline(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = call i32 @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = load i32, i32* @ngx_http_lua_module, align 4
  %10 = call %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %8, i32 %9)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__* %11, i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i64 @ngx_http_lua_cache_loadbuffer(i32 %17, i32* %18, i32 %23, i32 %28, i32 %31, i8* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %41, i64* %2, align 8
  br label %46

42:                                               ; preds = %1
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = call i64 @ngx_http_lua_rewrite_by_chunk(i32* %43, %struct.TYPE_14__* %44)
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @dd(i8*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @ngx_http_lua_cache_loadbuffer(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_lua_rewrite_by_chunk(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
