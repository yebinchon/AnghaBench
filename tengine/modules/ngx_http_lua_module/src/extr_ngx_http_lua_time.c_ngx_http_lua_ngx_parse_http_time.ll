; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_time.c_ngx_http_lua_ngx_parse_http_time.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_time.c_ngx_http_lua_ngx_parse_http_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_parse_http_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_parse_http_time(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @luaL_checklstring(i32* %14, i32 1, i64* %5)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @ngx_http_parse_time(i32* %17, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NGX_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_pushnil(i32* %24)
  store i32 1, i32* %2, align 4
  br label %31

26:                                               ; preds = %13
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @lua_pushnumber(i32* %27, i32 %29)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %23, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @ngx_http_parse_time(i32*, i64) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
