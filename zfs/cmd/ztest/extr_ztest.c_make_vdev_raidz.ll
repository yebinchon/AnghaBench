; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_raidz.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_raidz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i32, i32)* @make_vdev_raidz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_raidz(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32* @make_vdev_file(i8* %20, i8* %21, i8* %22, i64 %23, i32 %24)
  store i32* %25, i32** %7, align 8
  br label %101

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @UMEM_NOFAIL, align 4
  %32 = call i32** @umem_alloc(i32 %30, i32 %31)
  store i32** %32, i32*** %15, align 8
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %48, %26
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32* @make_vdev_file(i8* %38, i8* %39, i8* %40, i64 %41, i32 %42)
  %44 = load i32**, i32*** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* %43, i32** %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %53 = call i64 @nvlist_alloc(i32** %14, i32 %52, i32 0)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @VERIFY(i32 %55)
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %59 = load i32, i32* @VDEV_TYPE_RAIDZ, align 4
  %60 = call i64 @nvlist_add_string(i32* %57, i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %67 = call i64 @nvlist_add_uint64(i32* %64, i32 %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %73 = load i32**, i32*** %15, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @nvlist_add_nvlist_array(i32* %71, i32 %72, i32** %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @VERIFY(i32 %77)
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %90, %51
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32**, i32*** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @nvlist_free(i32* %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i32**, i32*** %15, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @umem_free(i32** %94, i32 %98)
  %100 = load i32*, i32** %14, align 8
  store i32* %100, i32** %7, align 8
  br label %101

101:                                              ; preds = %93, %19
  %102 = load i32*, i32** %7, align 8
  ret i32* %102
}

declare dso_local i32* @make_vdev_file(i8*, i8*, i8*, i64, i32) #1

declare dso_local i32** @umem_alloc(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
