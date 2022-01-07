; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_global_select.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_global_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @global_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @global_select(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i64, i64* @SOCKET_INVALID, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call double @luaL_optnumber(i32* %15, i32 3, i32 -1)
  store double %16, double* %13, align 8
  %17 = call i32 @FD_ZERO(i32* %10)
  %18 = call i32 @FD_ZERO(i32* %11)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_settop(i32* %19, i32 3)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_newtable(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_gettop(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_newtable(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_gettop(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_newtable(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_gettop(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @collect_fd(i32* %33, i32 1, i32 %34, i32* %10, i64* %9)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @collect_fd(i32* %36, i32 2, i32 %37, i32* %11, i64* %9)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @check_dirty(i32* %39, i32 1, i32 %40, i32* %10)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %47

45:                                               ; preds = %1
  %46 = load double, double* %13, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi double [ 0.000000e+00, %44 ], [ %46, %45 ]
  store double %48, double* %13, align 8
  %49 = load double, double* %13, align 8
  %50 = call i32 @timeout_init(i32* %12, double %49, i32 -1)
  %51 = call i32 @timeout_markstart(i32* %12)
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @socket_select(i64 %53, i32* %10, i32* %11, i32* null, i32* %12)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %57, %47
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @return_fd(i32* %61, i32* %10, i64 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @return_fd(i32* %68, i32* %11, i64 %70, i32 %71, i32 %72, i32 0)
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @make_assoc(i32* %74, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @make_assoc(i32* %77, i32 %78)
  store i32 2, i32* %2, align 4
  br label %89

80:                                               ; preds = %57
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_pushstring(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %2, align 4
  br label %89

86:                                               ; preds = %80
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @luaL_error(i32* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 3, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %83, %60
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local double @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @collect_fd(i32*, i32, i32, i32*, i64*) #1

declare dso_local i32 @check_dirty(i32*, i32, i32, i32*) #1

declare dso_local i32 @timeout_init(i32*, double, i32) #1

declare dso_local i32 @timeout_markstart(i32*) #1

declare dso_local i32 @socket_select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @return_fd(i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @make_assoc(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
