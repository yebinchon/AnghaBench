; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Node %lld is too small (%d bytes)\00", align 1
@RTREE_MAX_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Rtree depth out of range (%d)\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Node %lld is too small for cell count of %d (%d bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32*, i32)* @rtreeCheckNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtreeCheckNode(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @rtreeCheckGetNode(%struct.TYPE_7__* %30, i32 %31, i32* %10)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %144

35:                                               ; preds = %20
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @rtreeCheckAppendMsg(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %141

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @readInt16(i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RTREE_MAX_DEPTH, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @rtreeCheckAppendMsg(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @sqlite3_free(i32* %56)
  br label %144

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i32 @readInt16(i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = mul nsw i64 %67, 2
  %69 = mul nsw i64 %68, 4
  %70 = add nsw i64 8, %69
  %71 = mul nsw i64 %64, %70
  %72 = add nsw i64 4, %71
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i64 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %59
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @rtreeCheckAppendMsg(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  br label %140

82:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %136, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %139

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = mul nsw i64 %93, 2
  %95 = mul nsw i64 %94, 4
  %96 = add nsw i64 8, %95
  %97 = mul nsw i64 %90, %96
  %98 = add nsw i64 4, %97
  %99 = getelementptr inbounds i32, i32* %88, i64 %98
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @readInt64(i32* %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @rtreeCheckCellCoord(%struct.TYPE_7__* %102, i32 %103, i32 %104, i32* %106, i32* %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %87
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @rtreeCheckMapping(%struct.TYPE_7__* %112, i32 0, i32 %113, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  %121 = load i32, i32* %14, align 4
  call void @rtreeCheckNode(%struct.TYPE_7__* %116, i32 %118, i32* %120, i32 %121)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %135

126:                                              ; preds = %87
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @rtreeCheckMapping(%struct.TYPE_7__* %127, i32 1, i32 %128, i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %126, %111
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %83

139:                                              ; preds = %83
  br label %140

140:                                              ; preds = %139, %76
  br label %141

141:                                              ; preds = %140, %38
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @sqlite3_free(i32* %142)
  br label %144

144:                                              ; preds = %52, %141, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @rtreeCheckGetNode(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @rtreeCheckAppendMsg(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @readInt16(i32*) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @readInt64(i32*) #1

declare dso_local i32 @rtreeCheckCellCoord(%struct.TYPE_7__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rtreeCheckMapping(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
