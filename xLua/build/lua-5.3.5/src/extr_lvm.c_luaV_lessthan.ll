; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lvm.c_luaV_lessthan.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lvm.c_luaV_lessthan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TM_LT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_lessthan(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @ttisnumber(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @ttisnumber(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @LTnum(i32* %17, i32* %18)
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %12, %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @ttisstring(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @ttisstring(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @tsvalue(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @tsvalue(i32* %31)
  %33 = call i64 @l_strcmp(i32 %30, i32 %32)
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %24, %20
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @TM_LT, align 4
  %41 = call i32 @luaT_callorderTM(i32* %37, i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @luaG_ordererror(i32* %44, i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %43, %36
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %28, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @LTnum(i32*, i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i64 @l_strcmp(i32, i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32 @luaT_callorderTM(i32*, i32*, i32*, i32) #1

declare dso_local i32 @luaG_ordererror(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
