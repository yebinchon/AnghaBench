; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_clib.c_clib_loadlib.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_clib.c_clib_loadlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@RTLD_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32)* @clib_loadlib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clib_loadlib(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @clib_extname(i32* %11, i8* %12)
  %14 = load i32, i32* @RTLD_LAZY, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RTLD_GLOBAL, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @RTLD_LOCAL, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = or i32 %14, %22
  %24 = call i8* @dlopen(i8* %13, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %74, label %27

27:                                               ; preds = %21
  %28 = call i8* (...) @dlerror()
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %70

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 58)
  store i8* %35, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @lj_str_new(i32* %39, i8* %40, i32 %46)
  %48 = call i32 @strdata(i32 %47)
  %49 = call i8* @clib_resolve_lds(i32* %38, i32 %48)
  store i8* %49, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %37
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @RTLD_LAZY, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @RTLD_GLOBAL, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @RTLD_LOCAL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = or i32 %53, %61
  %63 = call i8* @dlopen(i8* %52, i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %4, align 8
  br label %76

68:                                               ; preds = %60
  %69 = call i8* (...) @dlerror()
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %68, %37, %33, %27
  %71 = load i32*, i32** %5, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @lj_err_callermsg(i32* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %21
  %75 = load i8*, i8** %8, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %74, %66
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i8* @clib_extname(i32*, i8*) #1

declare dso_local i8* @dlerror(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @clib_resolve_lds(i32*, i32) #1

declare dso_local i32 @strdata(i32) #1

declare dso_local i32 @lj_str_new(i32*, i8*, i32) #1

declare dso_local i32 @lj_err_callermsg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
