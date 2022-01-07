; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_buffer.c_fz_append_bits.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_buffer.c_fz_append_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_append_bits(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %116

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 7, %23
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @fz_ensure_buffer(i32* %26, %struct.TYPE_4__* %27, i32 %32)
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %43, %44
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 0, %48
  %50 = lshr i32 %47, %49
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %45, %42 ], [ %50, %46 ]
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %52
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %116

72:                                               ; preds = %51
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %34
  br label %76

76:                                               ; preds = %79, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %77, 8
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 8
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %84, i32* %93, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 8, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %100, %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  store i32 %102, i32* %111, align 4
  br label %112

112:                                              ; preds = %97, %94
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %66, %13
  ret void
}

declare dso_local i32 @fz_ensure_buffer(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
