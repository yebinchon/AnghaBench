; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_pushudata.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_pushudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"expecting number or cdata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_pushudata(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 2)
  store i8* %6, i8** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_type(i32* %7, i32 1)
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @lua_topointer(i32* %11, i32 1)
  %13 = inttoptr i64 %12 to i8**
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  br label %38

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @luaT_iscdata(i32* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @lua_topointer(i32* %20, i32 1)
  %22 = inttoptr i64 %21 to i8**
  %23 = getelementptr inbounds i8*, i8** %22, i64 4
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %37

25:                                               ; preds = %15
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @lua_isnumber(i32* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @lua_tonumber(i32* %30, i32 1)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %3, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @luaL_argerror(i32* %34, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32*, i32** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @luaT_pushudata(i32* %39, i8* %40, i8* %41)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_topointer(i32*, i32) #1

declare dso_local i64 @luaT_iscdata(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @luaT_pushudata(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
