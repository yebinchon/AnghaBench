; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_si.c_EITDecodeMjd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_si.c_EITDecodeMjd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @EITDecodeMjd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EITDecodeMjd(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  %14 = fsub double %13, 1.507820e+04
  %15 = fdiv double %14, 3.652500e+02
  %16 = fptosi double %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = fsub double %18, 1.495610e+04
  %20 = load i32, i32* %9, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %21, 3.652500e+02
  %23 = fptosi double %22 to i32
  %24 = sitofp i32 %23 to double
  %25 = fsub double %19, %24
  %26 = fdiv double %25, 3.060010e+01
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 14
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 15
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i1 [ true, %4 ], [ %32, %30 ]
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 1900, %37
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 1
  %41 = add nsw i32 %38, %40
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 12
  %47 = sub nsw i32 %44, %46
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 14956
  %51 = load i32, i32* %9, align 4
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 3.652500e+02
  %54 = fptosi double %53 to i32
  %55 = sub nsw i32 %50, %54
  %56 = load i32, i32* %10, align 4
  %57 = sitofp i32 %56 to double
  %58 = fmul double %57, 3.060010e+01
  %59 = fptosi double %58 to i32
  %60 = sub nsw i32 %55, %59
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
