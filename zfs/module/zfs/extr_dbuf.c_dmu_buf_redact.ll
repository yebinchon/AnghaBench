; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_redact.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_redact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_buf_redact(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %8 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %9 = bitcast %struct.TYPE_31__* %8 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %9, %struct.TYPE_32__** %5, align 8
  %10 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %16 = call i32 @dsl_dataset_feature_is_active(i32 %14, i32 %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %19 = call i32 @DB_DNODE_ENTER(%struct.TYPE_32__* %18)
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %21 = call %struct.TYPE_25__* @DB_DNODE(%struct.TYPE_32__* %20)
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %25 = call i32 @DB_DNODE_EXIT(%struct.TYPE_32__* %24)
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ASSERT0(i32 %28)
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %32 = call i32 @dmu_buf_will_not_fill(%struct.TYPE_31__* %30, %struct.TYPE_30__* %31)
  %33 = bitcast %struct.TYPE_33__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 4, i1 false)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BP_SET_TYPE(%struct.TYPE_33__* %7, i32 %34)
  %36 = call i32 @BP_SET_LEVEL(%struct.TYPE_33__* %7, i32 0)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BP_SET_BIRTH(%struct.TYPE_33__* %7, i32 %39, i32 0)
  %41 = call i32 @BP_SET_REDACTED(%struct.TYPE_33__* %7)
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BPE_SET_LSIZE(%struct.TYPE_33__* %7, i32 %44)
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %48 = call i32 @dbuf_override_impl(%struct.TYPE_32__* %46, %struct.TYPE_33__* %7, %struct.TYPE_30__* %47)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_dataset_feature_is_active(i32, i32) #1

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_25__* @DB_DNODE(%struct.TYPE_32__*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @dmu_buf_will_not_fill(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BP_SET_TYPE(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @BP_SET_LEVEL(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @BP_SET_BIRTH(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @BP_SET_REDACTED(%struct.TYPE_33__*) #1

declare dso_local i32 @BPE_SET_LSIZE(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @dbuf_override_impl(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
