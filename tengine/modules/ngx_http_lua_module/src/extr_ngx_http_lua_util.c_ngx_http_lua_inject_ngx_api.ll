; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_ngx_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_inject_ngx_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_http_lua_get_raw_phase_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"_phase_ctx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ngx\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @ngx_http_lua_inject_ngx_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_inject_ngx_api(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @lua_createtable(i32* %7, i32 0, i32 117)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ngx_http_lua_get_raw_phase_context, align 4
  %11 = call i32 @lua_pushcfunction(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_setfield(i32* %12, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ngx_http_lua_inject_arg_api(i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ngx_http_lua_inject_http_consts(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ngx_http_lua_inject_core_consts(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ngx_http_lua_inject_log_api(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ngx_http_lua_inject_output_api(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ngx_http_lua_inject_time_api(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ngx_http_lua_inject_string_api(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ngx_http_lua_inject_control_api(i32* %28, i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ngx_http_lua_inject_subrequest_api(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ngx_http_lua_inject_sleep_api(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ngx_http_lua_inject_phase_api(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ngx_http_lua_inject_req_api(i32* %37, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ngx_http_lua_inject_resp_header_api(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ngx_http_lua_create_headers_metatable(i32* %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ngx_http_lua_inject_variable_api(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ngx_http_lua_inject_shdict_api(i32* %47, i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ngx_http_lua_inject_socket_tcp_api(i32* %50, i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ngx_http_lua_inject_socket_udp_api(i32* %53, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @ngx_http_lua_inject_uthread_api(i32* %56, i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @ngx_http_lua_inject_timer_api(i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ngx_http_lua_inject_config_api(i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @ngx_http_lua_inject_worker_api(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ngx_http_lua_inject_misc_api(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @lua_getglobal(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @lua_getfield(i32* %69, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @lua_pushvalue(i32* %71, i32 -3)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @lua_pop(i32* %75, i32 2)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @lua_setglobal(i32* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @ngx_http_lua_inject_coroutine_api(i32* %79, i32* %80)
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_inject_arg_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_http_consts(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_core_consts(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_log_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_output_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_time_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_string_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_control_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_subrequest_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_sleep_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_phase_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_req_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_resp_header_api(i32*) #1

declare dso_local i32 @ngx_http_lua_create_headers_metatable(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_variable_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_shdict_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_socket_tcp_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_socket_udp_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_uthread_api(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_inject_timer_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_config_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_worker_api(i32*) #1

declare dso_local i32 @ngx_http_lua_inject_misc_api(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_inject_coroutine_api(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
