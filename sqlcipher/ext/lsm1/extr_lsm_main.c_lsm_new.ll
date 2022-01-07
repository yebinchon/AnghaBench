; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_new.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@LSM_NOMEM_BKPT = common dso_local global i32 0, align 4
@LSM_DFLT_AUTOFLUSH = common dso_local global i32 0, align 4
@LSM_DFLT_AUTOCHECKPOINT = common dso_local global i32 0, align 4
@LSM_DFLT_AUTOWORK = common dso_local global i32 0, align 4
@LSM_DFLT_SAFETY = common dso_local global i32 0, align 4
@xCmp = common dso_local global i32 0, align 4
@LSM_DFLT_PAGE_SIZE = common dso_local global i32 0, align 4
@LSM_DFLT_BLOCK_SIZE = common dso_local global i32 0, align 4
@LSM_DFLT_AUTOMERGE = common dso_local global i32 0, align 4
@LSM_MAX_FREELIST_ENTRIES = common dso_local global i32 0, align 4
@LSM_DFLT_USE_LOG = common dso_local global i32 0, align 4
@LSM_DFLT_MULTIPLE_PROCESSES = common dso_local global i32 0, align 4
@LSM_DFLT_MMAP = common dso_local global i32 0, align 4
@xLog = common dso_local global i32 0, align 4
@LSM_COMPRESSION_NONE = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsm_new(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32* (...) @lsm_default_env()
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @lsmMallocZero(i32* %14, i32 72)
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %11
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 16
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @LSM_DFLT_AUTOFLUSH, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 15
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @LSM_DFLT_AUTOCHECKPOINT, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @LSM_DFLT_AUTOWORK, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @LSM_DFLT_SAFETY, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @xCmp, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @LSM_DFLT_PAGE_SIZE, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @LSM_DFLT_BLOCK_SIZE, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @LSM_DFLT_AUTOMERGE, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @LSM_MAX_FREELIST_ENTRIES, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @LSM_DFLT_USE_LOG, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load i32, i32* @LSM_DFLT_MULTIPLE_PROCESSES, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @LSM_DFLT_MMAP, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @xLog, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @LSM_COMPRESSION_NONE, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @LSM_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %22, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @lsm_default_env(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @lsmMallocZero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
