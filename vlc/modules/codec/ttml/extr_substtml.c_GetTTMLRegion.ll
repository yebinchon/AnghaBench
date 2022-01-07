; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GetTTMLRegion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GetTTMLRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i8*)* @GetTTMLRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetTTMLRegion(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %15 ]
  %18 = call i64 @vlc_dictionary_value_for_key(i32* %10, i8* %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %88

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %25
  %30 = call i32 @vlc_dictionary_init(%struct.TYPE_10__* %6, i32 0)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @DictMergeWithRegionID(%struct.TYPE_12__* %31, i8* %32, %struct.TYPE_10__* %6)
  %34 = call i32* @ttml_region_New(i32 0)
  store i32* %34, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %8, align 8
  br label %49

49:                                               ; preds = %62, %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @FillRegionStyle(%struct.TYPE_12__* %53, i32 %56, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %52
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %8, align 8
  br label %49

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %37

70:                                               ; preds = %37
  br label %71

71:                                               ; preds = %70, %29
  %72 = call i32 @vlc_dictionary_clear(%struct.TYPE_10__* %6, i32* null, i32* null)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i8*, i8** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @vlc_dictionary_insert(i32* %74, i8* %75, i32* %76)
  br label %87

78:                                               ; preds = %25, %22
  %79 = call i32* @ttml_region_New(i32 1)
  store i32* %79, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @vlc_dictionary_insert(i32* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %84)
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %16
  %89 = load i32*, i32** %5, align 8
  ret i32* %89
}

declare dso_local i64 @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_dictionary_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DictMergeWithRegionID(%struct.TYPE_12__*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32* @ttml_region_New(i32) #1

declare dso_local i32 @FillRegionStyle(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @vlc_dictionary_clear(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
