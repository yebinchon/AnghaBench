; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_version.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"__version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_version(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @luaL_checkany(i32* %5, i32 1)
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaT_iscdata(i32* %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaT_cdataname(i32* %11, i32 1, i32* null)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @luaT_pushmetatable(i32* %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushstring(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_rawget(i32* %21, i32 -2)
  store i32 1, i32* %2, align 4
  br label %35

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @lua_getmetatable(i32* %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushstring(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_rawget(i32* %31, i32 -2)
  store i32 1, i32* %2, align 4
  br label %35

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28, %23, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @luaT_iscdata(i32*, i32) #1

declare dso_local i8* @luaT_cdataname(i32*, i32, i32*) #1

declare dso_local i32 @luaT_pushmetatable(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
