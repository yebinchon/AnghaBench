; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaH_get.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaH_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @luaH_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @luaH_get(i32* %0, i32* %1) #0 {
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
  switch i32 %10, label %34 [
    i32 0, label %11
    i32 4, label %12
    i32 3, label %17
  ]

11:                                               ; preds = %2
  store i32* @luaO_nilobject_, i32** %3, align 8
  br label %55

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @rawtsvalue(i32* %14)
  %16 = call i32* @luaH_getstr(i32* %13, i32 %15)
  store i32* %16, i32** %3, align 8
  br label %55

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @nvalue(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lua_number2int(i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cast_num(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @nvalue(i32* %25)
  %27 = call i32 @luai_numeq(i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @luaH_getnum(i32* %30, i32 %31)
  store i32* %32, i32** %3, align 8
  br label %55

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @mainposition(i32* %35, i32* %36)
  store i32* %37, i32** %8, align 8
  br label %38

38:                                               ; preds = %51, %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @key2tval(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @luaO_rawequalObj(i32 %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @gval(i32* %45)
  store i32* %46, i32** %3, align 8
  br label %55

47:                                               ; preds = %38
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @gnext(i32* %48)
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %38, label %54

54:                                               ; preds = %51
  store i32* @luaO_nilobject_, i32** %3, align 8
  br label %55

55:                                               ; preds = %54, %44, %29, %12, %11
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
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
