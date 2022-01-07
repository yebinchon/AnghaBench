; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_param_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ctx not found\00", align 1
@NGX_HTTP_LUA_CONTEXT_BODY_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_param_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_param_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @ngx_http_lua_get_req(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @ngx_http_lua_module, align 4
  %14 = call i32* @ngx_http_get_module_ctx(i32* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %11
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BODY_FILTER, align 4
  %24 = call i32 @ngx_http_lua_check_context(i32* %21, i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ngx_http_lua_body_filter_param_set(i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %17, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_lua_body_filter_param_set(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
