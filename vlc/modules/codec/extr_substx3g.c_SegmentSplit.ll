; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_substx3g.c_SegmentSplit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_substx3g.c_SegmentSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__**, i32, i32, i32*)* @SegmentSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SegmentSplit(%struct.TYPE_10__* %0, %struct.TYPE_10__** %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %133

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %133

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %133

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = icmp sgt i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %133

49:                                               ; preds = %40
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @SegmentDoSplit(%struct.TYPE_10__* %51, i32 %52, i32 %53, %struct.TYPE_10__** %12, %struct.TYPE_10__** %13, %struct.TYPE_10__** %14)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = call i32 @text_segment_Delete(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = call i32 @free(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @text_segment_Delete(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %69 = call i32 @free(%struct.TYPE_10__* %68)
  store i32 0, i32* %6, align 4
  br label %133

70:                                               ; preds = %49
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %15, align 8
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = call i32 @text_segment_Delete(%struct.TYPE_11__* %78)
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_10__* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  br label %89

87:                                               ; preds = %70
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi %struct.TYPE_10__* [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %91, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %98, align 8
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %101 = icmp ne %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %105, align 8
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @text_style_Merge(i64 %122, i32* %123, i32 1)
  br label %132

125:                                              ; preds = %110
  %126 = load i32*, i32** %11, align 8
  %127 = call i64 @text_style_Duplicate(i32* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %117
  store i32 1, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %57, %48, %39, %26, %21
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @SegmentDoSplit(%struct.TYPE_10__*, i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local i32 @text_segment_Delete(%struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @text_style_Merge(i64, i32*, i32) #1

declare dso_local i64 @text_style_Duplicate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
