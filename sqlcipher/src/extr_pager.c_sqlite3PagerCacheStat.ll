; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerCacheStat.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerCacheStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@SQLITE_DBSTATUS_CACHE_HIT = common dso_local global i32 0, align 4
@SQLITE_DBSTATUS_CACHE_MISS = common dso_local global i32 0, align 4
@SQLITE_DBSTATUS_CACHE_WRITE = common dso_local global i32 0, align 4
@PAGER_STAT_HIT = common dso_local global i64 0, align 8
@PAGER_STAT_MISS = common dso_local global i32 0, align 4
@PAGER_STAT_WRITE = common dso_local global i32 0, align 4
@PAGER_STAT_SPILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3PagerCacheStat(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SQLITE_DBSTATUS_CACHE_MISS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br label %25

25:                                               ; preds = %20, %16, %12, %4
  %26 = phi i1 [ true, %16 ], [ true, %12 ], [ true, %4 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @SQLITE_DBSTATUS_CACHE_MISS, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %36 = add nsw i32 %35, 2
  %37 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @PAGER_STAT_HIT, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %25
  %44 = load i32, i32* @PAGER_STAT_MISS, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @PAGER_STAT_WRITE, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @PAGER_STAT_SPILL, align 4
  %51 = icmp eq i32 %50, 3
  br label %52

52:                                               ; preds = %49, %46, %43, %25
  %53 = phi i1 [ false, %46 ], [ false, %43 ], [ false, %25 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %65
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %52
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %52
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
