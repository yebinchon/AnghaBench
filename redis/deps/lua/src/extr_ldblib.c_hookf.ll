; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ldblib.c_hookf.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ldblib.c_hookf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tail return\00", align 1
@KEY_HOOK = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"lS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*)* @hookf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hookf(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @lua_pushlightuserdata(i8* %5, i8* bitcast (i32* @KEY_HOOK to i8*))
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %9 = call i32 @lua_rawget(i8* %7, i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @lua_pushlightuserdata(i8* %10, i8* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @lua_rawget(i8* %13, i32 -2)
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @lua_isfunction(i8* %15, i32 -1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @lua_pushstring(i8* %19, i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lua_pushinteger(i8* %33, i32 %36)
  br label %41

38:                                               ; preds = %18
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @lua_pushnil(i8* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @lua_getinfo(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %43)
  %45 = call i32 @lua_assert(i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @lua_call(i8* %46, i32 2, i32 0)
  br label %48

48:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @lua_pushlightuserdata(i8*, i8*) #1

declare dso_local i32 @lua_rawget(i8*, i32) #1

declare dso_local i64 @lua_isfunction(i8*, i32) #1

declare dso_local i32 @lua_pushstring(i8*, i8*) #1

declare dso_local i32 @lua_pushinteger(i8*, i32) #1

declare dso_local i32 @lua_pushnil(i8*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lua_getinfo(i8*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_call(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
