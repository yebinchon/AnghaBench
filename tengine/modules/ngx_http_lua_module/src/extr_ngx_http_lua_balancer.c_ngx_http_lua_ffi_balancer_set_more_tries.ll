; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_more_tries.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_more_tries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no upstream found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"API disabled in the current context\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no upstream peer data found\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_balancer_set_more_tries(%struct.TYPE_16__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @NGX_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = icmp eq %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @NGX_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load i32, i32* @ngx_http_lua_module, align 4
  %29 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_16__* %27, i32 %28)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %8, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @NGX_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %26
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %63

45:                                               ; preds = %35
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load i32, i32* @ngx_http_lua_module, align 4
  %48 = call %struct.TYPE_17__* @ngx_http_get_module_main_conf(%struct.TYPE_16__* %46, i32 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %10, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %11, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %53 = icmp eq %struct.TYPE_19__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @NGX_ERROR, align 4
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %45
  %58 = load i8**, i8*** %7, align 8
  store i8* null, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @NGX_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %54, %42, %32, %23, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_main_conf(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
