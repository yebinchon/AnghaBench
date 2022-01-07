; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_timeouts.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i8*, i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no upstream found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"API disabled in the current context\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no upstream peer data found\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_balancer_set_timeouts(%struct.TYPE_17__* %0, i64 %1, i64 %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %6, align 4
  br label %118

22:                                               ; preds = %5
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %13, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @NGX_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %118

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = load i32, i32* @ngx_http_lua_module, align 4
  %34 = call %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_17__* %32, i32 %33)
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %12, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %36 = icmp eq %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @NGX_ERROR, align 4
  store i32 %39, i32* %6, align 4
  br label %118

40:                                               ; preds = %31
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %6, align 4
  br label %118

50:                                               ; preds = %40
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = load i32, i32* @ngx_http_lua_module, align 4
  %53 = call %struct.TYPE_18__* @ngx_http_get_module_main_conf(%struct.TYPE_17__* %51, i32 %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %15, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %16, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %58 = icmp eq %struct.TYPE_20__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @NGX_ERROR, align 4
  store i32 %61, i32* %6, align 4
  br label %118

62:                                               ; preds = %50
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_16__* @ngx_palloc(i32 %70, i32 24)
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %14, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %73 = icmp eq %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @NGX_ERROR, align 4
  store i32 %76, i32* %6, align 4
  br label %118

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = call i32 @ngx_memcpy(%struct.TYPE_16__* %78, %struct.TYPE_16__* %81, i32 24)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %92

88:                                               ; preds = %62
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %14, align 8
  br label %92

92:                                               ; preds = %88, %77
  %93 = load i64, i64* %8, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i64, i64* %8, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i64, i64* %9, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i64, i64* %9, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i64, i64* %10, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i64, i64* %10, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @NGX_OK, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %74, %59, %47, %37, %28, %19
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_main_conf(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
