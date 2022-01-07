; ModuleID = '/home/carl/AnghaBench/torch7/extr_utils.c_torch_getdefaulttensortype.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_utils.c_torch_getdefaulttensortype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Tensor\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @torch_getdefaulttensortype(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_getglobal(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @lua_istable(i32* %7, i32 -1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_getfield(i32* %11, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_istable(i32* %13, i32 -1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_getmetatable(i32* %17, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pushstring(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_rawget(i32* %23, i32 -2)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @lua_istable(i32* %25, i32 -1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %31 = call i32 @lua_rawget(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @lua_isstring(i32* %32, i32 -1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @lua_tostring(i32* %36, i32 -1)
  store i8* %37, i8** %4, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 4)
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %2, align 8
  br label %58

41:                                               ; preds = %28
  br label %45

42:                                               ; preds = %20
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pop(i32* %43, i32 4)
  store i8* null, i8** %2, align 8
  br label %58

45:                                               ; preds = %41
  br label %49

46:                                               ; preds = %16
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 2)
  store i8* null, i8** %2, align 8
  br label %58

49:                                               ; preds = %45
  br label %53

50:                                               ; preds = %10
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_pop(i32* %51, i32 2)
  store i8* null, i8** %2, align 8
  br label %58

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %1
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_pop(i32* %55, i32 1)
  store i8* null, i8** %2, align 8
  br label %58

57:                                               ; preds = %53
  store i8* null, i8** %2, align 8
  br label %58

58:                                               ; preds = %57, %54, %50, %46, %42, %35
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
