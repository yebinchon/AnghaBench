; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_enable_all.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@B_TRUE = common dso_local global i64 0, align 8
@SPA_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"feature@%s\00", align 1
@ZFS_FEATURE_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Enabled the following features on '%s':\0A\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @upgrade_enable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_enable_all(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i64, i64* @B_TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @zpool_get_features(i32* %15)
  store i32* %16, i32** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SPA_FEATURES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spa_feature_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spa_feature_table, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @nvlist_exists(i32* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %21
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = icmp ne i32 -1, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @verify(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* @ZFS_FEATURE_ENABLED, align 4
  %47 = call i32 @zpool_set_prop(i32* %44, i8* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @zpool_get_name(i32* %61)
  %63 = call i32 @printf(i8* %60, i8* %62)
  %64 = load i64, i64* @B_FALSE, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @printf(i8* %66, i8* %67)
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %65, %21
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load i32*, i32** %5, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32* @zpool_get_features(i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @zpool_set_prop(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
