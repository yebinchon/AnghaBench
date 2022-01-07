; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_misc_kstat_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_misc_kstat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, i64 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_40__, %struct.TYPE_38__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }

@KSTAT_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@kcfpool = common dso_local global %struct.TYPE_36__* null, align 8
@kcf_minthreads = common dso_local global i32 0, align 4
@kcf_maxthreads = common dso_local global i32 0, align 4
@gswq = common dso_local global %struct.TYPE_37__* null, align 8
@crypto_taskq_threads = common dso_local global i32 0, align 4
@crypto_taskq_minalloc = common dso_local global i32 0, align 4
@crypto_taskq_maxalloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, i32)* @kcf_misc_kstat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_misc_kstat_update(%struct.TYPE_33__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @KSTAT_WRITE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EACCES, align 4
  store i32 %12, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  store %struct.TYPE_35__* %16, %struct.TYPE_35__** %7, align 8
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** @kcfpool, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** @kcfpool, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** @kcfpool, align 8
  %28 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %32, %13
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load i32, i32* @kcf_minthreads, align 4
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @kcf_maxthreads, align 4
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gswq, align 8
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gswq, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @crypto_taskq_threads, align 4
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* @crypto_taskq_minalloc, align 4
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @crypto_taskq_maxalloc, align 4
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %35, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
