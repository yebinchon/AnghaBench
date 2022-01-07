; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lobject.c_numarith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lobject.c_numarith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @numarith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numarith(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %53 [
    i32 135, label %12
    i32 129, label %17
    i32 131, label %22
    i32 134, label %27
    i32 130, label %32
    i32 133, label %37
    i32 128, label %42
    i32 132, label %46
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @luai_numadd(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @luai_numsub(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @luai_nummul(i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @luai_numdiv(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %55

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @luai_numpow(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @luai_numidiv(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %55

42:                                               ; preds = %4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @luai_numunm(i32* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %55

46:                                               ; preds = %4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @luai_nummod(i32* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %4
  %54 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %46, %42, %37, %32, %27, %22, %17, %12
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @luai_numadd(i32*, i32, i32) #1

declare dso_local i32 @luai_numsub(i32*, i32, i32) #1

declare dso_local i32 @luai_nummul(i32*, i32, i32) #1

declare dso_local i32 @luai_numdiv(i32*, i32, i32) #1

declare dso_local i32 @luai_numpow(i32*, i32, i32) #1

declare dso_local i32 @luai_numidiv(i32*, i32, i32) #1

declare dso_local i32 @luai_numunm(i32*, i32) #1

declare dso_local i32 @luai_nummod(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
