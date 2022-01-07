; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_bson_meta.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_bson_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"bson\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@ldecode = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"makeindex\00", align 1
@lmakeindex = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@ltostring = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@llen = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@lreplace = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bson_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bson_meta(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [3 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @luaL_newmetatable(i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 16
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %11 = load i32*, i32** @ldecode, align 8
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %15 = load i32*, i32** @lmakeindex, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i8* null, i8** %17, align 16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %21 = call i32 @luaL_newlib(i32* %19, %struct.TYPE_3__* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_setfield(i32* %22, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @ltostring, align 4
  %26 = call i32 @lua_pushcfunction(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_setfield(i32* %27, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @llen, align 4
  %31 = call i32 @lua_pushcfunction(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_setfield(i32* %32, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @lreplace, align 4
  %36 = call i32 @lua_pushcfunction(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_setfield(i32* %37, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %39

39:                                               ; preds = %7, %1
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_setmetatable(i32* %40, i32 -2)
  ret void
}

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_newlib(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
