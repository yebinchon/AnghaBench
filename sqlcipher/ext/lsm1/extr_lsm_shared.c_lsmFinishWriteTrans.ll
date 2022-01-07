; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmFinishWriteTrans.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmFinishWriteTrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, {}*, i64, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_WRITER = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFinishWriteTrans(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LSM_OK, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @lsmLogEnd(%struct.TYPE_15__* %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = call i64 @lsmTreeSize(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @lsmTreeMakeOld(%struct.TYPE_15__* %25)
  br label %27

27:                                               ; preds = %24, %17, %14, %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @lsmTreeEndTransaction(%struct.TYPE_15__* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LSM_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = call i32 @lsmSortedAutoWork(%struct.TYPE_15__* %43, i32 1)
  store i32 %44, i32* %5, align 4
  br label %66

45:                                               ; preds = %37, %34
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dbSetReadLock(%struct.TYPE_15__* %54, i32 %59, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %53, %48, %45
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = load i32, i32* @LSM_LOCK_WRITER, align 4
  %72 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %73 = call i32 @lsmShmLock(%struct.TYPE_15__* %70, i32 %71, i32 %72, i32 0)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %67
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  %84 = bitcast {}** %83 to i32 (%struct.TYPE_15__*, i32)**
  %85 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.TYPE_15__*, i32)* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = bitcast {}** %89 to i32 (%struct.TYPE_15__*, i32)**
  %91 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %91(%struct.TYPE_15__* %92, i32 %95)
  br label %97

97:                                               ; preds = %87, %81, %76, %67
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @lsmLogEnd(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @lsmTreeSize(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmTreeMakeOld(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmTreeEndTransaction(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @lsmSortedAutoWork(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dbSetReadLock(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
