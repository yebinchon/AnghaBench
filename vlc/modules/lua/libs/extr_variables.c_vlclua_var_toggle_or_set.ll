; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_toggle_or_set.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_toggle_or_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_var_toggle_or_set(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @vlclua_error(i32* %14)
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @var_ToggleBool(i32* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @luaL_checkstring(i32* %25, i32 -1)
  store i8* %26, i8** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_pop(i32* %27, i32 1)
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %49

36:                                               ; preds = %31, %24
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %48

44:                                               ; preds = %39, %36
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @var_GetBool(i32* %45, i8* %46)
  store i32 %47, i32* %8, align 4
  br label %61

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @var_GetBool(i32* %51, i8* %52)
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @var_SetBool(i32* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60, %44, %20
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @lua_pushboolean(i32* %62, i32 %63)
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @vlclua_error(i32*) #1

declare dso_local i32 @var_ToggleBool(i32*, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @var_GetBool(i32*, i8*) #1

declare dso_local i32 @var_SetBool(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
