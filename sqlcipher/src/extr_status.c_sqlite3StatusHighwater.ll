; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_status.c_sqlite3StatusHighwater.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_status.c_sqlite3StatusHighwater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@wsdStatInit = common dso_local global i32 0, align 4
@wsdStat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@statMutex = common dso_local global i64* null, align 8
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_PAGECACHE_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_PARSER_STACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3StatusHighwater(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @wsdStatInit, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsdStat, i32 0, i32 1), align 8
  %18 = call i32 @ArraySize(i64* %17)
  %19 = icmp slt i32 %16, %18
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i64*, i64** @statMutex, align 8
  %29 = call i32 @ArraySize(i64* %28)
  %30 = icmp slt i32 %27, %29
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i1 [ false, %20 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64*, i64** @statMutex, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (...) @sqlite3Pcache1Mutex()
  br label %45

43:                                               ; preds = %31
  %44 = call i32 (...) @sqlite3MallocMutex()
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @sqlite3_mutex_held(i32 %46)
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SQLITE_STATUS_PARSER_STACK, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52, %45
  %61 = phi i1 [ true, %52 ], [ true, %45 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* %5, align 8
  %65 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsdStat, i32 0, i32 0), align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load i64, i64* %5, align 8
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsdStat, i32 0, i32 0), align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %60
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(i64*) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3Pcache1Mutex(...) #1

declare dso_local i32 @sqlite3MallocMutex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
