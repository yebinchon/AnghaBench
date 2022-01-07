; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_verify_checkpoint.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_verify_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ZPOOL_CHECKPOINT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"\0APartially discarded checkpoint state found:\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"lookup error %d when looking for checkpointed uberblock in MOS\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\0ACheckpointed uberblock found:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\0Aub_checkpoint_txg not set in checkpointed uberblock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @verify_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_checkpoint(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %8 = call i32 @spa_feature_is_active(%struct.TYPE_10__* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %16 = load i32, i32* @DMU_POOL_ZPOOL_CHECKPOINT, align 4
  %17 = call i32 @zap_lookup(i32 %14, i32 %15, i32 %16, i32 4, i32 2, %struct.TYPE_9__* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %11
  %22 = load i32*, i32** @dump_opt, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 76
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** @dump_opt, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 109
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @dump_leftover_checkpoint_blocks(%struct.TYPE_10__* %33)
  br label %35

35:                                               ; preds = %32, %26
  store i32 0, i32* %2, align 4
  br label %64

36:                                               ; preds = %21, %11
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = call i32 @dump_uberblock(%struct.TYPE_9__* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32*, i32** @dump_opt, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 76
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i32 @verify_checkpoint_blocks(%struct.TYPE_10__* %60)
  br label %62

62:                                               ; preds = %59, %54, %51
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %39, %35, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_leftover_checkpoint_blocks(%struct.TYPE_10__*) #1

declare dso_local i32 @dump_uberblock(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @verify_checkpoint_blocks(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
