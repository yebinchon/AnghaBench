; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c__init_env.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_main.c__init_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TSTRING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid config table\0A\00", align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid config table key = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @_init_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_env(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_pushnil(i32* %7)
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @lua_next(i32* %10, i32 -2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_type(i32* %14, i32 -2)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LUA_TSTRING, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %13
  %24 = load i32*, i32** %2, align 8
  %25 = call i8* @lua_tostring(i32* %24, i32 -2)
  store i8* %25, i8** %4, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_type(i32* %26, i32 -1)
  %28 = load i32, i32* @LUA_TBOOLEAN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_toboolean(i32* %31, i32 -1)
  store i32 %32, i32* %5, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @skynet_setenv(i8* %33, i8* %37)
  br label %53

39:                                               ; preds = %23
  %40 = load i32*, i32** %2, align 8
  %41 = call i8* @lua_tostring(i32* %40, i32 -1)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %39
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @skynet_setenv(i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %30
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @lua_pop(i32* %54, i32 1)
  br label %9

56:                                               ; preds = %9
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  ret void
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @skynet_setenv(i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
