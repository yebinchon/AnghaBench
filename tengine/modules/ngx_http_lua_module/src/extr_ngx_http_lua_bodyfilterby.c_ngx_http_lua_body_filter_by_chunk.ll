; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_by_chunk.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_by_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"initialize nginx context in Lua VM, code chunk at stack top  sp = 1\00", align 1
@ngx_http_lua_traceback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"protected call user code\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to run body_filter_by_lua*: %*s\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"got return value: %d\00", align 1
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_body_filter_by_chunk(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @ngx_http_lua_body_filter_by_lua_env(i32* %12, %struct.TYPE_6__* %13, i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ngx_http_lua_traceback, align 4
  %18 = call i32 @lua_pushcfunction(i32* %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @lua_insert(i32* %19, i32 1)
  %21 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @lua_pcall(i32* %22, i32 0, i32 1, i32 1)
  store i64 %23, i64* %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lua_remove(i32* %24, i32 1)
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @lua_tolstring(i32* %29, i32 -1, i64* %10)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32* bitcast ([15 x i8]* @.str.2 to i32*), i32** %9, align 8
  store i64 14, i64* %10, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* @NGX_LOG_ERR, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ngx_log_error(i32 %36, i32 %41, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %42, i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @lua_settop(i32* %45, i32 0)
  %47 = load i64, i64* @NGX_ERROR, align 8
  store i64 %47, i64* %4, align 8
  br label %67

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @lua_tointeger(i32* %49, i32 -1)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @lua_settop(i32* %54, i32 0)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @NGX_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %48
  %64 = load i64, i64* @NGX_ERROR, align 8
  store i64 %64, i64* %4, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @NGX_OK, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %63, %35
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_http_lua_body_filter_by_lua_env(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
