; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_findInodeInfo.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_findInodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFileId = type { i64, i32, %struct.unixFileId*, %struct.unixFileId*, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.stat = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@SQLITE_IOERR = common dso_local global i32 0, align 4
@inodeList = common dso_local global %struct.unixFileId* null, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SQLITE_MUTEX_FAST = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@SQLITE_FSFLAGS_IS_MSDOS = common dso_local global i32 0, align 4
@SQLITE_NOLFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.unixFileId**)* @findInodeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findInodeInfo(%struct.TYPE_5__* %0, %struct.unixFileId** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.unixFileId**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.unixFileId, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.unixFileId*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.unixFileId** %1, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* null, %struct.unixFileId** %10, align 8
  %11 = call i32 (...) @unixMutexHeld()
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @osFstat(i32 %16, %struct.stat* %9)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @storeLastErrno(%struct.TYPE_5__* %21, i64 %22)
  %24 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %24, i32* %3, align 4
  br label %108

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.unixFileId* %8, i32 0, i32 56)
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 7
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 5
  store i64 %31, i64* %32, align 8
  %33 = call i32 (...) @unixMutexHeld()
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  store %struct.unixFileId* %35, %struct.unixFileId** %10, align 8
  br label %36

36:                                               ; preds = %46, %25
  %37 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %38 = icmp ne %struct.unixFileId* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %41 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %40, i32 0, i32 4
  %42 = call i64 @memcmp(%struct.unixFileId* %8, i32* %41, i32 56)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %48 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %47, i32 0, i32 3
  %49 = load %struct.unixFileId*, %struct.unixFileId** %48, align 8
  store %struct.unixFileId* %49, %struct.unixFileId** %10, align 8
  br label %36

50:                                               ; preds = %44
  %51 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %52 = icmp eq %struct.unixFileId* %51, null
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = call %struct.unixFileId* @sqlite3_malloc64(i32 56)
  store %struct.unixFileId* %54, %struct.unixFileId** %10, align 8
  %55 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %56 = icmp eq %struct.unixFileId* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %58, i32* %3, align 4
  br label %108

59:                                               ; preds = %53
  %60 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %61 = call i32 @memset(%struct.unixFileId* %60, i32 0, i32 56)
  %62 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %63 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %62, i32 0, i32 4
  %64 = call i32 @memcpy(i32* %63, %struct.unixFileId* %8, i32 56)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* @SQLITE_MUTEX_FAST, align 4
  %69 = call i64 @sqlite3_mutex_alloc(i32 %68)
  %70 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %71 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %73 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %78 = call i32 @sqlite3_free(%struct.unixFileId* %77)
  %79 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %79, i32* %3, align 4
  br label %108

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %83 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = call i32 (...) @unixMutexHeld()
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %87 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %88 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %87, i32 0, i32 3
  store %struct.unixFileId* %86, %struct.unixFileId** %88, align 8
  %89 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %90 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %89, i32 0, i32 2
  store %struct.unixFileId* null, %struct.unixFileId** %90, align 8
  %91 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %92 = icmp ne %struct.unixFileId* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %95 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %96 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %95, i32 0, i32 2
  store %struct.unixFileId* %94, %struct.unixFileId** %96, align 8
  br label %97

97:                                               ; preds = %93, %81
  %98 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  store %struct.unixFileId* %98, %struct.unixFileId** @inodeList, align 8
  br label %104

99:                                               ; preds = %50
  %100 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %101 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %97
  %105 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %106 = load %struct.unixFileId**, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* %105, %struct.unixFileId** %106, align 8
  %107 = load i32, i32* @SQLITE_OK, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %76, %57, %20
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @osFstat(i32, %struct.stat*) #1

declare dso_local i32 @storeLastErrno(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @memset(%struct.unixFileId*, i32, i32) #1

declare dso_local i64 @memcmp(%struct.unixFileId*, i32*, i32) #1

declare dso_local %struct.unixFileId* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.unixFileId*, i32) #1

declare dso_local i64 @sqlite3_mutex_alloc(i32) #1

declare dso_local i32 @sqlite3_free(%struct.unixFileId*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
