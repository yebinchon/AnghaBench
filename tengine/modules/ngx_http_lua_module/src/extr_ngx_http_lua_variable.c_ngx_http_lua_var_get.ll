; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_var_get.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_var_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"bad variable name\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_var_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_var_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_11__* @ngx_http_lua_get_req(i32* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @ngx_http_lua_check_fake_request(i32* %19, %struct.TYPE_11__* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_type(i32* %22, i32 -1)
  %24 = load i64, i64* @LUA_TSTRING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %18
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @lua_tolstring(i32* %30, i32 -1, i64* %7)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32* @lua_newuserdata(i32* %33, i64 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ngx_hash_strlow(i32* %36, i32* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.TYPE_10__* @ngx_http_get_variable(%struct.TYPE_11__* %44, %struct.TYPE_9__* %9, i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = icmp eq %struct.TYPE_10__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %29
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %29
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_pushnil(i32* %55)
  store i32 1, i32* %2, align 4
  br label %67

57:                                               ; preds = %49
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @lua_pushlstring(i32* %58, i8* %62, i64 %65)
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %57, %54, %26, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_11__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_hash_strlow(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_variable(%struct.TYPE_11__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
