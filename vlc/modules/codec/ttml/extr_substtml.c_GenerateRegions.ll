; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GenerateRegions.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GenerateRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*, i32)* @GenerateRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @GenerateRegions(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__** %5, %struct.TYPE_18__*** %6, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tt_node_NameCompare(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = call %struct.TYPE_20__* @FindNode(%struct.TYPE_20__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = call i32 @InitTTMLContext(%struct.TYPE_20__* %22, %struct.TYPE_19__* %8)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %27 = call i32 @vlc_dictionary_init(%struct.TYPE_21__* %26, i32 1)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ConvertNodesToRegionContent(%struct.TYPE_19__* %8, %struct.TYPE_20__* %28, i32* null, i32* null, i32 %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %64, %21
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %40, i64 %42
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %10, align 8
  br label %45

45:                                               ; preds = %59, %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_18__*
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %53, align 8
  %54 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to %struct.TYPE_18__**
  store %struct.TYPE_18__** %58, %struct.TYPE_18__*** %6, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %10, align 8
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %31

67:                                               ; preds = %31
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %69 = call i32 @vlc_dictionary_clear(%struct.TYPE_21__* %68, i32* null, i32* null)
  br label %70

70:                                               ; preds = %67, %16
  br label %85

71:                                               ; preds = %2
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @tt_node_NameCompare(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @tt_node_NameCompare(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %86
}

declare dso_local i32 @tt_node_NameCompare(i32, i8*) #1

declare dso_local %struct.TYPE_20__* @FindNode(%struct.TYPE_20__*, i8*, i32, i32*) #1

declare dso_local i32 @InitTTMLContext(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vlc_dictionary_init(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ConvertNodesToRegionContent(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*, i32) #1

declare dso_local i32 @vlc_dictionary_clear(%struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
