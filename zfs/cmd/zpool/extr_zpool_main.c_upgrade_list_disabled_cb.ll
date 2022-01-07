; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_list_disabled_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_list_disabled_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8* }

@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@SPA_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [210 x i8] c"\0ASome supported features are not enabled on the following pools. Once a\0Afeature is enabled the pool may become incompatible with software\0Athat does not support the feature. See zpool-features(5) for details.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"POOL  FEATURE\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"---------------\0A\00", align 1
@B_FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@history_str = common dso_local global i32 0, align 4
@log_history = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_list_disabled_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_list_disabled_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @zpool_get_config(i32* %15, i32* null)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %19 = call i64 @nvlist_lookup_uint64(i32* %17, i32 %18, i64* %7)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @verify(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %2
  %27 = load i8*, i8** @B_TRUE, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @zpool_get_features(i32* %28)
  store i32* %29, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %84, %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SPA_FEATURES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @spa_feature_table, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @spa_feature_table, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @nvlist_exists(i32* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %34
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = call i8* @gettext(i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* %57)
  %59 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* %59)
  %61 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = load i8*, i8** @B_FALSE, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %56, %51
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32*, i32** %3, align 8
  %72 = call i8* @zpool_get_name(i32* %71)
  %73 = call i32 (i8*, ...) @printf(i8* %70, i8* %72)
  %74 = load i8*, i8** @B_FALSE, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %69, %66
  %76 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 (i8*, ...) @printf(i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %34
  %80 = load i32, i32* @g_zfs, align 4
  %81 = load i32, i32* @history_str, align 4
  %82 = call i32 @zpool_log_history(i32 %80, i32 %81)
  %83 = load i8*, i8** @B_FALSE, align 8
  store i8* %83, i8** @log_history, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %30

87:                                               ; preds = %30
  br label %88

88:                                               ; preds = %87, %2
  ret i32 0
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @zpool_get_features(i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32 @zpool_log_history(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
