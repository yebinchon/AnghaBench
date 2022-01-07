; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-debugchannel.c_hookf.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-debugchannel.c_hookf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tail call\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@HOOKKEY = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @hookf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hookf(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %8 = call i32 @lua_rawgetp(i32* %6, i32 %7, i32* @HOOKKEY)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_pushthread(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_rawget(i32* %11, i32 -2)
  %13 = load i64, i64* @LUA_TFUNCTION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @lua_pushstring(i32* %16, i8* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @lua_pushinteger(i32* %30, i32 %33)
  br label %38

35:                                               ; preds = %15
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushnil(i32* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_call(i32* %39, i32 2, i32 1)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_toboolean(i32* %41, i32 -1)
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pop(i32* %43, i32 1)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_yield(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

declare dso_local i32 @lua_rawgetp(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushthread(i32*) #1

declare dso_local i64 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
