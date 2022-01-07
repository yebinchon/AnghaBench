; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_isequal.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_isequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Torch object expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_isequal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @lua_isuserdata(i32* %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @lua_isuserdata(i32* %9, i32 2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @luaT_typename(i32* %14, i32 1)
  %16 = call i32 @luaL_argcheck(i32* %13, i32 %15, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaT_typename(i32* %18, i32 2)
  %20 = call i32 @luaL_argcheck(i32* %17, i32 %19, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i8** @lua_touserdata(i32* %21, i32 1)
  store i8** %22, i8*** %3, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i8** @lua_touserdata(i32* %23, i32 2)
  store i8** %24, i8*** %4, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %12
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushboolean(i32* %31, i32 1)
  br label %36

33:                                               ; preds = %12
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushboolean(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %30
  br label %54

37:                                               ; preds = %8, %1
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @lua_istable(i32* %38, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @lua_istable(i32* %42, i32 2)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_rawequal(i32* %47, i32 1, i32 2)
  %49 = call i32 @lua_pushboolean(i32* %46, i32 %48)
  br label %53

50:                                               ; preds = %41, %37
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_pushboolean(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %36
  ret i32 1
}

declare dso_local i64 @lua_isuserdata(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaT_typename(i32*, i32) #1

declare dso_local i8** @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_rawequal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
