; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_pointer.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Torch object expected\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Torch object, table, thread, cdata or function expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_pointer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_type(i32* %9, i32 1)
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @lua_topointer(i32* %13, i32 1)
  %15 = bitcast i8* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @luaT_pushpointer(i32* %17, i8* %18)
  store i32 1, i32* %2, align 4
  br label %83

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @luaT_iscdata(i32* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i8** @lua_touserdata(i32* %25, i32 1)
  store i8** %26, i8*** %5, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @luaT_pushpointer(i32* %27, i8* %30)
  store i32 1, i32* %2, align 4
  br label %83

32:                                               ; preds = %20
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @lua_isuserdata(i32* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @luaT_typename(i32* %38, i32 1)
  %40 = call i32 @luaL_argcheck(i32* %37, i32 %39, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = call i8** @lua_touserdata(i32* %41, i32 1)
  store i8** %42, i8*** %6, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @luaT_pushpointer(i32* %43, i8* %45)
  store i32 1, i32* %2, align 4
  br label %83

47:                                               ; preds = %32
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @lua_istable(i32* %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @lua_isthread(i32* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @lua_isfunction(i32* %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51, %47
  %60 = load i32*, i32** %3, align 8
  %61 = call i8* @lua_topointer(i32* %60, i32 1)
  store i8* %61, i8** %7, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @luaT_pushpointer(i32* %62, i8* %63)
  store i32 1, i32* %2, align 4
  br label %83

65:                                               ; preds = %55
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @lua_isstring(i32* %66, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = call i8* @lua_tostring(i32* %70, i32 1)
  store i8* %71, i8** %8, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @luaT_pushpointer(i32* %72, i8* %73)
  store i32 1, i32* %2, align 4
  br label %83

75:                                               ; preds = %65
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @luaL_error(i32* %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %69, %59, %36, %24, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_topointer(i32*, i32) #1

declare dso_local i32 @luaT_pushpointer(i32*, i8*) #1

declare dso_local i64 @luaT_iscdata(i32*, i32) #1

declare dso_local i8** @lua_touserdata(i32*, i32) #1

declare dso_local i64 @lua_isuserdata(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaT_typename(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i64 @lua_isthread(i32*, i32) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
