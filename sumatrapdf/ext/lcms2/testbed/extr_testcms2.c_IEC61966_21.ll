; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IEC61966_21.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IEC61966_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @IEC61966_21 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IEC61966_21(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pow(i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %31

30:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
