; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_userquota_find_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_userquota_find_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_19__, %struct.TYPE_23__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@DMU_SPILL_BLKID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, %struct.TYPE_21__*)* @dmu_objset_userquota_find_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmu_objset_userquota_find_data(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  store %struct.TYPE_23__** %21, %struct.TYPE_23__*** %7, align 8
  br label %22

22:                                               ; preds = %36, %19
  %23 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %6, align 8
  %25 = icmp ne %struct.TYPE_23__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 3
  store %struct.TYPE_23__** %38, %struct.TYPE_23__*** %7, align 8
  br label %22

39:                                               ; preds = %34, %22
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = icmp eq %struct.TYPE_23__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %84

43:                                               ; preds = %39
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call i32 @DB_DNODE_ENTER(%struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = call %struct.TYPE_20__* @DB_DNODE(%struct.TYPE_15__* %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %9, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMU_SPILL_BLKID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %8, align 8
  br label %79

72:                                               ; preds = %56, %43
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = bitcast %struct.TYPE_17__* %77 to i8*
  store i8* %78, i8** %8, align 8
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = call i32 @DB_DNODE_EXIT(%struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %79, %42
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %84, %14
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_20__* @DB_DNODE(%struct.TYPE_15__*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
