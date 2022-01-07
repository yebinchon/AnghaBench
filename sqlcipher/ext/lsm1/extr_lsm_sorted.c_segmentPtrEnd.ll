; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrEnd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_SEGMENTPTR_FREE_THRESHOLD = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @segmentPtrEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentPtrEnd(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %7, align 8
  %15 = load i32, i32* @LSM_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @segmentPtrEndPage(i32* %21, %struct.TYPE_16__* %22, i32 %23, i32* %8)
  br label %25

25:                                               ; preds = %50, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @LSM_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i1 [ true, %34 ], [ %45, %39 ]
  br label %48

48:                                               ; preds = %46, %29, %25
  %49 = phi i1 [ false, %29 ], [ false, %25 ], [ %47, %46 ]
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 1
  %56 = call i32 @segmentPtrNextPage(%struct.TYPE_16__* %51, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %25

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LSM_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %126

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %126

66:                                               ; preds = %61
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i64 [ %74, %70 ], [ 0, %75 ]
  %78 = call i32 @segmentPtrLoadCell(%struct.TYPE_16__* %67, i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @LSM_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %82
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = icmp ne i32* %88, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %85
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtTopic(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @sortedKeyCompare(i32 %97, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %92
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %123 = call i32 @segmentPtrReset(%struct.TYPE_16__* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %92
  br label %125

125:                                              ; preds = %124, %85, %82, %76
  br label %126

126:                                              ; preds = %125, %61, %57
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = call i32 @segmentPtrIgnoreSeparators(%struct.TYPE_17__* %127, %struct.TYPE_16__* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @LSM_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %126
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @rtIsSeparator(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @segmentPtrAdvance(%struct.TYPE_17__* %148, %struct.TYPE_16__* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %147, %141, %138, %133, %126
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @segmentPtrEndPage(i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @segmentPtrNextPage(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @segmentPtrLoadCell(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @sortedKeyCompare(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @segmentPtrReset(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @segmentPtrIgnoreSeparators(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @rtIsSeparator(i32) #1

declare dso_local i32 @segmentPtrAdvance(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
