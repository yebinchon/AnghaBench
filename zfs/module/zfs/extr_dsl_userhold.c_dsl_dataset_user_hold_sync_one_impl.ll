; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_sync_one_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_sync_one_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64 }

@DMU_OT_USERREFS = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hold\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"tag=%s temp=%d refs=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i8*, i64, i64, i32*)* @dsl_dataset_user_hold_sync_one_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dataset_user_hold_sync_one_impl(i32* %0, %struct.TYPE_11__* %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @RRW_WRITE_HELD(i32* %28)
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %6
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @dmu_buf_will_dirty(i32 %39, i32* %40)
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* @DMU_OT_USERREFS, align 4
  %44 = load i32, i32* @DMU_OT_NONE, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @zap_create(i32* %42, i32 %43, i32 %44, i32 0, i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %47)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  store i64 %46, i64* %15, align 8
  br label %55

50:                                               ; preds = %6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %50, %36
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @zap_add(i32* %60, i64 %61, i8* %62, i32 8, i32 1, i64* %11, i32* %63)
  %65 = call i32 @VERIFY0(i32 %64)
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %55
  %69 = load i32, i32* @MAXNAMELEN, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %16, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %17, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @dsl_pool_user_hold(%struct.TYPE_10__* %73, i64 %76, i8* %77, i64 %78, i32* %79)
  %81 = call i32 @VERIFY0(i32 %80)
  %82 = trunc i64 %70 to i32
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @snprintf(i8* %72, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @nvlist_lookup_nvlist(i32* %88, i8* %72, i32** %18)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %68
  %92 = call i32* (...) @fnvlist_alloc()
  store i32* %92, i32** %18, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @fnvlist_add_boolean(i32* %93, i8* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = call i32 @fnvlist_add_nvlist(i32* %96, i8* %72, i32* %97)
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @fnvlist_free(i32* %99)
  br label %105

101:                                              ; preds = %68
  %102 = load i32*, i32** %18, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @fnvlist_add_boolean(i32* %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %91
  %106 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %105, %55
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @spa_history_log_internal_ds(%struct.TYPE_11__* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %110, i32 %113, i32 %117)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RRW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i64 @zap_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32*, i64, i8*, i32, i32, i64*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_pool_user_hold(%struct.TYPE_10__*, i64, i8*, i64, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_11__*, i8*, i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
