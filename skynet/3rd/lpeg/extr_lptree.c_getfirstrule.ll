; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_getfirstrule.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_getfirstrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"grammar has no initial rule\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"initial rule '%s' is not a pattern\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @getfirstrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfirstrule(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_rawgeti(i32* %7, i32 %8, i32 1)
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @lua_isstring(i32* %10, i32 -1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_pushvalue(i32* %14, i32 -1)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lua_gettable(i32* %16, i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lua_pushinteger(i32* %20, i32 1)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_insert(i32* %22, i32 -2)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @testpattern(i32* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @lua_isnil(i32* %29, i32 -1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 (i32*, i8*, ...) @luaL_error(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @lua_tostring(i32* %37, i32 -2)
  %39 = call i32 (i32*, i8*, ...) @luaL_error(i32* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @lua_pushvalue(i32* %42, i32 -2)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @lua_pushinteger(i32* %44, i32 1)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @lua_settable(i32* %46, i32 %47)
  ret void
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @testpattern(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
