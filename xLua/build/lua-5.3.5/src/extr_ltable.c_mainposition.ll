; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltable.c_mainposition.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltable.c_mainposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @mainposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mainposition(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @ttype(i32* %6)
  switch i32 %7, label %45 [
    i32 129, label %8
    i32 130, label %13
    i32 128, label %19
    i32 131, label %24
    i32 134, label %30
    i32 132, label %35
    i32 133, label %40
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ivalue(i32* %10)
  %12 = call i32* @hashint(i32* %9, i32 %11)
  store i32* %12, i32** %3, align 8
  br label %56

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @fltvalue(i32* %15)
  %17 = call i32 @l_hashfloat(i32 %16)
  %18 = call i32* @hashmod(i32* %14, i32 %17)
  store i32* %18, i32** %3, align 8
  br label %56

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tsvalue(i32* %21)
  %23 = call i32* @hashstr(i32* %20, i32 %22)
  store i32* %23, i32** %3, align 8
  br label %56

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @tsvalue(i32* %26)
  %28 = call i32 @luaS_hashlongstr(i32 %27)
  %29 = call i32* @hashpow2(i32* %25, i32 %28)
  store i32* %29, i32** %3, align 8
  br label %56

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @bvalue(i32* %32)
  %34 = call i32* @hashboolean(i32* %31, i32 %33)
  store i32* %34, i32** %3, align 8
  br label %56

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @pvalue(i32* %37)
  %39 = call i32* @hashpointer(i32* %36, i32 %38)
  store i32* %39, i32** %3, align 8
  br label %56

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @fvalue(i32* %42)
  %44 = call i32* @hashpointer(i32* %41, i32 %43)
  store i32* %44, i32** %3, align 8
  br label %56

45:                                               ; preds = %2
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ttisdeadkey(i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @lua_assert(i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @gcvalue(i32* %53)
  %55 = call i32* @hashpointer(i32* %52, i32 %54)
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %45, %40, %35, %30, %24, %19, %13, %8
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32* @hashint(i32*, i32) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32* @hashmod(i32*, i32) #1

declare dso_local i32 @l_hashfloat(i32) #1

declare dso_local i32 @fltvalue(i32*) #1

declare dso_local i32* @hashstr(i32*, i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32* @hashpow2(i32*, i32) #1

declare dso_local i32 @luaS_hashlongstr(i32) #1

declare dso_local i32* @hashboolean(i32*, i32) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32* @hashpointer(i32*, i32) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local i32 @fvalue(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttisdeadkey(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
