; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_cmt__newindex.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_cmt__newindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"internal error in __newindex: not a constructor table\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"internal error in __newindex: no metatable available\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"internal error in __newindex: no metaclass available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_cmt__newindex(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_istable(i32* %3, i32 1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @luaL_error(i32* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_getmetatable(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_pushstring(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_rawget(i32* %19, i32 -2)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_istable(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @luaL_error(i32* %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_insert(i32* %28, i32 2)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 1)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_rawset(i32* %32, i32 -3)
  ret i32 0
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
