; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_resolve_retval_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_resolve_retval_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32*, i32, %struct.TYPE_26__*, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_22__*, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__*, i32, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_29__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_29__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lua udp socket resolve retval handler\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"resolver not working\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@ngx_http_lua_socket_udp_cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"lua udp socket connect: %i\00", align 1
@ngx_http_lua_socket_udp_handler = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_socket_dummy_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*, i32*)* @ngx_http_lua_socket_resolve_retval_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %178

29:                                               ; preds = %3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 5
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %14, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %12, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %60

55:                                               ; preds = %29
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @lua_pushnil(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @lua_pushliteral(i32* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %178

60:                                               ; preds = %39
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %62 = call i64 @ngx_http_lua_udp_connect(%struct.TYPE_28__* %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @NGX_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @ngx_socket_errno, align 4
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = call %struct.TYPE_21__* @ngx_http_cleanup_add(%struct.TYPE_27__* %76, i32 0)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %11, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %79 = icmp eq %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @lua_pushnil(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @lua_pushliteral(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %178

90:                                               ; preds = %75
  %91 = load i32, i32* @ngx_http_lua_socket_udp_cleanup, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 2
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %90, %70
  %102 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @ngx_log_debug1(i32 %102, i32 %107, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @NGX_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_27__* %114, %struct.TYPE_29__* %115, i32* %116)
  store i32 %117, i32* %4, align 4
  br label %178

118:                                              ; preds = %101
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %10, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 4
  store %struct.TYPE_29__* %122, %struct.TYPE_29__** %124, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* @ngx_http_lua_socket_udp_handler, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %165 = load i32, i32* @ngx_http_lua_module, align 4
  %166 = call %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_27__* %164, i32 %165)
  store %struct.TYPE_30__* %166, %struct.TYPE_30__** %8, align 8
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %168, align 8
  store %struct.TYPE_31__* %169, %struct.TYPE_31__** %9, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  store %struct.TYPE_29__* %170, %struct.TYPE_29__** %172, align 8
  %173 = load i32, i32* @ngx_http_lua_socket_dummy_handler, align 4
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @lua_pushinteger(i32* %176, i32 1)
  store i32 1, i32* %4, align 4
  br label %178

178:                                              ; preds = %118, %113, %80, %55, %28
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i64 @ngx_http_lua_udp_connect(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_cleanup_add(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_27__*, %struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
