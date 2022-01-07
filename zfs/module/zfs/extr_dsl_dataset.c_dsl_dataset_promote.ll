; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_promote.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@dsl_dataset_promote_check = common dso_local global i32 0, align 4
@dsl_dataset_promote_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_promote(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @FTAG, align 4
  %14 = call i32 @dmu_objset_hold(i8* %12, i32 %13, i32** %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_7__* @dmu_objset_pool(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @dmu_objset_ds(i32* %24)
  %26 = call %struct.TYPE_6__* @dsl_dataset_phys(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zap_count(i32 %23, i32 %28, i64* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dmu_objset_rele(i32* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %19
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = call i32 (...) @fnvlist_alloc()
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = call i32 (...) @CRED()
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @dsl_dataset_promote_check, align 4
  %46 = load i32, i32* @dsl_dataset_promote_sync, align 4
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 2, %47
  %49 = load i32, i32* @ZFS_SPACE_CHECK_RESERVED, align 4
  %50 = call i32 @dsl_sync_task(i8* %44, i32 %45, i32 %46, %struct.TYPE_5__* %6, i64 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @nvlist_next_nvpair(i32 %52, i32* null)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %37
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @nvpair_name(i32* %61)
  %63 = call i32 @strcpy(i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %56, %37
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fnvlist_free(i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %35, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #2

declare dso_local i32 @zap_count(i32, i32, i64*) #2

declare dso_local %struct.TYPE_7__* @dmu_objset_pool(i32*) #2

declare dso_local %struct.TYPE_6__* @dsl_dataset_phys(i32) #2

declare dso_local i32 @dmu_objset_ds(i32*) #2

declare dso_local i32 @dmu_objset_rele(i32*, i32) #2

declare dso_local i32 @fnvlist_alloc(...) #2

declare dso_local i32 @CRED(...) #2

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_5__*, i64, i32) #2

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i32 @fnvlist_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
