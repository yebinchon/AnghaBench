; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_timefn.c_UTIL_getSpanTime.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_timefn.c_UTIL_getSpanTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i32, i64, i32)* @UTIL_getSpanTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @UTIL_getSpanTime(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = bitcast %struct.TYPE_5__* %6 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1000000000
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  br label %47

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %36, %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %34, %19
  %48 = bitcast %struct.TYPE_5__* %5 to { i64, i32 }*
  %49 = load { i64, i32 }, { i64, i32 }* %48, align 8
  ret { i64, i32 } %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
