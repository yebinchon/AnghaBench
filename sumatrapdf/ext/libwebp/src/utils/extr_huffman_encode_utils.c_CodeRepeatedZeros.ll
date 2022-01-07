; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_CodeRepeatedZeros.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_CodeRepeatedZeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, %struct.TYPE_4__*)* @CodeRepeatedZeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @CodeRepeatedZeros(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %63, %2
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %64

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %4, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %13

27:                                               ; preds = %13
  br label %64

28:                                               ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 11
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 17, i32* %33, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 1
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %4, align 8
  br label %64

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 139
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 18, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 11
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 1
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %4, align 8
  br label %64

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 18, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 127, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 1
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %4, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 138
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  br label %6

64:                                               ; preds = %43, %31, %27, %6
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
