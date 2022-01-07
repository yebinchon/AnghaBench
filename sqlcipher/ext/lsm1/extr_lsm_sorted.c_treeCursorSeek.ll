; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_treeCursorSeek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_treeCursorSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@LSM_POINT_DELETE = common dso_local global i32 0, align 4
@LSM_INSERT = common dso_local global i32 0, align 4
@CURSOR_SEEK_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i32, i32, i32*)* @treeCursorSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treeCursorSeek(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %135

22:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @lsmTreeCursorSeek(i32* %23, i8* %24, i32 %25, i32* %14)
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %124 [
    i32 129, label %28
    i32 128, label %113
  ]

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @lsmTreeCursorFlags(i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @LSM_START_DELETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @LSM_END_DELETE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @LSM_POINT_DELETE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %41, %33
  %55 = load i32*, i32** %12, align 8
  store i32 1, i32* %55, align 4
  br label %110

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @LSM_INSERT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %16, align 8
  %70 = load i32*, i32** %12, align 8
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* @CURSOR_SEEK_EQ, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = call i32 @lsmTreeCursorKey(i32* %76, i32* %78, i8** %17, i32* %18)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @LSM_OK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %64
  %84 = load i32*, i32** %16, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8*, i8** %17, align 8
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @sortedBlobSet(i32* %84, i32* %86, i8* %87, i32 %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %83, %64
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @LSM_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @lsmTreeCursorValue(i32* %95, i8** %17, i32* %18)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @LSM_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32*, i32** %16, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i8*, i8** %17, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @sortedBlobSet(i32* %102, i32* %104, i8* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %101, %97
  br label %109

109:                                              ; preds = %108, %59, %56
  br label %110

110:                                              ; preds = %109, %54
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @lsmTreeCursorReset(i32* %111)
  br label %134

113:                                              ; preds = %22
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @lsmTreeCursorValid(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @lsmTreeCursorNext(i32* %121)
  br label %123

123:                                              ; preds = %120, %116, %113
  br label %134

124:                                              ; preds = %22
  %125 = load i32, i32* %14, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @lsmTreeCursorValid(i32* %128)
  %130 = call i32 @assert(i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @lsmTreeCursorPrev(i32* %131)
  br label %133

133:                                              ; preds = %127, %124
  br label %134

134:                                              ; preds = %133, %123, %110
  br label %135

135:                                              ; preds = %134, %6
  %136 = load i32, i32* %13, align 4
  ret i32 %136
}

declare dso_local i32 @lsmTreeCursorSeek(i32*, i8*, i32, i32*) #1

declare dso_local i32 @lsmTreeCursorFlags(i32*) #1

declare dso_local i32 @lsmTreeCursorKey(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @sortedBlobSet(i32*, i32*, i8*, i32) #1

declare dso_local i32 @lsmTreeCursorValue(i32*, i8**, i32*) #1

declare dso_local i32 @lsmTreeCursorReset(i32*) #1

declare dso_local i32 @lsmTreeCursorValid(i32*) #1

declare dso_local i32 @lsmTreeCursorNext(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmTreeCursorPrev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
