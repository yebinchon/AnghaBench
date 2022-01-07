; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltable.c_getgeneric.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltable.c_getgeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @getgeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getgeneric(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @mainposition(i32* %8, i32* %9)
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @gkey(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @luaV_rawequalobj(i32 %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @gval(i32* %18)
  store i32* %19, i32** %3, align 8
  br label %33

20:                                               ; preds = %11
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @gnext(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %26, i32** %3, align 8
  br label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %27
  br label %11

33:                                               ; preds = %25, %17
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32* @mainposition(i32*, i32*) #1

declare dso_local i64 @luaV_rawequalobj(i32, i32*) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
