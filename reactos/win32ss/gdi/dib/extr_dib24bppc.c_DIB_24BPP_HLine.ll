; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bppc.c_DIB_24BPP_HLine.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bppc.c_DIB_24BPP_HLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_24BPP_HLine(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %55

39:                                               ; preds = %5
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = ashr i32 %49, 16
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32* %53, i32** %12, align 8
  br label %40

54:                                               ; preds = %40
  br label %133

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %61, %55
  %57 = load i32*, i32** %12, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = and i32 %58, 3
  %60 = icmp ne i32 0, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 16
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32* %70, i32** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %13, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 16777215
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 24
  %79 = or i32 %76, %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, 8
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %82, %84
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 16
  %91 = or i32 %88, %90
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sdiv i32 %93, 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %111, %73
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %12, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32* %100, i32** %12, align 8
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  store i32* %105, i32** %12, align 8
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32* %110, i32** %12, align 8
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %15, align 4
  %114 = icmp ne i32 0, %113
  br i1 %114, label %95, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, 3
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %122, %115
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %13, align 4
  %121 = icmp ne i32 0, %119
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load i32*, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32* %126, i32** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = ashr i32 %127, 16
  %129 = load i32*, i32** %12, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32* %131, i32** %12, align 8
  br label %118

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %54
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
