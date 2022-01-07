; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_releaseInodeInfo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_releaseInodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@inodeList = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @releaseInodeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @releaseInodeInfo(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = call i32 (...) @unixMutexHeld()
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = call i32 @unixFileMutexNotheld(%struct.TYPE_10__* %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i64 @ALWAYS(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %101

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sqlite3_mutex_enter(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = call i32 @closePendingFds(%struct.TYPE_10__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sqlite3_mutex_leave(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %24
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = icmp eq %struct.TYPE_9__* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %61, align 8
  br label %71

62:                                               ; preds = %24
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @inodeList, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = icmp eq %struct.TYPE_9__* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** @inodeList, align 8
  br label %71

71:                                               ; preds = %62, %45
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = icmp eq %struct.TYPE_9__* %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %92, align 8
  br label %93

93:                                               ; preds = %76, %71
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @sqlite3_mutex_free(i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = call i32 @sqlite3_free(%struct.TYPE_9__* %98)
  br label %100

100:                                              ; preds = %93, %15
  br label %101

101:                                              ; preds = %100, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @unixFileMutexNotheld(%struct.TYPE_10__*) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @closePendingFds(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3_mutex_free(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
