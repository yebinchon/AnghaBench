; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_by_chunk.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_by_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@ngx_http_lua_traceback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc == %d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to run balancer_by_lua*: %*s\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*)* @ngx_http_lua_balancer_by_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_balancer_by_chunk(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call i32 @ngx_http_lua_set_req(i32* %9, %struct.TYPE_6__* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ngx_http_lua_create_new_globals_table(i32* %12, i32 0, i32 1)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_createtable(i32* %14, i32 0, i32 1)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ngx_http_lua_get_globals_table(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_setfield(i32* %18, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lua_setmetatable(i32* %20, i32 -2)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_setfenv(i32* %22, i32 -2)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ngx_http_lua_traceback, align 4
  %26 = call i32 @lua_pushcfunction(i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @lua_insert(i32* %27, i32 1)
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @lua_pcall(i32* %29, i32 0, i32 1, i32 1)
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_remove(i32* %31, i32 1)
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @lua_tolstring(i32* %39, i32 -1, i64* %7)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32* bitcast ([15 x i8]* @.str.2 to i32*), i32** %6, align 8
  store i64 14, i64* %7, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* @NGX_LOG_ERR, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ngx_log_error(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %52, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @lua_settop(i32* %55, i32 0)
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %3, align 8
  br label %62

58:                                               ; preds = %2
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @lua_settop(i32* %59, i32 0)
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @ngx_http_lua_set_req(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ngx_http_lua_create_new_globals_table(i32*, i32, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
