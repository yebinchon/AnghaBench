; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_build_index.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_build_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@SA_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Buffer Header: %x != SA_MAGIC:%x object=%#llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SA_BONUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64)* @sa_build_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_build_index(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.TYPE_19__* @SA_GET_DB(%struct.TYPE_18__* %11, i64 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %15 = call i32 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_19__* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.TYPE_17__* @SA_GET_HDR(%struct.TYPE_18__* %21, i64 %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @IS_SA_BONUSTYPE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SA_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @BSWAP_32(i64 %44)
  %46 = load i64, i64* @SA_MAGIC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = call i32 @mutex_exit(i32* %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SA_MAGIC, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55, i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %41
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @sa_byteswap(%struct.TYPE_18__* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %36, %30, %2
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = call i32* @sa_find_idx_tab(%struct.TYPE_20__* %70, i32 %71, %struct.TYPE_17__* %72)
  store i32* %73, i32** %10, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @SA_BONUS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  br label %85

81:                                               ; preds = %67
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store i32* %82, i32** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = call i32 @mutex_exit(i32* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %48
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_19__* @SA_GET_DB(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @SA_GET_HDR(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @IS_SA_BONUSTYPE(i32) #1

declare dso_local i64 @BSWAP_32(i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i64, i64, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @sa_byteswap(%struct.TYPE_18__*, i64) #1

declare dso_local i32* @sa_find_idx_tab(%struct.TYPE_20__*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
