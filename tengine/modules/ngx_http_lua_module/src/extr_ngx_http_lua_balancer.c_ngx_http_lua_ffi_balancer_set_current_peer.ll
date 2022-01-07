; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_current_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_ffi_balancer_set_current_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_16__*, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no upstream found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"API disabled in the current context\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no upstream peer data found\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"no host allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_balancer_set_current_peer(%struct.TYPE_18__* %0, i32* %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %6, align 4
  br label %147

22:                                               ; preds = %5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @NGX_ERROR, align 4
  store i32 %30, i32* %6, align 4
  br label %147

31:                                               ; preds = %22
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = load i32, i32* @ngx_http_lua_module, align 4
  %34 = call %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %32, i32 %33)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %13, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %36 = icmp eq %struct.TYPE_20__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @NGX_ERROR, align 4
  store i32 %39, i32* %6, align 4
  br label %147

40:                                               ; preds = %31
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
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
  br label %147

50:                                               ; preds = %40
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = load i32, i32* @ngx_http_lua_module, align 4
  %53 = call %struct.TYPE_19__* @ngx_http_get_module_main_conf(%struct.TYPE_18__* %51, i32 %52)
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %15, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %16, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %58 = icmp eq %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @NGX_ERROR, align 4
  store i32 %61, i32* %6, align 4
  br label %147

62:                                               ; preds = %50
  %63 = call i32 @ngx_memzero(%struct.TYPE_17__* %12, i32 56)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32* @ngx_palloc(i32 %66, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %76, align 8
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %6, align 4
  br label %147

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @ngx_memcpy(i32* %81, i32* %82, i64 %83)
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @ngx_parse_url(i32 %95, %struct.TYPE_17__* %12)
  %97 = load i64, i64* @NGX_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %11, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @NGX_ERROR, align 4
  store i32 %108, i32* %6, align 4
  br label %147

109:                                              ; preds = %78
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 8
  br label %144

141:                                              ; preds = %113, %109
  %142 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %142, align 8
  %143 = load i32, i32* @NGX_ERROR, align 4
  store i32 %143, i32* %6, align 4
  br label %147

144:                                              ; preds = %120
  %145 = load i64, i64* @NGX_OK, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %141, %107, %75, %59, %47, %37, %28, %19
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_main_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
