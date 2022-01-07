; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsFreeBlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsFreeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_APPLIST_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32)* @fsFreeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsFreeBlock(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %16, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @fsFirstPageOnBlock(%struct.TYPE_13__* %21, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @fsLastPageOnBlock(%struct.TYPE_13__* %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = call %struct.TYPE_12__* @lsmDbSnapshotLevel(%struct.TYPE_11__* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %13, align 8
  br label %29

29:                                               ; preds = %42, %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @fsLevelEndsBetween(%struct.TYPE_12__* %33, i32* %34, i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @LSM_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %105

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  br label %29

46:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @LSM_APPLIST_SZ, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load i64*, i64** %16, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load i64*, i64** %16, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59, %51
  %68 = load i64*, i64** %16, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %16, align 8
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %67, %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %47

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @LSM_APPLIST_SZ, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64*, i64** %16, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 0, i64* %92, align 8
  br label %83

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @LSM_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @lsmBlockFree(i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %97, %93
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %39
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @fsFirstPageOnBlock(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @fsLastPageOnBlock(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @lsmDbSnapshotLevel(%struct.TYPE_11__*) #1

declare dso_local i64 @fsLevelEndsBetween(%struct.TYPE_12__*, i32*, i64, i64) #1

declare dso_local i32 @lsmBlockFree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
