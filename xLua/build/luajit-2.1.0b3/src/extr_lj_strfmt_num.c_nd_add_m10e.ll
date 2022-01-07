; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_add_m10e.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_add_m10e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ndigits_dec_threshold = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @nd_add_m10e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_add_m10e(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 9
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** @ndigits_dec_threshold, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 9
  %23 = sub nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %18, %27
  store i32 %28, i32* %10, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 8
  %32 = sdiv i32 %31, 9
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 64, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** @ndigits_dec_threshold, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 9
  %40 = sub nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %35, %44
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %29, %15
  br label %47

47:                                               ; preds = %92, %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sge i32 %55, 1000000000
  %57 = zext i1 %56 to i32
  %58 = call i64 @LJ_UNLIKELY(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %61, 1000000000
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @LJ_UNLIKELY(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = and i32 %76, 63
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 1, i32* %81, align 4
  br label %93

82:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = and i32 %84, 63
  store i32 %85, i32* %9, align 4
  br label %92

86:                                               ; preds = %47
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %93

92:                                               ; preds = %82
  br label %47

93:                                               ; preds = %86, %74
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @LJ_UNLIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
