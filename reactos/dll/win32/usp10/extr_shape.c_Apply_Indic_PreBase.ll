; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_PreBase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_PreBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i64, %struct.TYPE_5__*, i32*, i64*, i32*, i32, %struct.TYPE_5__*, i8*)* @Apply_Indic_PreBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Apply_Indic_PreBase(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_5__* %5, i32* %6, i64* %7, i32* %8, i32 %9, %struct.TYPE_5__* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %13, align 4
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64* %7, i64** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %23, align 8
  store i8* %11, i8** %24, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i64, i64* %27, align 8
  %43 = load i32, i32* %22, align 4
  %44 = call i64 @find_consonant_halant(i32* %41, i64 0, i64 %42, i32 %43)
  store i64 %44, i64* %25, align 8
  br label %45

45:                                               ; preds = %110, %12
  %46 = load i64, i64* %25, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64, i64* %25, align 8
  %50 = load i64, i64* %28, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = icmp ult i64 %51, %58
  br label %60

60:                                               ; preds = %48, %45
  %61 = phi i1 [ false, %45 ], [ %59, %48 ]
  br i1 %61, label %62, label %122

62:                                               ; preds = %60
  %63 = load i64*, i64** %20, align 8
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %29, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = load i64, i64* %25, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = load i64, i64* %28, align 8
  %75 = add i64 %73, %74
  %76 = load i64*, i64** %20, align 8
  %77 = load i8*, i8** %24, align 8
  %78 = call i64 @apply_GSUB_feature_to_glyph(i32 %65, i32* %66, i32* %67, i32* %68, i64 %75, i32 1, i64* %76, i8* %77)
  store i64 %78, i64* %26, align 8
  %79 = load i64, i64* %26, align 8
  %80 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %62
  %83 = load i64, i64* %26, align 8
  %84 = load i64*, i64** %20, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %29, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %17, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @UpdateClusters(i64 %83, i64 %87, i32 1, i64 %88, i32* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %92 = load i64, i64* %25, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = load i64, i64* %28, align 8
  %98 = add i64 %96, %97
  %99 = load i64*, i64** %20, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %29, align 8
  %102 = sub nsw i64 %100, %101
  %103 = call i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__* %91, i64 %98, i64 %102)
  %104 = load i64*, i64** %20, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %29, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load i64, i64* %28, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %28, align 8
  br label %110

110:                                              ; preds = %82, %62
  %111 = load i64, i64* %25, align 8
  %112 = add nsw i64 %111, 2
  store i64 %112, i64* %25, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i32, i32* %22, align 4
  %121 = call i64 @find_consonant_halant(i32* %117, i64 %118, i64 %119, i32 %120)
  store i64 %121, i64* %25, align 8
  br label %45

122:                                              ; preds = %60
  ret void
}

declare dso_local i64 @find_consonant_halant(i32*, i64, i64, i32) #1

declare dso_local i64 @apply_GSUB_feature_to_glyph(i32, i32*, i32*, i32*, i64, i32, i64*, i8*) #1

declare dso_local i32 @UpdateClusters(i64, i64, i32, i64, i32*) #1

declare dso_local i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
