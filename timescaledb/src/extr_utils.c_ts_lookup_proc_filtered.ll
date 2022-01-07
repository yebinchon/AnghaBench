; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_lookup_proc_filtered.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_lookup_proc_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@PROCNAMEARGSNSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ts_lookup_proc_filtered(i8* %0, i8* %1, i64* %2, i64 (%struct.TYPE_9__*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64 (%struct.TYPE_9__*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 (%struct.TYPE_9__*, i8*)* %3, i64 (%struct.TYPE_9__*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @LookupExplicitNamespace(i8* %17, i32 0)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* @InvalidOid, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @CStringGetDatum(i8* %21)
  %23 = call %struct.TYPE_10__* @SearchSysCacheList1(i32 %20, i32 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %69, %5
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @GETSTRUCT(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %16, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %30
  %49 = load i64 (%struct.TYPE_9__*, i8*)*, i64 (%struct.TYPE_9__*, i8*)** %9, align 8
  %50 = icmp eq i64 (%struct.TYPE_9__*, i8*)* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64 (%struct.TYPE_9__*, i8*)*, i64 (%struct.TYPE_9__*, i8*)** %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 %52(%struct.TYPE_9__* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51, %48
  %58 = load i64*, i64** %8, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32*, i32** %15, align 8
  %67 = call i64 @HeapTupleGetOid(i32* %66)
  store i64 %67, i64* %12, align 8
  br label %72

68:                                               ; preds = %51, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %24

72:                                               ; preds = %65, %24
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %74 = call i32 @ReleaseSysCacheList(%struct.TYPE_10__* %73)
  %75 = load i64, i64* %12, align 8
  ret i64 %75
}

declare dso_local i64 @LookupExplicitNamespace(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @HeapTupleGetOid(i32*) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
