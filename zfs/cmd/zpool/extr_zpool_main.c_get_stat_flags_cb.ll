; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_stat_flags_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_stat_flags_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i64 0, align 8
@IOS_DEFAULT_M = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_VDEV_STATS_EX = common dso_local global i32 0, align 4
@vsx_type_to_nvlist = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_stat_flags_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stat_flags_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @zpool_get_config(i32* %14, i32* null)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %18 = call i64 @nvlist_lookup_nvlist(i32* %16, i32 %17, i32** %7)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @verify(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* @ZPOOL_CONFIG_VDEV_STATS, align 8
  %24 = call i64 @nvlist_exists(i32* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i64, i64* @IOS_DEFAULT_M, align 8
  %28 = load i64, i64* %9, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS_EX, align 4
  %33 = call i64 @nvlist_lookup_nvlist(i32* %31, i32 %32, i32** %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %98

36:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %94, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i64**, i64*** @vsx_type_to_nvlist, align 8
  %40 = call i32 @ARRAY_SIZE(i64** %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %37
  %43 = load i64**, i64*** @vsx_type_to_nvlist, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64*, i64** %43, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %94

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 1, %54
  %56 = load i64, i64* %9, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %90, %52
  %59 = load i64**, i64*** @vsx_type_to_nvlist, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %58
  %70 = load i32*, i32** %8, align 8
  %71 = load i64**, i64*** @vsx_type_to_nvlist, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @nvlist_exists(i32* %70, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %69
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = shl i64 1, %85
  %87 = xor i64 %86, -1
  %88 = and i64 %83, %87
  store i64 %88, i64* %9, align 8
  br label %93

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %58

93:                                               ; preds = %82, %58
  br label %94

94:                                               ; preds = %93, %51
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %37

97:                                               ; preds = %37
  br label %98

98:                                               ; preds = %97, %35
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %100, %101
  %103 = load i64*, i64** %5, align 8
  store i64 %102, i64* %103, align 8
  ret i32 0
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_exists(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
