; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_sort_active.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_sort_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__**, i32)* @sort_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_active(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 14
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %26

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 3, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 3
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 3
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %11
  br label %27

27:                                               ; preds = %87, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %84, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %61, %35
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br label %59

59:                                               ; preds = %47, %44
  %60 = phi i1 [ false, %44 ], [ %58, %47 ]
  br i1 %60, label %61, label %76

61:                                               ; preds = %59
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %67, i64 %71
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %44

76:                                               ; preds = %59
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 %82
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %83, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %31

87:                                               ; preds = %31
  %88 = load i32, i32* %5, align 4
  %89 = sdiv i32 %88, 3
  store i32 %89, i32* %5, align 4
  br label %27

90:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
