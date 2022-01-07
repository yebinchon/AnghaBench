; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lobject.c_luaO_arith.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lobject.c_luaO_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaO_arith(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %36 [
    i32 134, label %9
    i32 129, label %13
    i32 131, label %17
    i32 133, label %21
    i32 132, label %25
    i32 130, label %29
    i32 128, label %33
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @luai_numadd(i32* null, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @luai_numsub(i32* null, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @luai_nummul(i32* null, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @luai_numdiv(i32* null, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @luai_nummod(i32* null, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @luai_numpow(i32* null, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @luai_numunm(i32* null, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %3
  %37 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %33, %29, %25, %21, %17, %13, %9
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @luai_numadd(i32*, i32, i32) #1

declare dso_local i32 @luai_numsub(i32*, i32, i32) #1

declare dso_local i32 @luai_nummul(i32*, i32, i32) #1

declare dso_local i32 @luai_numdiv(i32*, i32, i32) #1

declare dso_local i32 @luai_nummod(i32*, i32, i32) #1

declare dso_local i32 @luai_numpow(i32*, i32, i32) #1

declare dso_local i32 @luai_numunm(i32*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
