; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ltable.c_unbound_search.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ltable.c_unbound_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MAXINTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @unbound_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbound_search(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @luaH_getint(i32* %12, i32 %13)
  %15 = call i64 @ttisnil(i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LUA_MAXINTEGER, align 4
  %22 = call i32 @l_castS2U(i32 %21)
  %23 = sdiv i32 %22, 2
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @luaH_getint(i32* %27, i32 %28)
  %30 = call i64 @ttisnil(i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %5, align 4
  br label %11

42:                                               ; preds = %11
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %7, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @luaH_getint(i32* %53, i32 %54)
  %56 = call i64 @ttisnil(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @ttisnil(i32) #1

declare dso_local i32 @luaH_getint(i32*, i32) #1

declare dso_local i32 @l_castS2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
