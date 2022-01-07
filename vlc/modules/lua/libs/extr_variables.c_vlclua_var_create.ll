; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"vlc_object\00", align 1
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_VAR_VOID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_var_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_var_create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32** @luaL_checkudata(i32* %9, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32** %10, i32*** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 2)
  store i8* %12, i8** %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_type(i32* %13, i32 3)
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 131, label %17
    i32 128, label %19
    i32 130, label %21
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_VAR_FLOAT, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_VAR_BOOL, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @VLC_VAR_STRING, align 4
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_VAR_VOID, align 4
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %21, %19, %17, %15
  %25 = load i32**, i32*** %6, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @var_Create(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @VLC_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @vlclua_push_ret(i32* %33, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @VLC_VAR_VOID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @vlclua_tovalue(i32* %42, i32 %43, i32* %8)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @var_Set(i32* %47, i8* %48, i32 %49)
  %51 = call i32 @vlclua_push_ret(i32* %45, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %41, %40, %32, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32** @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @vlclua_push_ret(i32*, i32) #1

declare dso_local i32 @vlclua_tovalue(i32*, i32, i32*) #1

declare dso_local i32 @var_Set(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
