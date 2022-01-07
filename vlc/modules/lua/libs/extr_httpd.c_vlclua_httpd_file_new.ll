; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_file_new.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_file_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"httpd_host\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Should be a function\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate private buffer.\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@vlclua_httpd_file_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create HTTPd file.\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"httpd_file\00", align 1
@vlclua_httpd_file_delete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_httpd_file_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_httpd_file_new(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @luaL_checkudata(i32* %12, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i32**
  store i32** %14, i32*** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @luaL_nilorcheckstring(i32* %17, i32 3)
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @luaL_nilorcheckstring(i32* %19, i32 4)
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @luaL_nilorcheckstring(i32* %21, i32 5)
  store i8* %22, i8** %8, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_isfunction(i32* %24, i32 6)
  %26 = call i32 @luaL_argcheck(i32* %23, i32 %25, i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i64 @malloc(i32 12)
  %28 = inttoptr i64 %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %1
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_newthread(i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i1 [ false, %34 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = call i32 @luaL_ref(i32* %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @lua_xmove(i32* %56, i32 %59, i32 2)
  %61 = load i32**, i32*** %4, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @vlclua_httpd_file_callback, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = call i32* @httpd_FileNew(i32* %62, i8* %63, i8* %64, i8* %65, i8* %66, i32 %67, %struct.TYPE_4__* %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %46
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = call i32 @free(%struct.TYPE_4__* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %94

77:                                               ; preds = %46
  %78 = load i32*, i32** %3, align 8
  %79 = call i32** @lua_newuserdata(i32* %78, i32 8)
  store i32** %79, i32*** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32**, i32*** %11, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @luaL_newmetatable(i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @vlclua_httpd_file_delete, align 4
  %88 = call i32 @lua_pushcfunction(i32* %86, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_setfield(i32* %89, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %77
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @lua_setmetatable(i32* %92, i32 -2)
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %72, %31
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_nilorcheckstring(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_newthread(i32*) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32, i32) #1

declare dso_local i32* @httpd_FileNew(i32*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

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
