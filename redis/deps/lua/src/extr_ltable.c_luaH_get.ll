; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ltable.c_luaH_get.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ltable.c_luaH_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_get(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @ttype(i32* %9)
  switch i32 %10, label %35 [
    i32 130, label %11
    i32 128, label %13
    i32 129, label %18
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %12, i32** %3, align 8
  br label %57

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @rawtsvalue(i32* %15)
  %17 = call i32* @luaH_getstr(i32* %14, i32 %16)
  store i32* %17, i32** %3, align 8
  br label %57

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @nvalue(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @lua_number2int(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cast_num(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @nvalue(i32* %26)
  %28 = call i32 @luai_numeq(i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32* @luaH_getnum(i32* %31, i32 %32)
  store i32* %33, i32** %3, align 8
  br label %57

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @mainposition(i32* %36, i32* %37)
  store i32* %38, i32** %8, align 8
  br label %39

39:                                               ; preds = %52, %35
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @key2tval(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @luaO_rawequalObj(i32 %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @gval(i32* %46)
  store i32* %47, i32** %3, align 8
  br label %57

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @gnext(i32* %49)
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %39, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %56, i32** %3, align 8
  br label %57

57:                                               ; preds = %55, %45, %30, %13, %11
  %58 = load i32*, i32** %3, align 8
  ret i32* %58
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32* @luaH_getstr(i32*, i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @lua_number2int(i32, i32) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @cast_num(i32) #1

declare dso_local i32* @luaH_getnum(i32*, i32) #1

declare dso_local i32* @mainposition(i32*, i32*) #1

declare dso_local i32 @luaO_rawequalObj(i32, i32*) #1

declare dso_local i32 @key2tval(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
