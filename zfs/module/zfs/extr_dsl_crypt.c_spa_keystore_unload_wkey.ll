; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_unload_wkey.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_unload_wkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@FREAD = common dso_local global i64 0, align 8
@SPA_FEATURE_ENCRYPTION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_keystore_unload_wkey(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @FTAG, align 4
  %10 = call i32 @spa_open(i8* %8, %struct.TYPE_12__** %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %93

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = call i64 @spa_mode(%struct.TYPE_12__* %16)
  %18 = load i64, i64* @FREAD, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @txg_wait_synced(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = load i32, i32* @FTAG, align 4
  %28 = call i32 @spa_close(%struct.TYPE_12__* %26, i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_pool_hold(i8* %29, i32 %30, %struct.TYPE_13__** %6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %77

35:                                               ; preds = %25
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SPA_FEATURE_ENCRYPTION, align 4
  %40 = call i32 @spa_feature_is_enabled(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOTSUP, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @dsl_dir_hold(%struct.TYPE_13__* %46, i8* %47, i32 %48, %struct.TYPE_14__** %5, i32* null)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @spa_keystore_unload_wkey_impl(i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %77

64:                                               ; preds = %53
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dsl_dir_rele(%struct.TYPE_14__* %65, i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dsl_pool_rele(%struct.TYPE_13__* %68, i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* @B_TRUE, align 4
  %76 = call i32 @zvol_remove_minors(i32 %73, i8* %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %93

77:                                               ; preds = %63, %52, %42, %34
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = load i32, i32* @FTAG, align 4
  %83 = call i32 @dsl_dir_rele(%struct.TYPE_14__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = load i32, i32* @FTAG, align 4
  %90 = call i32 @dsl_pool_rele(%struct.TYPE_13__* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %64, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @spa_open(i8*, %struct.TYPE_12__**, i32) #1

declare dso_local i64 @spa_mode(%struct.TYPE_12__*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_close(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_13__*, i8*, i32, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @spa_keystore_unload_wkey_impl(i32, i32) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_pool_rele(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @zvol_remove_minors(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
