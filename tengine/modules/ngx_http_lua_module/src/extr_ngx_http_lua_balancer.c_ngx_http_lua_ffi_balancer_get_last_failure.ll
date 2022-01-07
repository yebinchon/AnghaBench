; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_get_last_failure.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_get_last_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no upstream found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"API disabled in the current context\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no upstream peer data found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_balancer_get_last_failure(%struct.TYPE_14__* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = icmp eq %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @NGX_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %95

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @NGX_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %18
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load i32, i32* @ngx_http_lua_module, align 4
  %30 = call %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_14__* %28, i32 %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %8, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = icmp eq %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @NGX_ERROR, align 4
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %4, align 4
  br label %95

46:                                               ; preds = %36
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = load i32, i32* @ngx_http_lua_module, align 4
  %49 = call %struct.TYPE_15__* @ngx_http_get_module_main_conf(%struct.TYPE_14__* %47, i32 %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %12, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %11, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = icmp eq %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %56, align 8
  %57 = load i32, i32* @NGX_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %95

58:                                               ; preds = %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %10, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %63, %58
  %90 = load i32*, i32** %6, align 8
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %70
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %55, %43, %33, %24, %15
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_main_conf(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
