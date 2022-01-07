; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_runcmdopt.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_runcmdopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @runcmdopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runcmdopt(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 44)
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %42

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = call i32 @lua_pushlstring(i32* %31, i8* %32, i64 %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %4, align 8
  br label %15

42:                                               ; preds = %22
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @lua_pushstring(i32* %47, i8* %48)
  br label %53

50:                                               ; preds = %42
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_pushnil(i32* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %9, %2
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @lua_pcall(i32* %56, i32 %57, i32 0, i32 0)
  %59 = call i32 @report(i32* %55, i32 %58)
  ret i32 %59
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
