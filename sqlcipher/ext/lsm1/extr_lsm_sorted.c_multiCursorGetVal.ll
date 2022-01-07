; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorGetVal.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorGetVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i64, %struct.TYPE_8__*, i32** }
%struct.TYPE_12__ = type { i32, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_DATA_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8**, i32*)* @multiCursorGetVal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiCursorGetVal(%struct.TYPE_13__* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @LSM_OK, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i8**, i8*** %7, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %97 [
    i32 129, label %20
    i32 128, label %20
    i32 130, label %41
  ]

20:                                               ; preds = %4, %4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 129
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @lsmTreeCursorValid(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32*, i32** %10, align 8
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @lsmTreeCursorValue(i32* %33, i8** %34, i32* %35)
  br label %40

37:                                               ; preds = %20
  %38 = load i8**, i8*** %7, align 8
  store i8* null, i8** %38, align 8
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %128

41:                                               ; preds = %4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %11, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %96

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = srem i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %55
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 2
  %75 = sub nsw i32 %70, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lsmPutU64(i32* %81, i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = load i8**, i8*** %7, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i32*, i32** %8, align 8
  store i32 8, i32* %95, align 4
  br label %96

96:                                               ; preds = %65, %55, %49, %41
  br label %128

97:                                               ; preds = %4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @CURSOR_DATA_SEGMENT, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %97
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %15, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %106
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %7, align 8
  store i8* %120, i8** %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %106
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127, %96, %40
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @LSM_OK, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i1 [ false, %132 ], [ %139, %136 ]
  br label %142

142:                                              ; preds = %140, %128
  %143 = phi i1 [ true, %128 ], [ %141, %140 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

declare dso_local i32 @lsmTreeCursorValid(i32*) #1

declare dso_local i32 @lsmTreeCursorValue(i32*, i8**, i32*) #1

declare dso_local i32 @lsmPutU64(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
