; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_logby.c_ngx_http_lua_log_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_logby.c_ngx_http_lua_log_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_22__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lua log handler, uri:\22%V\22 c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no log handler found\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"calling log handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_log_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ngx_log_debug2(i32 %6, i32 %11, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = load i32, i32* @ngx_http_lua_module, align 4
  %22 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %20, i32 %21)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %4, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %24, align 8
  %26 = icmp eq i32 (%struct.TYPE_19__*)* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = load i32, i32* @ngx_http_lua_module, align 4
  %33 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %31, i32 %32)
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %5, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = icmp eq %struct.TYPE_22__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = call %struct.TYPE_22__* @ngx_http_lua_create_ctx(%struct.TYPE_19__* %39)
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %5, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = icmp eq %struct.TYPE_22__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_LOG, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %52, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = call i32 %53(%struct.TYPE_19__* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %43, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_http_lua_create_ctx(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
