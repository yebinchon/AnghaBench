; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_joinktables.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_joinktables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @joinktables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @joinktables(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lua_getuservalue(i32* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @lua_getuservalue(i32* %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ktablelen(i32* %17, i32 -2)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ktablelen(i32* %19, i32 -1)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_pop(i32* %27, i32 2)
  br label %68

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @lp_equal(i32* %33, i32 -2, i32 -1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @lua_pop(i32* %37, i32 1)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @lua_setuservalue(i32* %39, i32 -2)
  br label %67

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @lua_setuservalue(i32* %45, i32 -3)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  br label %66

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @lua_createtable(i32* %50, i32 %53, i32 0)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @concattable(i32* %55, i32 -3, i32 -1)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @concattable(i32* %57, i32 -2, i32 -1)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @lua_setuservalue(i32* %59, i32 -4)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @lua_pop(i32* %61, i32 2)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @correctkeys(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %49, %44
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %26
  ret void
}

declare dso_local i32 @lua_getuservalue(i32*, i32) #1

declare dso_local i32 @ktablelen(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lp_equal(i32*, i32, i32) #1

declare dso_local i32 @lua_setuservalue(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @concattable(i32*, i32, i32) #1

declare dso_local i32 @correctkeys(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
