; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_file.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_shared = common dso_local global %struct.TYPE_3__* null, align 8
@ztest_aux_template = common dso_local global i8* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ztest_dev_template = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't ftruncate %s\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i64)* @make_vdev_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_file(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = load i32, i32* @UMEM_NOFAIL, align 4
  %17 = call i8* @umem_alloc(i32 %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i64 (...) @ztest_get_ashift()
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_shared, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @MAXPATHLEN, align 4
  %35 = load i8*, i8** @ztest_aux_template, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 1), align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 0), align 8
  br label %43

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i8* [ %40, %39 ], [ %42, %41 ]
  %45 = load i8*, i8** %7, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i64, i64* %12, align 8
  %48 = call i32 (i8*, i32, i8*, i32, i8*, i64, ...) @snprintf(i8* %33, i32 %34, i8* %35, i32 %36, i8* %44, i64 %46, i64 %47)
  br label %69

49:                                               ; preds = %25
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ztest_shared, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  store i64 %54, i64* %12, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @MAXPATHLEN, align 4
  %57 = load i8*, i8** @ztest_dev_template, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 1), align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ztest_opts, i32 0, i32 0), align 8
  br label %65

63:                                               ; preds = %49
  %64 = load i8*, i8** %8, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ]
  %67 = load i64, i64* %12, align 8
  %68 = call i32 (i8*, i32, i8*, i32, i8*, i64, ...) @snprintf(i8* %55, i32 %56, i8* %57, i32 %58, i8* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %43
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @O_RDWR, align 4
  %76 = load i32, i32* @O_CREAT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @O_TRUNC, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @open(i8* %74, i32 %79, i32 438)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @ftruncate(i32 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %70
  %98 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %99 = call i64 @nvlist_alloc(i32** %13, i32 %98, i32 0)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @VERIFY(i32 %101)
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %105 = load i8*, i8** @VDEV_TYPE_FILE, align 8
  %106 = call i64 @nvlist_add_string(i32* %103, i32 %104, i8* %105)
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @VERIFY(i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @nvlist_add_string(i32* %110, i32 %111, i8* %112)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @VERIFY(i32 %115)
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @nvlist_add_uint64(i32* %117, i32 %118, i64 %119)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @VERIFY(i32 %122)
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* @MAXPATHLEN, align 4
  %126 = call i32 @umem_free(i8* %124, i32 %125)
  %127 = load i32*, i32** %13, align 8
  ret i32* %127
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i64 @ztest_get_ashift(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fatal(i32, i8*, i8*) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
