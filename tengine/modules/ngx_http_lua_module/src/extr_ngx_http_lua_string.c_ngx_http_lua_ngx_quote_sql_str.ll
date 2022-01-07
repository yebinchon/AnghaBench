; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_quote_sql_str.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_quote_sql_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_quote_sql_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_quote_sql_str(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @luaL_checklstring(i32* %17, i32 1, i64* %4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  store i32* bitcast ([3 x i8]* @.str.1 to i32*), i32** %9, align 8
  store i64 2, i64* %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @lua_pushlstring(i32* %23, i8* %25, i32 %27)
  store i32 1, i32* %2, align 4
  br label %78

29:                                               ; preds = %16
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @ngx_http_lua_ngx_escape_sql_str(i32* null, i32* %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 2, %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %5, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32* @lua_newuserdata(i32* %37, i64 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  store i32 39, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32* @ngx_copy(i32* %46, i32* %47, i64 %48)
  store i32* %49, i32** %7, align 8
  br label %56

50:                                               ; preds = %29
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @ngx_http_lua_ngx_escape_sql_str(i32* %51, i32* %52, i64 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %7, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  store i32 39, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = icmp ne i32* %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %56
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @lua_pushlstring(i32* %67, i8* %69, i32 %76)
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %66, %64, %22, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i64 @ngx_http_lua_ngx_escape_sql_str(i32*, i32*, i64) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32* @ngx_copy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
