; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_mark_root_table.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_mark_root_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[KEY]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @mark_root_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_root_table(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @lua_pushnil(i32* %8)
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @lua_next(i32* %11, i32 -2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* @LUA_TTABLE, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @lua_type(i32* %18, i32 -1)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 -2)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lua_topointer(i32* %25, i32 -2)
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @lua_tostring(i32* %27, i32 -1)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @make_root(i32* %24, i32 %26, i8* %28, i32 %29, i32* null, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @mark_table(i32* %33, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @lua_pop(i32* %36, i32 1)
  br label %49

38:                                               ; preds = %14
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_topointer(i32* %40, i32 -1)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @make_root(i32* %39, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %42, i32* null, i32 0)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @mark_object(i32* %44, i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %38, %21
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @lua_pop(i32* %50, i32 1)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @lua_topointer(i32* %53, i32 -1)
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* @LUA_TTABLE, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @lua_type(i32* %57, i32 -1)
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @make_root(i32* %52, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32* null, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @mark_object(i32* %62, i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @lua_pop(i32* %65, i32 1)
  br label %10

67:                                               ; preds = %10
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @make_root(i32*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @mark_table(i32*, i32*) #1

declare dso_local i32 @mark_object(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
