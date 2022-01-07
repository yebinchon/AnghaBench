; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.flock = type { i32, i16, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@lsmPosixOsLock.aType = internal constant [3 x i16] [i16 129, i16 130, i16 128], align 2
@LSM_LOCK_UNLOCK = common dso_local global i64 0, align 8
@LSM_LOCK_SHARED = common dso_local global i64 0, align 8
@LSM_LOCK_EXCL = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @lsmPosixOsLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsLock(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.flock, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @LSM_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i64, i64* @LSM_LOCK_UNLOCK, align 8
  %15 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsLock.aType, i64 0, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, 129
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* @LSM_LOCK_SHARED, align 8
  %22 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsLock.aType, i64 0, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %24, 130
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* @LSM_LOCK_EXCL, align 8
  %29 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsLock.aType, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %31, 128
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @array_size(i16* getelementptr inbounds ([3 x i16], [3 x i16]* @lsmPosixOsLock.aType, i64 0, i64 0))
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %3
  %42 = phi i1 [ false, %3 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %48, 32
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32 @memset(%struct.flock* %9, i32 0, i32 16)
  %55 = load i32, i32* @SEEK_SET, align 4
  %56 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsLock.aType, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  store i16 %61, i16* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 4096, %63
  %65 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @F_SETLK, align 4
  %70 = call i64 @fcntl(i32 %68, i32 %69, %struct.flock* %9)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %50
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @EACCES, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %72
  %82 = load i32, i32* @LSM_BUSY, align 4
  store i32 %82, i32* %7, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %50
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @array_size(i16*) #1

declare dso_local i32 @memset(%struct.flock*, i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, %struct.flock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
