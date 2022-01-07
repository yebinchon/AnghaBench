; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsTestLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsTestLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.flock = type { i32, i16, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@lsmPosixOsTestLock.aType = internal constant [3 x i16] [i16 0, i16 129, i16 128], align 2
@LSM_LOCK_SHARED = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i16 0, align 2
@LSM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @lsmPosixOsTestLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsTestLock(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.flock, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsTestLock.aType, i64 0, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %30, 129
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsTestLock.aType, i64 0, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %38, 128
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @array_size(i16* getelementptr inbounds ([3 x i16], [3 x i16]* @lsmPosixOsTestLock.aType, i64 0, i64 0))
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %22
  %49 = phi i1 [ false, %22 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 32
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i1 [ false, %48 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = call i32 @memset(%struct.flock* %11, i32 0, i32 16)
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = getelementptr inbounds %struct.flock, %struct.flock* %11, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds %struct.flock, %struct.flock* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i16], [3 x i16]* @lsmPosixOsTestLock.aType, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = getelementptr inbounds %struct.flock, %struct.flock* %11, i32 0, i32 1
  store i16 %69, i16* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 4096, %71
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds %struct.flock, %struct.flock* %11, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @F_GETLK, align 4
  %81 = call i64 @fcntl(i32 %79, i32 %80, %struct.flock* %11)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %57
  %84 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %84, i32* %9, align 4
  br label %95

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.flock, %struct.flock* %11, i32 0, i32 1
  %87 = load i16, i16* %86, align 4
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* @F_UNLCK, align 2
  %90 = sext i16 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @LSM_BUSY, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %92, %85
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, i32* %9, align 4
  ret i32 %96
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
