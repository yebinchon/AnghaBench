; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheSetPageSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheSetPageSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*)*, i32 (i32*, i32)*, i32* (i32, i64, i32)* }
%struct.TYPE_7__ = type { i64, i64, i32, i32*, i32, i64 }

@sqlite3GlobalConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%p.PAGESIZE %d\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PcacheSetPageSize(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %16
  %25 = load i32* (i32, i64, i32)*, i32* (i32, i64, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sqlite3GlobalConfig, i32 0, i32 0, i32 2), align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ROUND8(i32 4)
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32* %25(i32 %26, i64 %31, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %24
  %41 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @numberOfCachePages(%struct.TYPE_7__* %43)
  %45 = call i32 %41(i32* %42, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 %51(i32* %54)
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @pcacheTrace(i8* %66)
  br label %68

68:                                               ; preds = %56, %16
  %69 = load i32, i32* @SQLITE_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %38
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ROUND8(i32) #1

declare dso_local i32 @numberOfCachePages(%struct.TYPE_7__*) #1

declare dso_local i32 @pcacheTrace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
