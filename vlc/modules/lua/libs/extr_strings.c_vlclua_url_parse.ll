; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_url_parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_url_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_url_parse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 1)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @vlc_UrlParse(%struct.TYPE_4__* %4, i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_newtable(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lua_pushstring(i32* %11, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_setfield(i32* %15, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lua_pushstring(i32* %17, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_setfield(i32* %21, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lua_pushstring(i32* %23, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_setfield(i32* %27, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lua_pushstring(i32* %29, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_setfield(i32* %33, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lua_pushinteger(i32* %35, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_setfield(i32* %39, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lua_pushstring(i32* %41, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @lua_setfield(i32* %45, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lua_pushstring(i32* %47, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_setfield(i32* %51, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 @vlc_UrlClean(%struct.TYPE_4__* %4)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
