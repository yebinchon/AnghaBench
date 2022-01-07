; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_replace_with_spare.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_replace_with_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_PROP_ASHIFT = common dso_local global i32 0, align 4
@FMD_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"zpool_vdev_replace '%s' with spare '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @replace_with_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_with_spare(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @zpool_get_config(i32* %18, i32* null)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %22 = call i64 @nvlist_lookup_nvlist(i32* %20, i32 %21, i32** %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %108

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %29 = call i64 @nvlist_lookup_nvlist_array(i32* %27, i32 %28, i32*** %11, i64* %13)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @B_FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %108

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @ZPOOL_PROP_ASHIFT, align 4
  %36 = call i32 @zpool_get_prop_int(i32* %34, i32 %35, i64* %15)
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @FMD_SLEEP, align 4
  %39 = call i32* @fmd_nvl_alloc(i32* %37, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %42 = load i32, i32* @VDEV_TYPE_ROOT, align 4
  %43 = call i32 @nvlist_add_string(i32* %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i8* @zpool_vdev_name(i32* null, i32* %44, i32* %45, i32 %46)
  store i8* %47, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %99, %33
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %48
  %53 = load i32**, i32*** %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %58 = call i64 @nvlist_lookup_string(i32* %56, i32 %57, i8** %17)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %99

61:                                               ; preds = %52
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32**, i32*** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @nvlist_add_uint64(i32* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %61
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %76 = load i32**, i32*** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = call i32 @nvlist_add_nvlist_array(i32* %74, i32 %75, i32** %78, i32 1)
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @basename(i8* %82)
  %84 = call i32 @fmd_hdl_debug(i32* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %81, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @B_TRUE, align 4
  %90 = call i64 @zpool_vdev_attach(i32* %85, i8* %86, i8* %87, i32* %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %73
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @nvlist_free(i32* %95)
  %97 = load i32, i32* @B_TRUE, align 4
  store i32 %97, i32* %4, align 4
  br label %108

98:                                               ; preds = %73
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %48

102:                                              ; preds = %48
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @nvlist_free(i32* %105)
  %107 = load i32, i32* @B_FALSE, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %92, %31, %24
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @zpool_get_prop_int(i32*, i32, i64*) #1

declare dso_local i32* @fmd_nvl_alloc(i32*, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i8* @zpool_vdev_name(i32*, i32*, i32*, i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i8*, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i64 @zpool_vdev_attach(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
