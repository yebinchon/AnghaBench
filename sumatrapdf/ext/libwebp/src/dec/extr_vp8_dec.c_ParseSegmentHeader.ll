; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParseSegmentHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParseSegmentHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8**, i8**, i8*, i8* }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@NUM_MB_SEGMENTS = common dso_local global i32 0, align 4
@MB_FEATURE_TREE_PROBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ParseSegmentHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSegmentHeader(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = call i8* @VP8Get(%struct.TYPE_12__* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %117

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i8* @VP8Get(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i8* @VP8Get(%struct.TYPE_12__* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %86

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i8* @VP8Get(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = call i8* @VP8Get(%struct.TYPE_12__* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = call i8* @VP8GetSignedValue(%struct.TYPE_12__* %47, i32 7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i8* [ %48, %46 ], [ null, %49 ]
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NUM_MB_SEGMENTS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i8* @VP8Get(%struct.TYPE_12__* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = call i8* @VP8GetSignedValue(%struct.TYPE_12__* %71, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i8* [ %72, %70 ], [ null, %73 ]
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %62

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %25
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MB_FEATURE_TREE_PROBS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = call i8* @VP8Get(%struct.TYPE_12__* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = call i32 @VP8GetValue(%struct.TYPE_12__* %101, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 255, %103 ]
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %92

115:                                              ; preds = %92
  br label %116

116:                                              ; preds = %115, %86
  br label %120

117:                                              ; preds = %3
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %117, %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @VP8Get(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @VP8GetSignedValue(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @VP8GetValue(%struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
