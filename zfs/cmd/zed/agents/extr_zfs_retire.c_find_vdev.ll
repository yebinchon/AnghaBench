; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_find_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_find_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"zfs-retire\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"matched vdev %llu\00", align 1
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64)* @find_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_vdev(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %15 = call i64 @nvlist_lookup_uint64(i32* %13, i32 %14, i64* %8)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = call i32 @fmd_module_hdl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @fmd_hdl_debug(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %4, align 8
  br label %105

26:                                               ; preds = %17, %3
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %29 = call i64 @nvlist_lookup_nvlist_array(i32* %27, i32 %28, i32*** %9, i64* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %105

32:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32**, i32*** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32* @find_vdev(i32* %38, i32* %42, i64 %43)
  store i32* %44, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32*, i32** %12, align 8
  store i32* %47, i32** %4, align 8
  br label %105

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %55 = call i64 @nvlist_lookup_nvlist_array(i32* %53, i32 %54, i32*** %9, i64* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32* null, i32** %4, align 8
  br label %105

58:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32**, i32*** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @find_vdev(i32* %64, i32* %68, i64 %69)
  store i32* %70, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32*, i32** %12, align 8
  store i32* %73, i32** %4, align 8
  br label %105

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %81 = call i64 @nvlist_lookup_nvlist_array(i32* %79, i32 %80, i32*** %9, i64* %11)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32* null, i32** %4, align 8
  br label %105

84:                                               ; preds = %78
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = load i32**, i32*** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32* @find_vdev(i32* %90, i32* %94, i64 %95)
  store i32* %96, i32** %12, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32*, i32** %12, align 8
  store i32* %99, i32** %4, align 8
  br label %105

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %85

104:                                              ; preds = %85
  store i32* null, i32** %4, align 8
  br label %105

105:                                              ; preds = %104, %98, %83, %72, %57, %46, %31, %21
  %106 = load i32*, i32** %4, align 8
  ret i32* %106
}

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @fmd_hdl_debug(i32, i8*, i64) #1

declare dso_local i32 @fmd_module_hdl(i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
