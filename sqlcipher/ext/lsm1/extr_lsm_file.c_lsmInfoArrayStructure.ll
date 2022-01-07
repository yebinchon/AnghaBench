; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmInfoArrayStructure.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmInfoArrayStructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@LSM_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmInfoArrayStructure(%struct.TYPE_11__* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %10, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i8**, i8*** %9, align 8
  store i8* null, i8** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @LSM_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = call i32 @lsmBeginWork(%struct.TYPE_11__* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @LSM_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %126

39:                                               ; preds = %31
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.TYPE_12__* @findSegment(i32* %44, i32 %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %12, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @LSM_ERROR, align 4
  store i32 %50, i32* %10, align 4
  br label %117

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fsPageToBlock(i32* %55, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fsPageToBlock(i32* %60, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @lsmStringInit(%struct.TYPE_13__* %15, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %51
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %78, %71
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32*, i32** %14, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @fsBlockNext(i32* %79, %struct.TYPE_12__* %80, i32 %81, i32* %16)
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %74

85:                                               ; preds = %74
  br label %113

86:                                               ; preds = %51
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %95, %86
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @fsLastPageOnBlock(i32* %96, i32 %97)
  %99 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @fsBlockNext(i32* %100, %struct.TYPE_12__* %101, i32 %102, i32* %16)
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @fsFirstPageOnBlock(i32* %104, i32 %105)
  %107 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %91

108:                                              ; preds = %91
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @lsmStringAppendf(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108, %85
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %113, %49
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @LSM_BUSY, align 4
  store i32 %121, i32* %18, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = call i32 @lsmFinishWork(%struct.TYPE_11__* %122, i32 0, i32* %18)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %37, %23
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @lsmBeginWork(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @findSegment(i32*, i32) #1

declare dso_local i32 @fsPageToBlock(i32*, i32) #1

declare dso_local i32 @lsmStringInit(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmStringAppendf(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @fsBlockNext(i32*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @fsLastPageOnBlock(i32*, i32) #1

declare dso_local i32 @fsFirstPageOnBlock(i32*, i32) #1

declare dso_local i32 @lsmFinishWork(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
