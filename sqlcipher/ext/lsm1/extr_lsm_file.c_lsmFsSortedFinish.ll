; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSortedFinish.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSortedFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_APPLIST_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsSortedFinish(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load i32, i32* @LSM_OK, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %123

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %14
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @fsLastPageOnPagesBlock(%struct.TYPE_18__* %26, i64 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %19
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %7, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %64, %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @LSM_APPLIST_SZ, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i64*, i64** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i64*, i64** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  br label %67

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %43

67:                                               ; preds = %54, %43
  br label %122

68:                                               ; preds = %19
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @fsPageGet(%struct.TYPE_18__* %74, i32 0, i64 %77, i32 0, %struct.TYPE_17__** %8, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @LSM_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %73
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = call i64 @lsmGetU32(i32* %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @lsmBlockRefree(%struct.TYPE_19__* %96, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = call i32 @lsmFsPageRelease(%struct.TYPE_17__* %99)
  br label %101

101:                                              ; preds = %82, %73
  br label %121

102:                                              ; preds = %68
  store i32 0, i32* %10, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @fsPageToBlock(%struct.TYPE_18__* %105, i64 %108)
  %110 = call i32 @fsBlockNext(%struct.TYPE_18__* %103, %struct.TYPE_16__* %104, i32 %109, i32* %10)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @LSM_OK, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @lsmBlockRefree(%struct.TYPE_19__* %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %102
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %67
  br label %123

123:                                              ; preds = %122, %14, %2
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsLastPageOnPagesBlock(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @fsPageGet(%struct.TYPE_18__*, i32, i64, i32, %struct.TYPE_17__**, i32) #1

declare dso_local i64 @lsmGetU32(i32*) #1

declare dso_local i32 @lsmBlockRefree(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @lsmFsPageRelease(%struct.TYPE_17__*) #1

declare dso_local i32 @fsBlockNext(%struct.TYPE_18__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @fsPageToBlock(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
