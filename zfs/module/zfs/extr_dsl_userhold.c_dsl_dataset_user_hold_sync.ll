; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_dataset_user_hold_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dataset_user_hold_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = call i32 (...) @gethrestime_sec()
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32* (...) @fnvlist_alloc()
  store i32* %21, i32** %7, align 8
  br label %23

22:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @nvlist_next_nvpair(i32 %26, i32* null)
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %51, %23
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @nvpair_name(i32* %33)
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @dsl_dataset_hold(%struct.TYPE_5__* %32, i32 %34, i32 %35, i32** %10)
  %37 = call i32 @VERIFY0(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @fnvpair_value_string(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dsl_dataset_user_hold_sync_one_impl(i32* %38, i32* %39, i32 %41, i64 %44, i32 %45, i32* %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_dataset_rele(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %31
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @nvlist_next_nvpair(i32 %54, i32* %55)
  store i32* %56, i32** %9, align 8
  br label %28

57:                                               ; preds = %28
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dsl_onexit_hold_cleanup(i32 %60, i32* %61, i64 %64)
  ret void
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_5__*, i32, i32, i32**) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @dsl_dataset_user_hold_sync_one_impl(i32*, i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @fnvpair_value_string(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dsl_onexit_hold_cleanup(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
