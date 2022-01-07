; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_Rphf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_Rphf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"rphf\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i64, %struct.TYPE_5__*, i32*, i64*, i32*, i32, %struct.TYPE_5__*)* @Apply_Indic_Rphf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Apply_Indic_Rphf(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_5__* %5, i32* %6, i64* %7, i32* %8, i32 %9, %struct.TYPE_5__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %22, align 8
  %25 = load i64*, i64** %19, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %11
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %19, align 8
  %40 = call i64 @apply_GSUB_feature_to_glyph(i32 %32, i32* %33, i32* %34, i32* %35, i64 %38, i32 1, i64* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %40, i64* %23, align 8
  %41 = load i64, i64* %23, align 8
  %42 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %31
  %45 = load i64, i64* %23, align 8
  %46 = load i64*, i64** %19, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %24, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i64, i64* %16, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = call i32 @UpdateClusters(i64 %45, i64 %49, i32 1, i64 %50, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %24, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__* %53, i64 %56, i64 %60)
  br label %62

62:                                               ; preds = %44, %31
  br label %63

63:                                               ; preds = %62, %11
  ret void
}

declare dso_local i64 @apply_GSUB_feature_to_glyph(i32, i32*, i32*, i32*, i64, i32, i64*, i8*) #1

declare dso_local i32 @UpdateClusters(i64, i64, i32, i64, i32*) #1

declare dso_local i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
