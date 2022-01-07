; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmBeginWriteTrans.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmBeginWriteTrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, %struct.TYPE_16__*, %struct.TYPE_18__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_WRITER = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmBeginWriteTrans(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load i32, i32* @LSM_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 7
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call i32 @lsmBeginReadTrans(%struct.TYPE_17__* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @LSM_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = load i32, i32* @LSM_LOCK_WRITER, align 4
  %42 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %43 = call i32 @lsmShmLock(%struct.TYPE_17__* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @LSM_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = call i32 @lsmTreeRepair(%struct.TYPE_17__* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @LSM_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %48, %44
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @LSM_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = call i64 @memcmp(i32* %69, %struct.TYPE_18__* %71, i32 16)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @LSM_BUSY, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %67, %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @LSM_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = call i32 @lsmLogBegin(%struct.TYPE_17__* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @LSM_OK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 6
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %5, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = call i64 @lsmTreeHasOld(%struct.TYPE_17__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %87
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %112 = call i32 @lsmTreeDiscardOld(%struct.TYPE_17__* %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  store i64 1, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %100, %87
  br label %129

116:                                              ; preds = %83
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %118 = load i32, i32* @LSM_LOCK_WRITER, align 4
  %119 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %120 = call i32 @lsmShmLock(%struct.TYPE_17__* %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %127 = call i32 @lsmFinishReadTrans(%struct.TYPE_17__* %126)
  br label %128

128:                                              ; preds = %125, %116
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmBeginReadTrans(%struct.TYPE_17__*) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @lsmTreeRepair(%struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @lsmLogBegin(%struct.TYPE_17__*) #1

declare dso_local i64 @lsmTreeHasOld(%struct.TYPE_17__*) #1

declare dso_local i32 @lsmTreeDiscardOld(%struct.TYPE_17__*) #1

declare dso_local i32 @lsmFinishReadTrans(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
