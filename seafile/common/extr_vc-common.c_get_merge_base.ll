; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_merge_base.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_merge_base(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %3, align 8
  store i32* %12, i32** %7, align 8
  %13 = call i32** @calloc(i32 1, i32 8)
  store i32** %13, i32*** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  store i32* %14, i32** %16, align 8
  store i32 1, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32**, i32*** %8, align 8
  %20 = call %struct.TYPE_5__* @merge_bases_many(i32* %17, i32 %18, i32** %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  %21 = load i32**, i32*** %8, align 8
  %22 = call i32 @free(i32** %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %2
  br label %81

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %79
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i32 @g_list_length(%struct.TYPE_5__* %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32** @calloc(i32 %39, i32 8)
  store i32** %40, i32*** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %56, %32
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = call i32 @g_list_free(%struct.TYPE_5__* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32**, i32*** %8, align 8
  %68 = call %struct.TYPE_5__* @merge_bases_many(i32* %65, i32 %66, i32** %67)
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %5, align 8
  %69 = load i32**, i32*** %8, align 8
  %70 = call i32 @free(i32** %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %62
  br label %80

79:                                               ; preds = %73
  br label %32

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %30
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %11, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = call i32 @g_list_free(%struct.TYPE_5__* %89)
  %91 = load i32*, i32** %11, align 8
  ret i32* %91
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @merge_bases_many(i32*, i32, i32**) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @g_list_length(%struct.TYPE_5__*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
