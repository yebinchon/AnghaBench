; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_root.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_make_vdev_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i32, i8*, i32, i32, i32)* @make_vdev_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_vdev_root(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load i8*, i8** %15, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %29, %9
  %34 = phi i1 [ false, %9 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @UMEM_NOFAIL, align 4
  %41 = call i32** @umem_alloc(i32 %39, i32 %40)
  store i32** %41, i32*** %20, align 8
  store i32 0, i32* %21, align 4
  br label %42

42:                                               ; preds = %100, %33
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32* @make_vdev_mirror(i8* %47, i8* %48, i8* %49, i64 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32**, i32*** %20, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* %54, i32** %58, align 8
  %59 = load i32**, i32*** %20, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %65 = load i32, i32* %22, align 4
  %66 = call i64 @nvlist_add_uint64(i32* %63, i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load i8*, i8** %15, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %99

72:                                               ; preds = %46
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load i32, i32* %17, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i1 [ true, %78 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32**, i32*** %20, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = call i64 @nvlist_add_string(i32* %92, i32 %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  br label %99

99:                                               ; preds = %84, %72, %46
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %21, align 4
  br label %42

103:                                              ; preds = %42
  %104 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %105 = call i64 @nvlist_alloc(i32** %19, i32 %104, i32 0)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %111 = load i8*, i8** @VDEV_TYPE_ROOT, align 8
  %112 = call i64 @nvlist_add_string(i32* %109, i32 %110, i8* %111)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @VERIFY(i32 %114)
  %116 = load i32*, i32** %19, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i8*, i8** %11, align 8
  br label %123

121:                                              ; preds = %103
  %122 = load i8*, i8** @ZPOOL_CONFIG_CHILDREN, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = load i32**, i32*** %20, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i64 @nvlist_add_nvlist_array(i32* %116, i8* %124, i32** %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @VERIFY(i32 %129)
  store i32 0, i32* %21, align 4
  br label %131

131:                                              ; preds = %142, %123
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32**, i32*** %20, align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @nvlist_free(i32* %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load i32**, i32*** %20, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @umem_free(i32** %146, i32 %150)
  %152 = load i32*, i32** %19, align 8
  ret i32* %152
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32** @umem_alloc(i32, i32) #1

declare dso_local i32* @make_vdev_mirror(i8*, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i8*, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
