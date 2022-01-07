; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_TrancendentalTransform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_TrancendentalTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmstransform_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct._cmstransform_struct*, i8*, i8*, i64, i64)* @TrancendentalTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrancendentalTransform(i32 %0, %struct._cmstransform_struct* %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._cmstransform_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cmstransform_struct* %1, %struct._cmstransform_struct** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %23, %6
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 66, i32* %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %13, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %13, align 8
  br label %14

26:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
