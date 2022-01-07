; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsmStructList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsmStructList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64, i8* }

@LSM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s{%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@LSM_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmStructList(%struct.TYPE_12__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %13 = load i32, i32* @LSM_OK, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @infoGetWorker(%struct.TYPE_12__* %14, i32** %10, i32* %11)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @LSM_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %98

21:                                               ; preds = %2
  %22 = load i32*, i32** %10, align 8
  %23 = call %struct.TYPE_14__* @lsmDbSnapshotLevel(i32* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lsmStringInit(%struct.TYPE_13__* %9, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  br label %29

29:                                               ; preds = %77, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LSM_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  br i1 %37, label %38, label %81

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = call i32 @lsmAppendSegmentList(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %72, %38
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LSM_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %75

64:                                               ; preds = %62
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @lsmAppendSegmentList(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %52

75:                                               ; preds = %62
  %76 = call i32 @lsmStringAppend(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %77

77:                                               ; preds = %75
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %8, align 8
  br label %29

81:                                               ; preds = %36
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @LSM_OK, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @LSM_NOMEM, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @infoFreeWorker(%struct.TYPE_12__* %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %5, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %19
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @infoGetWorker(%struct.TYPE_12__*, i32**, i32*) #1

declare dso_local %struct.TYPE_14__* @lsmDbSnapshotLevel(i32*) #1

declare dso_local i32 @lsmStringInit(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmStringAppendf(%struct.TYPE_13__*, i8*, i8*, i32) #1

declare dso_local i32 @lsmAppendSegmentList(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @lsmStringAppend(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @infoFreeWorker(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
