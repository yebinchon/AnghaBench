; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib.c_lookforfunc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib.c_lookforfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERRLIB = common dso_local global i32 0, align 4
@ERRFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @lookforfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookforfunc(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @checkclib(i32* %10, i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 42
  %22 = zext i1 %21 to i32
  %23 = call i8* @lsys_load(i32* %16, i8* %17, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @ERRLIB, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %15
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @addtoclib(i32* %29, i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @lua_pushboolean(i32* %39, i32 1)
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @lsys_sym(i32* %42, i8* %43, i8* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @ERRFUNC, align 4
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @lua_pushcfunction(i32* %51, i32* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %48, %38, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @checkclib(i32*, i8*) #1

declare dso_local i8* @lsys_load(i32*, i8*, i32) #1

declare dso_local i32 @addtoclib(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32* @lsys_sym(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
