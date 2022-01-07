; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_class_vdevs.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_class_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@VDEV_ALLOC_CLASS_LOGS = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_INDIRECT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"\09%s\09\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@g_zfs = common dso_local global i32 0, align 4
@VDEV_NAME_TYPE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*, i8*)* @print_class_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_class_vdevs(i32* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** @B_FALSE, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ true, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %32 = call i64 @nvlist_lookup_nvlist_array(i32* %30, i32 %31, i32*** %11, i64* %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %132

35:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %129, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %132

40:                                               ; preds = %36
  %41 = load i8*, i8** @B_FALSE, align 8
  store i8* %41, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %42 = load i32**, i32*** %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %47 = call i32 @nvlist_lookup_uint64(i32* %45, i32 %46, i8** %13)
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i8*, i8** @VDEV_ALLOC_CLASS_LOGS, align 8
  store i8* %51, i8** %14, align 8
  br label %65

52:                                               ; preds = %40
  %53 = load i32**, i32*** %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %58 = call i32 @nvlist_lookup_string(i32* %56, i32 %57, i8** %14)
  %59 = load i32**, i32*** %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %64 = call i32 @nvlist_lookup_string(i32* %62, i32 %63, i8** %15)
  br label %65

65:                                               ; preds = %52, %50
  %66 = load i8*, i8** %14, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strcmp(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %65
  br label %129

74:                                               ; preds = %68
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %15, align 8
  %79 = load i8*, i8** @VDEV_TYPE_INDIRECT, align 8
  %80 = call i64 @strcmp(i8* %78, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %129

83:                                               ; preds = %77, %74
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @gettext(i8* %87)
  %89 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** @B_TRUE, align 8
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* @g_zfs, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32**, i32*** %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VDEV_NAME_TYPE_ID, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @zpool_vdev_name(i32 %92, i32* %93, i32* %97, i32 %102)
  store i8* %103, i8** %16, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %91
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load i32**, i32*** %11, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i8*, i8** @B_FALSE, align 8
  %117 = call i32 @print_status_config(i32* %109, %struct.TYPE_5__* %110, i8* %111, i32* %115, i32 2, i8* %116)
  br label %126

118:                                              ; preds = %91
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i32**, i32*** %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @print_import_config(%struct.TYPE_5__* %119, i8* %120, i32* %124, i32 2)
  br label %126

126:                                              ; preds = %118, %108
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 @free(i8* %127)
  br label %129

129:                                              ; preds = %126, %82, %73
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %9, align 8
  br label %36

132:                                              ; preds = %34, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i8**) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @print_status_config(i32*, %struct.TYPE_5__*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @print_import_config(%struct.TYPE_5__*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
