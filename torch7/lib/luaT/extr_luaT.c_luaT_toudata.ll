; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_toudata.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_toudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"Torch internal problem: cannot find metatable for type <%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaT_toudata(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8** @lua_touserdata(i32* %9, i32 %10)
  store i8** %11, i8*** %8, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @luaT_pushmetatable(i32* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  %34 = call i32 @lua_pushvalue(i32* %24, i32 %33)
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @lua_getmetatable(i32* %36, i32 -1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @lua_remove(i32* %40, i32 -2)
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @lua_rawequal(i32* %42, i32 -1, i32 -2)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @lua_pop(i32* %46, i32 2)
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %4, align 8
  br label %55

50:                                               ; preds = %39
  br label %35

51:                                               ; preds = %35
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @lua_pop(i32* %52, i32 2)
  br label %54

54:                                               ; preds = %51, %3
  store i8* null, i8** %4, align 8
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i8** @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaT_pushmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i64 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
