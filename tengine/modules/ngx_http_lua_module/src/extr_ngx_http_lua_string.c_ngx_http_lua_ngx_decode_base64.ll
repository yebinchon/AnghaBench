; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_decode_base64.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_decode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"string argument only\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_decode_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_decode_base64(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_type(i32* %13, i32 1)
  %15 = load i64, i64* @LUA_TSTRING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %23 = call i64 @luaL_checklstring(i32* %21, i32 1, i32* %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_base64_decoded_length(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @lua_newuserdata(i32* %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = call i64 @ngx_decode_base64(%struct.TYPE_4__* %4, %struct.TYPE_4__* %5)
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @lua_pushlstring(i32* %39, i8* %42, i32 %44)
  br label %49

46:                                               ; preds = %20
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pushnil(i32* %47)
  br label %49

49:                                               ; preds = %46, %38
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %17, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @ngx_base64_decoded_length(i32) #1

declare dso_local i32* @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @ngx_decode_base64(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
