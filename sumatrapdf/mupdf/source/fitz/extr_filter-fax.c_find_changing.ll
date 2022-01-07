; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_find_changing.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_find_changing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mask = common dso_local global i32* null, align 8
@clz = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @find_changing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_changing(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %137

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i32 255, i32* %10, align 4
  br label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** @mask, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 1
  %41 = xor i32 %38, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 3
  %51 = load i32*, i32** @clz, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %50, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %4, align 4
  br label %137

64:                                               ; preds = %27
  br label %65

65:                                               ; preds = %74, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %99

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 7
  %85 = load i32, i32* %8, align 4
  %86 = xor i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 1
  %89 = xor i32 %86, %88
  store i32 %89, i32* %9, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 3
  %93 = load i32*, i32** @clz, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %92, %97
  store i32 %98, i32* %4, align 4
  br label %137

99:                                               ; preds = %73
  %100 = load i32, i32* %6, align 4
  %101 = shl i32 %100, 3
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %4, align 4
  br label %137

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %115, 7
  %117 = load i32, i32* %8, align 4
  %118 = xor i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = ashr i32 %119, 1
  %121 = xor i32 %118, %120
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %6, align 4
  %123 = shl i32 %122, 3
  %124 = load i32*, i32** @clz, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %123, %128
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %106
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %106
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %104, %90, %62, %14
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
