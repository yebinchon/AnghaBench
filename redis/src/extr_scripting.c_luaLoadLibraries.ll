; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLoadLibraries.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLoadLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@luaopen_base = common dso_local global i32 0, align 4
@LUA_TABLIBNAME = common dso_local global i8* null, align 8
@luaopen_table = common dso_local global i32 0, align 4
@LUA_STRLIBNAME = common dso_local global i8* null, align 8
@luaopen_string = common dso_local global i32 0, align 4
@LUA_MATHLIBNAME = common dso_local global i8* null, align 8
@luaopen_math = common dso_local global i32 0, align 4
@LUA_DBLIBNAME = common dso_local global i8* null, align 8
@luaopen_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cjson\00", align 1
@luaopen_cjson = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@luaopen_struct = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"cmsgpack\00", align 1
@luaopen_cmsgpack = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@luaopen_bit = common dso_local global i32 0, align 4
@LUA_LOADLIBNAME = common dso_local global i8* null, align 8
@LUA_OSLIBNAME = common dso_local global i8* null, align 8
@luaopen_os = common dso_local global i32 0, align 4
@luaopen_package = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaLoadLibraries(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @luaopen_base, align 4
  %5 = call i32 @luaLoadLib(i32* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i8*, i8** @LUA_TABLIBNAME, align 8
  %8 = load i32, i32* @luaopen_table, align 4
  %9 = call i32 @luaLoadLib(i32* %6, i8* %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i8*, i8** @LUA_STRLIBNAME, align 8
  %12 = load i32, i32* @luaopen_string, align 4
  %13 = call i32 @luaLoadLib(i32* %10, i8* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** @LUA_MATHLIBNAME, align 8
  %16 = load i32, i32* @luaopen_math, align 4
  %17 = call i32 @luaLoadLib(i32* %14, i8* %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i8*, i8** @LUA_DBLIBNAME, align 8
  %20 = load i32, i32* @luaopen_debug, align 4
  %21 = call i32 @luaLoadLib(i32* %18, i8* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @luaopen_cjson, align 4
  %24 = call i32 @luaLoadLib(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @luaopen_struct, align 4
  %27 = call i32 @luaLoadLib(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @luaopen_cmsgpack, align 4
  %30 = call i32 @luaLoadLib(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @luaopen_bit, align 4
  %33 = call i32 @luaLoadLib(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @luaLoadLib(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
