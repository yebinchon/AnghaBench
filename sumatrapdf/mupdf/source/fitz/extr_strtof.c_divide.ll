; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_divide.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64, i32, i64)* @divide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @divide(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_5__* %6 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  store i32 %0, i32* %12, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  %14 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 0
  store i32 %2, i32* %15, align 8
  %16 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %18, %20
  %22 = sub nsw i64 %21, 32
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %27, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ule i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %47

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %56 = load { i32, i64 }, { i32, i64 }* %55, align 8
  ret { i32, i64 } %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
