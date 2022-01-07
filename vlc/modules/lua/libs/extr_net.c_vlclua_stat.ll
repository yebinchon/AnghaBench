; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_net.c_vlclua_stat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_net.c_vlclua_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"access_time\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_stat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 1)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @vlc_stat(i8* %8, %struct.stat* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_newtable(i32* %13)
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushliteral(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %34

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushliteral(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %33

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushliteral(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_setfield(i32* %35, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lua_pushinteger(i32* %37, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lua_pushinteger(i32* %43, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_setfield(i32* %47, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lua_pushinteger(i32* %49, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_setfield(i32* %53, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lua_pushinteger(i32* %55, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_setfield(i32* %59, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @lua_pushinteger(i32* %61, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @lua_setfield(i32* %65, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lua_pushinteger(i32* %67, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_setfield(i32* %71, i32 -2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lua_pushinteger(i32* %73, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_setfield(i32* %77, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %34, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
