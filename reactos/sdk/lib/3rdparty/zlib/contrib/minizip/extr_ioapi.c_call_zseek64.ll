; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/zlib/contrib/minizip/extr_ioapi.c_call_zseek64.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/zlib/contrib/minizip/extr_ioapi.c_call_zseek64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32, i32, i64, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32, i64, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @call_zseek64(%struct.TYPE_5__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %13, align 8
  %15 = icmp ne i64 (i32, i32, i64, i32)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 %20(i32 %24, i32 %25, i64 %26, i32 %27)
  store i64 %28, i64* %5, align 8
  br label %47

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 -1, i64* %5, align 8
  br label %47

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64 (i32, i32, i64, i32)*, i64 (i32, i32, i64, i32)** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 %38(i32 %42, i32 %43, i64 %44, i32 %45)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %35, %34, %16
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
