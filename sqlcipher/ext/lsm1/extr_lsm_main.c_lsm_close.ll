; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_close.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32 (i32)* }
%struct.TYPE_12__ = type { i32, i32 (i32)* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsm_close(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load i32, i32* @LSM_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = icmp ne %struct.TYPE_15__* %5, null
  br i1 %6, label %7, label %103

7:                                                ; preds = %1
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = call i32 @assert_db_state(%struct.TYPE_15__* %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %7
  %20 = load i32, i32* @LSM_MISUSE_BKPT, align 4
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %14
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = call i32 @lsmMCursorFreeCache(%struct.TYPE_15__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @lsmFreeSnapshot(i32 %26, i64 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @assertRwclientLockValue(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = call i32 @lsmDbDatabaseRelease(%struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = call i32 @lsmLogClose(%struct.TYPE_15__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @lsmFsClose(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = icmp ne i32 (i32)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %21
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %52(i32 %56)
  br label %58

58:                                               ; preds = %48, %21
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = icmp ne i32 (i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(i32 %72)
  br label %74

74:                                               ; preds = %64, %58
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = call i32 @lsmFree(i32 %77, %struct.TYPE_15__* %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = call i32 @lsmFree(i32 %85, %struct.TYPE_15__* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = call i32 @lsmFree(i32 %92, %struct.TYPE_15__* %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %101 = call i32 @lsmFree(i32 %99, %struct.TYPE_15__* %100)
  br label %102

102:                                              ; preds = %74, %19
  br label %103

103:                                              ; preds = %102, %1
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @assert_db_state(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmMCursorFreeCache(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmFreeSnapshot(i32, i64) #1

declare dso_local i32 @assertRwclientLockValue(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmDbDatabaseRelease(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmLogClose(%struct.TYPE_15__*) #1

declare dso_local i32 @lsmFsClose(i32) #1

declare dso_local i32 @lsmFree(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
