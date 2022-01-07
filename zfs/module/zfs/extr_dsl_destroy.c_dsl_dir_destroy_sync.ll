; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_dir_destroy_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_dir_destroy_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i32*, i32, i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@DD_USED_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @dsl_dir_destroy_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_destroy_sync(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_11__* @dmu_tx_pool(i32* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_11__* @dmu_tx_pool(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = call i32 @RRW_WRITE_HELD(i32* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_dir_hold_obj(%struct.TYPE_11__* %19, i32 %20, i32* null, i32 %21, %struct.TYPE_12__** %5)
  %23 = call i32 @VERIFY0(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %24)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ASSERT0(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_12__* %36, i32 -1, i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @dsl_dir_set_reservation_sync_impl(%struct.TYPE_12__* %41, i32 0, i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ASSERT0(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ASSERT0(i32 %52)
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %67, %40
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @DD_USED_NUM, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %59)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ASSERT0(i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @dsl_crypto_key_destroy_sync(i64 %78, i32* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @spa_keystore_unload_wkey_impl(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %75, %70
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %90)
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @zap_destroy(i32* %89, i64 %93, i32* %94)
  %96 = call i32 @VERIFY0(i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %98)
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @zap_destroy(i32* %97, i64 %101, i32* %102)
  %104 = call i32 @VERIFY0(i32 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %88
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %112)
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @zap_destroy(i32* %111, i64 %115, i32* %116)
  %118 = call i32 @VERIFY0(i32 %117)
  br label %119

119:                                              ; preds = %110, %88
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %121)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @dsl_deleg_destroy(i32* %120, i32 %124, i32* %125)
  %127 = call i32 @VERIFY0(i32 %126)
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = call %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__* %131)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @zap_remove(i32* %128, i64 %134, i32 %137, i32* %138)
  %140 = call i32 @VERIFY0(i32 %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = load i32, i32* @FTAG, align 4
  %143 = call i32 @dsl_dir_rele(%struct.TYPE_12__* %141, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @dmu_object_free_zapified(i32* %144, i32 %145, i32* %146)
  ret void
}

declare dso_local %struct.TYPE_11__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RRW_WRITE_HELD(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_11__*, i32, i32*, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local %struct.TYPE_13__* @dsl_dir_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_fs_ss_count_adjust(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dir_set_reservation_sync_impl(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @dsl_crypto_key_destroy_sync(i64, i32*) #1

declare dso_local i32 @spa_keystore_unload_wkey_impl(i32, i32) #1

declare dso_local i32 @zap_destroy(i32*, i64, i32*) #1

declare dso_local i32 @dsl_deleg_destroy(i32*, i32, i32*) #1

declare dso_local i32 @zap_remove(i32*, i64, i32, i32*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dmu_object_free_zapified(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
