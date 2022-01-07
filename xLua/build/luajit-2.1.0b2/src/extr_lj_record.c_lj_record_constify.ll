; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_constify.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_constify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_record_constify(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @tvisgcv(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @gcV(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @itype2irt(i32* %13)
  %15 = call i32 @lj_ir_kgc(i32* %10, i32 %12, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @tvisint(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @intV(i32* %22)
  %24 = call i32 @lj_ir_kint(i32* %21, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @tvisnum(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @numV(i32* %31)
  %33 = call i32 @lj_ir_knumint(i32* %30, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @tvisbool(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @itype2irt(i32* %39)
  %41 = call i32 @TREF_PRI(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38, %29, %20, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @tvisgcv(i32*) #1

declare dso_local i32 @lj_ir_kgc(i32*, i32, i32) #1

declare dso_local i32 @gcV(i32*) #1

declare dso_local i32 @itype2irt(i32*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i32 @lj_ir_knumint(i32*, i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i64 @tvisbool(i32*) #1

declare dso_local i32 @TREF_PRI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
