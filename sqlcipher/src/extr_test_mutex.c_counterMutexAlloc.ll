; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_mutex.c_counterMutexAlloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_mutex.c_counterMutexAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* (i32)* }

@g = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SQLITE_MUTEX_FAST = common dso_local global i32 0, align 4
@SQLITE_MUTEX_STATIC_VFS3 = common dso_local global i32 0, align 4
@SQLITE_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@MAX_MUTEXES = common dso_local global i32 0, align 4
@STATIC_MUTEXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32)* @counterMutexAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @counterMutexAlloc(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 0), align 8
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SQLITE_MUTEX_FAST, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SQLITE_MUTEX_STATIC_VFS3, align 4
  %16 = icmp sle i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__* (i32)*, %struct.TYPE_7__* (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 2, i32 0), align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_7__* %19(i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %63

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SQLITE_MUTEX_FAST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SQLITE_MUTEX_RECURSIVE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = call i64 @malloc(i32 16)
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %5, align 8
  br label %55

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MAX_MUTEXES, align 4
  %39 = load i32, i32* @STATIC_MUTEXES, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @STATIC_MUTEXES, align 4
  %48 = icmp slt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g, i32 0, i32 1), align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %5, align 8
  br label %55

55:                                               ; preds = %36, %33
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %2, align 8
  br label %63

63:                                               ; preds = %55, %24
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
