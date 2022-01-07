; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcorolib.c_auxresume.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcorolib.c_auxresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@LUA_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@LUA_YIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @auxresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxresume(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @lua_checkstack(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @lua_pushliteral(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lua_status(i32* %18)
  %20 = load i32, i32* @LUA_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @lua_gettop(i32* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_pushliteral(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

29:                                               ; preds = %22, %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lua_xmove(i32* %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @lua_resume(i32* %34, i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @LUA_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @LUA_YIELD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41, %29
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @lua_gettop(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @lua_checkstack(i32* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @lua_pop(i32* %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @lua_pushliteral(i32* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

59:                                               ; preds = %45
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @lua_xmove(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %41
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @lua_xmove(i32* %66, i32* %67, i32 1)
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %59, %53, %26, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_status(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_resume(i32*, i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
