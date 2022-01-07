; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_vdev_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_vdev_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_SPARES = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_L2CACHE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32 (i32*, i32*, i8*)*, i8*)* @for_each_vdev_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_vdev_cb(i32* %0, i32* %1, i32 (i32*, i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [3 x i8*], align 16
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i32*, i32*, i8*)* %2, i32 (i32*, i32*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  %19 = load i8*, i8** @ZPOOL_CONFIG_SPARES, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  %21 = load i8*, i8** @ZPOOL_CONFIG_L2CACHE, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 1
  %23 = load i8*, i8** @ZPOOL_CONFIG_CHILDREN, align 8
  store i8* %23, i8** %22, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %68, %4
  %25 = load i32, i32* %14, align 4
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %16, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @nvlist_lookup_nvlist_array(i32* %30, i8* %34, i32*** %10, i64* %12)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  store i64 0, i64* %17, align 8
  %43 = load i32**, i32*** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %48 = call i32 @nvlist_lookup_uint64(i32* %46, i32 %47, i64* %17)
  %49 = load i64, i64* %17, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %63

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = load i32**, i32*** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @for_each_vdev_cb(i32* %53, i32* %57, i32 (i32*, i32*, i8*)* %58, i8* %59)
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %52, %51
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %38

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %24

71:                                               ; preds = %24
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %74 = call i64 @nvlist_lookup_string(i32* %72, i32 %73, i8** %15)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %93

78:                                               ; preds = %71
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* @VDEV_TYPE_ROOT, align 4
  %81 = call i64 @strcmp(i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32 (i32*, i32*, i8*)*, i32 (i32*, i32*, i8*)** %8, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 %84(i32* %85, i32* %86, i8* %87)
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %83, %78
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %76
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i8*, i32***, i64*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
