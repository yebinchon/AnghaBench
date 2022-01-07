; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_ll_loadfunc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_package.c_ll_loadfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE_ERR_LIB = common dso_local global i32 0, align 4
@SYMPREFIX_CF = common dso_local global i32 0, align 4
@SYMPREFIX_BC = common dso_local global i32 0, align 4
@LJ_MAX_BUF = common dso_local global i32 0, align 4
@PACKAGE_ERR_LOAD = common dso_local global i32 0, align 4
@PACKAGE_ERR_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @ll_loadfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_loadfunc(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8** @ll_register(i32* %14, i8* %15)
  store i8** %16, i8*** %10, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 42
  %27 = zext i1 %26 to i32
  %28 = call i8* @ll_load(i32* %21, i8* %22, i32 %27)
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %20, %4
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PACKAGE_ERR_LIB, align 4
  store i32 %35, i32* %5, align 4
  br label %95

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 42
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @lua_pushboolean(i32* %42, i32 1)
  store i32 0, i32* %5, align 4
  br label %95

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  br label %54

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @SYMPREFIX_CF, align 4
  %53 = call i8* @mksymname(i32* %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i8* [ %48, %47 ], [ %53, %49 ]
  store i8* %55, i8** %11, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i8**, i8*** %10, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @ll_sym(i32* %56, i8* %58, i8* %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @lua_pushcfunction(i32* %64, i64 %65)
  store i32 0, i32* %5, align 4
  br label %95

67:                                               ; preds = %54
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %67
  %71 = load i8**, i8*** %10, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @SYMPREFIX_BC, align 4
  %76 = call i8* @mksymname(i32* %73, i8* %74, i32 %75)
  %77 = call i8* @ll_bcsym(i8* %72, i8* %76)
  store i8* %77, i8** %13, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @lua_pop(i32* %78, i32 1)
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* @LJ_MAX_BUF, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @luaL_loadbuffer(i32* %83, i8* %84, i32 %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @PACKAGE_ERR_LOAD, align 4
  store i32 %90, i32* %5, align 4
  br label %95

91:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %95

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* @PACKAGE_ERR_FUNC, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %91, %89, %63, %41, %34
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i8** @ll_register(i32*, i8*) #1

declare dso_local i8* @ll_load(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i8* @mksymname(i32*, i8*, i32) #1

declare dso_local i64 @ll_sym(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i64) #1

declare dso_local i8* @ll_bcsym(i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
