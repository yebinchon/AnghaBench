; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_create_socket_pool.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_create_socket_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"lua tcp socket connection pool size: %i, backlog: %i\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@pool_udata_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"lua tcp socket keepalive create connection pool for key \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"items: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i64, i32, i32, %struct.TYPE_17__**)* @ngx_http_lua_socket_tcp_create_socket_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_create_socket_pool(i32* %0, %struct.TYPE_16__* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_17__** %5) #0 {
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = bitcast %struct.TYPE_15__* %7 to i64*
  store i64 %2, i64* %19, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %12, align 8
  %20 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ngx_log_debug2(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i64 @ngx_align(i32 %31, i32 8)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = add i64 47, %33
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = add i64 %34, %37
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call %struct.TYPE_17__* @lua_newuserdata(i32* %39, i64 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %17, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %142

47:                                               ; preds = %6
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @pool_udata_metatable_key, align 4
  %50 = call i32 @ngx_http_lua_lightudata_mask(i32 %49)
  %51 = call i32 @lua_pushlightuserdata(i32* %48, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %54 = call i32 @lua_rawget(i32* %52, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @lua_setmetatable(i32* %55, i32 -2)
  %57 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_log_debug1(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %7)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @lua_rawset(i32* %64, i32 -3)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @lua_pop(i32* %66, i32 1)
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = call i32 @ngx_http_lua_get_lua_vm(%struct.TYPE_16__* %76, i32* null)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 6
  %82 = call i32 @ngx_queue_init(i32* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = call i32 @ngx_queue_init(i32* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 4
  %88 = call i32 @ngx_queue_init(i32* %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = call i32 @ngx_queue_init(i32* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @ngx_copy(i64 %94, i32 %96, i32 %98)
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %13, align 8
  store i32 0, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %104, %105
  %107 = inttoptr i64 %106 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %18, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %109 = call i32 @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_18__* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %111 = bitcast %struct.TYPE_18__* %110 to i8*
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %113 = call i8* @ngx_align_ptr(%struct.TYPE_18__* %112, i32 8)
  %114 = icmp eq i8* %111, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ngx_http_lua_assert(i32 %115)
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %136, %47
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %117
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = call i32 @ngx_queue_insert_head(i32* %123, i32* %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %135, align 8
  br label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %117

139:                                              ; preds = %117
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %141 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %141, align 8
  br label %142

142:                                              ; preds = %139, %44
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_align(i32, i32) #1

declare dso_local %struct.TYPE_17__* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_get_lua_vm(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32* @ngx_copy(i64, i32, i32) #1

declare dso_local i32 @dd(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i8* @ngx_align_ptr(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
