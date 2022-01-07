; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_mergeBlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_mergeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64 }

@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*)* @mergeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergeBlock(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DL_POSITIONS, align 8
  %12 = icmp sge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = call i32 @readerInit(%struct.TYPE_22__* %5, %struct.TYPE_24__* %15)
  br label %17

17:                                               ; preds = %106, %105, %52, %2
  %18 = call i64 @readerAtEnd(%struct.TYPE_22__* %5)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = call i64 @readDocid(%struct.TYPE_22__* %5)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %42
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = call i64 @readerAtEnd(%struct.TYPE_22__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %110

35:                                               ; preds = %29
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = call i64 @peekDocid(%struct.TYPE_22__* %37)
  %39 = load i64, i64* %6, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = call i32 @skipDocument(%struct.TYPE_22__* %44)
  br label %29

46:                                               ; preds = %41
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = call i64 @peekDocid(%struct.TYPE_22__* %48)
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @skipPositionList(%struct.TYPE_22__* %5)
  br label %17

54:                                               ; preds = %46
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = call i64 @readDocid(%struct.TYPE_22__* %56)
  br label %58

58:                                               ; preds = %54, %21
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = icmp eq %struct.TYPE_21__* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DL_POSITIONS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %64, %58
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @docListAddDocid(%struct.TYPE_20__* %76, i64 %77)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DL_POSITIONS, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %92
  %88 = call i32 @readPosition(%struct.TYPE_22__* %5)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @docListAddPos(%struct.TYPE_20__* %95, i32 %96)
  br label %87

98:                                               ; preds = %91
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = call i32 @docListAddEndPos(%struct.TYPE_20__* %101)
  br label %105

103:                                              ; preds = %73
  %104 = call i32 @skipPositionList(%struct.TYPE_22__* %5)
  br label %105

105:                                              ; preds = %103, %98
  br label %17

106:                                              ; preds = %64
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @mergePosList(%struct.TYPE_23__* %107, i64 %108, %struct.TYPE_22__* %5)
  br label %17

110:                                              ; preds = %34, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @readerInit(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @readerAtEnd(%struct.TYPE_22__*) #1

declare dso_local i64 @readDocid(%struct.TYPE_22__*) #1

declare dso_local i64 @peekDocid(%struct.TYPE_22__*) #1

declare dso_local i32 @skipDocument(%struct.TYPE_22__*) #1

declare dso_local i32 @skipPositionList(%struct.TYPE_22__*) #1

declare dso_local i32 @docListAddDocid(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @readPosition(%struct.TYPE_22__*) #1

declare dso_local i32 @docListAddPos(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @docListAddEndPos(%struct.TYPE_20__*) #1

declare dso_local i32 @mergePosList(%struct.TYPE_23__*, i64, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
