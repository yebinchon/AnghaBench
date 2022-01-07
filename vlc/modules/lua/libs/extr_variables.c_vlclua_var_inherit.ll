; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_inherit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_var_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LUA_TNIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"vlc_object\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_var_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_var_inherit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @lua_type(i32* %9, i32 1)
  %11 = load i64, i64* @LUA_TNIL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @vlclua_get_this(i32* %14)
  store i32* %15, i32** %5, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32** @luaL_checkudata(i32* %17, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32** %18, i32*** %6, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @luaL_checkstring(i32* %22, i32 2)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @config_GetType(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @var_Inherit(i32* %26, i8* %27, i32 %28, %struct.TYPE_4__* %4)
  %30 = load i64, i64* @VLC_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %49

33:                                               ; preds = %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 2)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vlclua_pushvalue(i32* %36, i32 %37, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @VLC_VAR_STRING, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  br label %48

48:                                               ; preds = %44, %33
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i32** @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @config_GetType(i8*) #1

declare dso_local i64 @var_Inherit(i32*, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @vlclua_pushvalue(i32*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
