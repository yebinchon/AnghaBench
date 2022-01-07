; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_handler_new.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_handler_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"httpd_host\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Should be a function\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate private buffer.\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@vlclua_httpd_handler_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create HTTPd handler.\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"httpd_handler\00", align 1
@vlclua_httpd_handler_delete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_httpd_handler_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_httpd_handler_new(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_checkudata(i32* %11, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i32**
  store i32** %13, i32*** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @luaL_checkstring(i32* %14, i32 2)
  store i8* %15, i8** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_nilorcheckstring(i32* %16, i32 3)
  store i8* %17, i8** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @luaL_nilorcheckstring(i32* %18, i32 4)
  store i8* %19, i8** %7, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_isfunction(i32* %21, i32 5)
  %23 = call i32 @luaL_argcheck(i32* %20, i32 %22, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_settop(i32* %24, i32 6)
  %26 = call %struct.TYPE_5__* @malloc(i32 12)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %91

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_newthread(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = call i32 @luaL_ref(i32* %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %32
  %50 = phi i1 [ false, %32 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lua_xmove(i32* %54, i32 %57, i32 2)
  %59 = load i32**, i32*** %4, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @vlclua_httpd_handler_callback, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = call i32* @httpd_HandlerNew(i32* %60, i8* %61, i8* %62, i8* %63, i32 %64, %struct.TYPE_5__* %65)
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %49
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = call i32 @free(%struct.TYPE_5__* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @luaL_error(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  br label %91

74:                                               ; preds = %49
  %75 = load i32*, i32** %3, align 8
  %76 = call i32** @lua_newuserdata(i32* %75, i32 8)
  store i32** %76, i32*** %10, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32**, i32*** %10, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @luaL_newmetatable(i32* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @vlclua_httpd_handler_delete, align 4
  %85 = call i32 @lua_pushcfunction(i32* %83, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_setfield(i32* %86, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_setmetatable(i32* %89, i32 -2)
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %69, %29
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_nilorcheckstring(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_newthread(i32*) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32, i32) #1

declare dso_local i32* @httpd_HandlerNew(i32*, i8*, i8*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
