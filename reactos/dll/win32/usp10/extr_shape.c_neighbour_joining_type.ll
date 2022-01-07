; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_neighbour_joining_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_neighbour_joining_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@jtR = common dso_local global i64 0, align 8
@jtU = common dso_local global i64 0, align 8
@jtL = common dso_local global i64 0, align 8
@jtT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, i32, %struct.TYPE_3__*)* @neighbour_joining_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @neighbour_joining_type(i32 %0, i32 %1, i64* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @jtR, align 8
  store i64 %22, i64* %6, align 8
  br label %64

23:                                               ; preds = %16
  %24 = load i64, i64* @jtU, align 8
  store i64 %24, i64* %6, align 8
  br label %64

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @jtL, align 8
  store i64 %37, i64* %6, align 8
  br label %64

38:                                               ; preds = %31
  %39 = load i64, i64* @jtU, align 8
  store i64 %39, i64* %6, align 8
  br label %64

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @jtT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = call i64 @neighbour_joining_type(i32 %52, i32 %53, i64* %54, i32 %55, %struct.TYPE_3__* %56)
  store i64 %57, i64* %6, align 8
  br label %64

58:                                               ; preds = %40
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %58, %51, %38, %36, %23, %21
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
