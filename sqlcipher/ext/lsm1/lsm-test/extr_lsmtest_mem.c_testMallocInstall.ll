; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_mem.c_testMallocInstall.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_mem.c_testMallocInstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32 (%struct.TYPE_7__*, i32, i32*)* }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i32, i32, i32, i64 (i32)*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }

@tmLsmRealloc = common dso_local global i32 0, align 4
@tmLsmFree = common dso_local global i32 0, align 4
@LSM_MUTEX_HEAP = common dso_local global i32 0, align 4
@tmLsmMutexEnter = common dso_local global i32 0, align 4
@tmLsmMutexLeave = common dso_local global i32 0, align 4
@tmLsmMutexDel = common dso_local global i32 0, align 4
@tmLsmEnvMalloc = common dso_local global i32 0, align 4
@tmLsmEnvRealloc = common dso_local global i32 0, align 4
@tmLsmEnvFree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testMallocInstall(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i64 @tmLsmMalloc(i32 56)
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 56)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 7
  store i64 (i32)* @tmLsmMalloc, i64 (i32)** %16, align 8
  %17 = load i32, i32* @tmLsmRealloc, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @tmLsmFree, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 7
  %25 = load i64 (i32)*, i64 (i32)** %24, align 8
  %26 = call i64 %25(i32 16)
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load i32, i32* @LSM_MUTEX_HEAP, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = call i32 %33(%struct.TYPE_7__* %34, i32 %35, i32* %37)
  %39 = load i32, i32* @tmLsmMutexEnter, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @tmLsmMutexLeave, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @tmLsmMutexDel, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = bitcast %struct.TYPE_9__* %48 to i8*
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = bitcast %struct.TYPE_8__* %67 to i8*
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @tmLsmEnvMalloc, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @tmLsmEnvRealloc, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @tmLsmEnvFree, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tmLsmMalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
