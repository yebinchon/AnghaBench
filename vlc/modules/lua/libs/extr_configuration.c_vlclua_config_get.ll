; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_configuration.c_vlclua_config_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_configuration.c_vlclua_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_config_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 1)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @config_GetType(i8* %8)
  switch i32 %9, label %33 [
    i32 128, label %10
    i32 129, label %18
    i32 131, label %23
    i32 130, label %28
  ]

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @config_GetPsz(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @lua_pushstring(i32* %13, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @free(i8* %16)
  br label %36

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @config_GetInt(i8* %20)
  %22 = call i32 @lua_pushinteger(i32* %19, i32 %21)
  br label %36

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @config_GetInt(i8* %25)
  %27 = call i32 @lua_pushboolean(i32* %24, i32 %26)
  br label %36

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @config_GetFloat(i8* %30)
  %32 = call i32 @lua_pushnumber(i32* %29, i32 %31)
  br label %36

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @vlclua_error(i32* %34)
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28, %23, %18, %10
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @config_GetType(i8*) #1

declare dso_local i8* @config_GetPsz(i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @config_GetInt(i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @config_GetFloat(i8*) #1

declare dso_local i32 @vlclua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
