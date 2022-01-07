; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_request_cleanup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_request_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ctx is NULL\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"lua request cleanup: forcible=%d\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_request_cleanup(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @dd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %6, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ngx_log_debug1(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %12
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  store i32** null, i32*** %33, align 8
  br label %34

34:                                               ; preds = %28, %12
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load i32, i32* @ngx_http_lua_module, align 4
  %37 = call %struct.TYPE_14__* @ngx_http_get_module_main_conf(%struct.TYPE_13__* %35, i32 %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %7, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NGX_HTTP_LUA_CONTEXT_TIMER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %44
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_13__* %57, %struct.TYPE_15__* %58)
  store i32* %59, i32** %5, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ngx_http_lua_finalize_threads(%struct.TYPE_13__* %60, %struct.TYPE_15__* %61, i32* %62)
  br label %64

64:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @dd(i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_main_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_lua_finalize_threads(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
