; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2.c_jbig2_alloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2.c_jbig2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (%struct.TYPE_4__*, i64)* }

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jbig2_alloc(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @SIZE_MAX, align 8
  %13 = load i64, i64* %7, align 8
  %14 = udiv i64 %12, %13
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* null, i8** %4, align 8
  br label %26

17:                                               ; preds = %10, %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8* (%struct.TYPE_4__*, i64)*, i8* (%struct.TYPE_4__*, i64)** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 %22, %23
  %25 = call i8* %20(%struct.TYPE_4__* %21, i64 %24)
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
