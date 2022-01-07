; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_isInUse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_isInUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_NREADER = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32, i32*)* @isInUse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isInUse(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %10, align 8
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %83, %4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @LSM_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @LSM_LOCK_NREADER, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %86

28:                                               ; preds = %26
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %13, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %47, %42, %39
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @shm_sequence_ge(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56, %47
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @LSM_LOCK_READER(i32 %65)
  %67 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %68 = call i32 @lsmShmLock(%struct.TYPE_6__* %64, i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @LSM_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @LSM_LOCK_READER(i32 %76)
  %78 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %79 = call i32 @lsmShmLock(%struct.TYPE_6__* %75, i32 %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %72, %63
  br label %81

81:                                               ; preds = %80, %56, %53
  br label %82

82:                                               ; preds = %81, %28
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %18

86:                                               ; preds = %26
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @LSM_BUSY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* @LSM_OK, align 4
  store i32 %92, i32* %5, align 4
  br label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %9, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @shm_sequence_ge(i32, i32) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @LSM_LOCK_READER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
