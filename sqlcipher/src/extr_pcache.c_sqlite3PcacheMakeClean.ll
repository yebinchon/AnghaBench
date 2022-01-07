; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheMakeClean.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheMakeClean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@PGHDR_DIRTY = common dso_local global i32 0, align 4
@PGHDR_CLEAN = common dso_local global i32 0, align 4
@PCACHE_DIRTYLIST_REMOVE = common dso_local global i32 0, align 4
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@PGHDR_WRITEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p.CLEAN %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3PcacheMakeClean(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @sqlite3PcachePageSanity(%struct.TYPE_6__* %3)
  %5 = call i32 @assert(i32 %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PGHDR_DIRTY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PGHDR_CLEAN, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = load i32, i32* @PCACHE_DIRTYLIST_REMOVE, align 4
  %24 = call i32 @pcacheManageDirtyList(%struct.TYPE_6__* %22, i32 %23)
  %25 = load i32, i32* @PGHDR_DIRTY, align 4
  %26 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PGHDR_WRITEABLE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @PGHDR_CLEAN, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @pcacheTrace(i8* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = call i32 @sqlite3PcachePageSanity(%struct.TYPE_6__* %49)
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = call i32 @pcacheUnpin(%struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %56, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PcachePageSanity(%struct.TYPE_6__*) #1

declare dso_local i32 @pcacheManageDirtyList(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pcacheTrace(i8*) #1

declare dso_local i32 @pcacheUnpin(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
