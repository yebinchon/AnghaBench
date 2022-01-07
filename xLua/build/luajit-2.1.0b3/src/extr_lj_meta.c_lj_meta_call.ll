; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_call.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM_call = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_meta_call(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @MM_call, align 4
  %12 = call i32* @lj_meta_lookup(i32* %9, i32* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @tvisfunc(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lj_err_optype_call(i32* %17, i32* %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %36, %20
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @LJ_FR2, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = icmp ugt i32* %23, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 -1
  %35 = call i32 @copyTV(i32* %31, i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 -1
  store i32* %38, i32** %8, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* @LJ_FR2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @copyTV(i32* %43, i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @copyTV(i32* %49, i32* %50, i32* %51)
  ret void
}

declare dso_local i32* @lj_meta_lookup(i32*, i32*, i32) #1

declare dso_local i32 @tvisfunc(i32*) #1

declare dso_local i32 @lj_err_optype_call(i32*, i32*) #1

declare dso_local i32 @copyTV(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
