; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_make_root.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_make_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROOT_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"used_in\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i8*, i32)* @make_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_root(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @ROOT_TABLE, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @lua_rawgetp(i32* %13, i32 %14, i8* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @lua_isnil(i32* %17, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @lua_pop(i32* %21, i32 1)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @lua_newtable(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @lua_newtable(i32* %25)
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @lua_pushboolean(i32* %30, i32 1)
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @lua_setfield(i32* %32, i32 -2, i8* %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @lua_pushstring(i32* %41, i8* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @lua_setfield(i32* %44, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @lua_pushnumber(i32* %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @lua_setfield(i32* %49, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @lua_pushvalue(i32* %52, i32 -1)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @ROOT_TABLE, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @lua_rawsetp(i32* %54, i32 %55, i8* %56)
  br label %72

58:                                               ; preds = %6
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @lua_getfield(i32* %62, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @lua_pushboolean(i32* %64, i32 1)
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @lua_setfield(i32* %66, i32 -2, i8* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @lua_pop(i32* %69, i32 1)
  br label %71

71:                                               ; preds = %61, %58
  br label %72

72:                                               ; preds = %71, %51
  ret void
}

declare dso_local i32 @lua_rawgetp(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawsetp(i32*, i32, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
