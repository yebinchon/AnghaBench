; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_typename.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaT_typename(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @luaT_iscdata(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @luaT_cdataname(i32* %12, i32 %13, i32* null)
  store i8* %14, i8** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @lua_getmetatable(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = call i32 @lua_rawget(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @lua_isstring(i32* %24, i32 -1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @lua_tostring(i32* %28, i32 -1)
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 1)
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %3, align 8
  br label %36

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %30, %11
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i64 @luaT_iscdata(i32*, i32) #1

declare dso_local i8* @luaT_cdataname(i32*, i32, i32*) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

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
