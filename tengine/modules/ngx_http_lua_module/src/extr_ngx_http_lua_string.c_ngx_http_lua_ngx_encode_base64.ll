; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_encode_base64.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_encode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [31 x i8] c"expecting one or two arguments\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_encode_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_encode_base64(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %12, %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @lua_isnil(i32* %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* bitcast ([1 x i8]* @.str.1 to i32*), i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %31

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %28 = call i64 @luaL_checklstring(i32* %26, i32 1, i64* %27)
  %29 = inttoptr i64 %28 to i32*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @LUA_TBOOLEAN, align 4
  %37 = call i32 @luaL_checktype(i32* %35, i32 2, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_toboolean(i32* %38, i32 2)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @ngx_http_lua_base64_encoded_length(i64 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @lua_newuserdata(i32* %46, i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32* %49, i32** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ngx_http_lua_encode_base64(%struct.TYPE_4__* %6, %struct.TYPE_4__* %7, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @lua_pushlstring(i32* %53, i8* %56, i64 %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %40, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @ngx_http_lua_base64_encoded_length(i64, i32) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_http_lua_encode_base64(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
