; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_make_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_make_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, i32, i32, i32)* @make_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @make_color(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %21

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 255, %16 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 255, %30 ], [ %32, %31 ]
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 255, %44 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi i32 [ 0, %40 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 255
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 255, %58 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi i32 [ 0, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %67 = load { i64, i64 }, { i64, i64 }* %66, align 4
  ret { i64, i64 } %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
