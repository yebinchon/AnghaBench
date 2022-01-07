; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_BasicForm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_BasicForm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GSUB_E_NOGLYPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i32*, i32*, i32, %struct.TYPE_8__*, i32*, i32*, i32*, i32, %struct.TYPE_8__*, i32*)* @Apply_Indic_BasicForm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Apply_Indic_BasicForm(i32 %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_8__* %5, i32* %6, i32* %7, i32* %8, i32 %9, %struct.TYPE_8__* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %25, align 4
  %31 = load i32*, i32** %24, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %12
  br label %76

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i32, i32* %25, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load i32*, i32** %20, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %27, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %24, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %25, align 4
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @GSUB_apply_feature_all_lookups(i32 %46, i32* %47, i32* %48, i32 %49, i32 1, i32* %50)
  store i32 %51, i32* %26, align 4
  %52 = load i32, i32* %26, align 4
  %53 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %41
  %56 = load i32, i32* %26, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %27, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %17, align 4
  %62 = load i32*, i32** %21, align 8
  %63 = call i32 @UpdateClusters(i32 %56, i32 %60, i32 1, i32 %61, i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %65 = load i32, i32* %25, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %27, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @shift_syllable_glyph_indexs(%struct.TYPE_8__* %64, i32 %65, i32 %69)
  %71 = load i32, i32* %26, align 4
  store i32 %71, i32* %25, align 4
  br label %75

72:                                               ; preds = %41
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %25, align 4
  br label %75

75:                                               ; preds = %72, %55
  br label %35

76:                                               ; preds = %33, %35
  ret void
}

declare dso_local i32 @GSUB_apply_feature_all_lookups(i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @UpdateClusters(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @shift_syllable_glyph_indexs(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
