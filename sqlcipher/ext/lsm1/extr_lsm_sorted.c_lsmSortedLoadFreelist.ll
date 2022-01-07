; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedLoadFreelist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedLoadFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_IGNORE_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FREELIST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmSortedLoadFreelist(%struct.TYPE_12__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @LSM_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ false, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call %struct.TYPE_13__* @multiCursorNew(%struct.TYPE_12__* %27, i32* %8)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @multiCursorAddAll(%struct.TYPE_13__* %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @CURSOR_IGNORE_DELETE, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %31, %23
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @LSM_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %106

46:                                               ; preds = %42
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i32 @lsmMCursorLast(%struct.TYPE_13__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @LSM_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @rtIsWrite(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @rtIsSystem(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %103

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @memcmp(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %76 = icmp eq i64 0, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = call i32 @lsmMCursorValue(%struct.TYPE_13__* %78, i8** %9, i32* %10)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @LSM_OK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @lsmMallocRc(i32 %86, i32 %87, i32* %8)
  %89 = load i8**, i8*** %5, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @memcpy(i8* %95, i8* %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %83
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %70, %64, %58, %52, %46
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = call i32 @lsmMCursorClose(%struct.TYPE_13__* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %42
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @multiCursorNew(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @multiCursorAddAll(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmMCursorLast(%struct.TYPE_13__*) #1

declare dso_local i64 @rtIsWrite(i32) #1

declare dso_local i64 @rtIsSystem(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @lsmMCursorValue(%struct.TYPE_13__*, i8**, i32*) #1

declare dso_local i8* @lsmMallocRc(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lsmMCursorClose(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
