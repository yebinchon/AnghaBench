; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmInfoArrayPages.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmInfoArrayPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i8* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %lld\00", align 1
@LSM_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmInfoArrayPages(%struct.TYPE_8__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @LSM_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %105

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @lsmBeginWork(%struct.TYPE_8__* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @LSM_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %105

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %23
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @findSegment(i32* %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @LSM_ERROR, align 4
  store i32 %48, i32* %8, align 4
  br label %96

49:                                               ; preds = %41
  store i32* null, i32** %12, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %13, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lsmStringInit(%struct.TYPE_9__* %14, i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @lsmFsDbPageGet(i32* %57, i32* %58, i32 %59, i32** %12)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %70, %49
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @LSM_OK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i1 [ false, %61 ], [ %67, %65 ]
  br i1 %69, label %70, label %80

70:                                               ; preds = %68
  store i32* null, i32** %15, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @lsmFsPageNumber(i32* %71)
  %73 = call i32 @lsmStringAppendf(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @lsmFsDbPageNext(i32* %74, i32* %75, i32 1, i32** %15)
  store i32 %76, i32* %8, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @lsmFsPageRelease(i32* %77)
  %79 = load i32*, i32** %15, align 8
  store i32* %79, i32** %12, align 8
  br label %61

80:                                               ; preds = %68
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @LSM_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @lsmFree(i32 %87, i8* %89)
  br label %95

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %7, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %84
  br label %96

96:                                               ; preds = %95, %47
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* @LSM_BUSY, align 4
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = call i32 @lsmFinishWork(%struct.TYPE_8__* %101, i32 0, i32* %16)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %35, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @lsmBeginWork(%struct.TYPE_8__*) #1

declare dso_local i32* @findSegment(i32*, i32) #1

declare dso_local i32 @lsmStringInit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lsmFsDbPageGet(i32*, i32*, i32, i32**) #1

declare dso_local i32 @lsmStringAppendf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @lsmFsPageNumber(i32*) #1

declare dso_local i32 @lsmFsDbPageNext(i32*, i32*, i32, i32**) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @lsmFree(i32, i8*) #1

declare dso_local i32 @lsmFinishWork(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
