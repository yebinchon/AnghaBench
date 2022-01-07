; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_finalize.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_19__*, i64, i64, i32** }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i32*, i32, i32 (%struct.TYPE_25__*, i32, i32)* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_19__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"request: %p, u: %p, u->cleanup: %p\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"lua finalize socket\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"lua close socket connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_23__*)* @ngx_http_lua_socket_tcp_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_finalize(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 7
  %11 = load i32**, i32*** %10, align 8
  %12 = call i32 @dd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %7, %struct.TYPE_23__* %8, i32** %11)
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ngx_log_debug0(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 7
  %22 = load i32**, i32*** %21, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 7
  %27 = load i32**, i32*** %26, align 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 7
  %31 = load i32**, i32*** %30, align 8
  %32 = call i32 @ngx_http_lua_cleanup_free(%struct.TYPE_22__* %28, i32** %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 7
  store i32** null, i32*** %34, align 8
  br label %35

35:                                               ; preds = %24, %2
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = call i32 @ngx_http_lua_socket_tcp_finalize_read_part(%struct.TYPE_22__* %36, %struct.TYPE_23__* %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = call i32 @ngx_http_lua_socket_tcp_finalize_write_part(%struct.TYPE_22__* %39, %struct.TYPE_23__* %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %35
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %144

55:                                               ; preds = %46
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = icmp ne %struct.TYPE_19__* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ngx_resolve_name_done(i32* %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %67, %60, %55
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = load i32 (%struct.TYPE_25__*, i32, i32)*, i32 (%struct.TYPE_25__*, i32, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_25__*, i32, i32)* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load i32 (%struct.TYPE_25__*, i32, i32)*, i32 (%struct.TYPE_25__*, i32, i32)** %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %88(%struct.TYPE_25__* %90, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %84, %78
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %5, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %144

103:                                              ; preds = %96
  %104 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ngx_log_debug0(i32 %104, i32 %109, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @ngx_http_lua_socket_tcp_close_connection(i32* %111)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %6, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = icmp eq %struct.TYPE_24__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %103
  br label %144

124:                                              ; preds = %103
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %140 = call i32 @ngx_http_lua_socket_free_pool(i32 %138, %struct.TYPE_24__* %139)
  br label %144

141:                                              ; preds = %124
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = call i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_24__* %142)
  br label %144

144:                                              ; preds = %51, %123, %133, %141, %96
  ret void
}

declare dso_local i32 @dd(i8*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32**) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_cleanup_free(%struct.TYPE_22__*, i32**) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_finalize_read_part(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_finalize_write_part(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_resolve_name_done(i32*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_close_connection(i32*) #1

declare dso_local i32 @ngx_http_lua_socket_free_pool(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
