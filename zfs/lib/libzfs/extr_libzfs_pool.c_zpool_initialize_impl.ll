; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_initialize_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_initialize_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ZPOOL_INITIALIZE_VDEVS = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"operation failed\00", align 1
@ZPOOL_WAIT_INITIALIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error waiting for '%s' to initialize\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot initialize '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_initialize_impl(%struct.TYPE_4__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = call i32* (...) @fnvlist_alloc()
  store i32* %18, i32** %10, align 8
  %19 = call i32* (...) @fnvlist_alloc()
  store i32* %19, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @zpool_translate_vdev_guids(%struct.TYPE_4__* %20, i32* %21, i32* %22, i32* %23, i32** %12)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  br label %93

32:                                               ; preds = %4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @lzc_initialize(i32 %35, i32 %36, i32* %37, i32** %13)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %32
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %47 = call i32* @fnvlist_lookup_nvlist(i32* %45, i32 %46)
  store i32* %47, i32** %12, align 8
  br label %93

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i32 @dgettext(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @zpool_standard_error(i32 %51, i32 %52, i32 %54)
  br label %123

56:                                               ; preds = %32
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @nvlist_next_nvpair(i32* %60, i32* null)
  store i32* %61, i32** %14, align 8
  br label %62

62:                                               ; preds = %87, %59
  %63 = load i32*, i32** %14, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @fnvpair_value_uint64(i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ZPOOL_WAIT_INITIALIZE, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @lzc_wait_tag(i32 %70, i32 %71, i32 %72, i32* null)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i32 @dgettext(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32*, i32** %14, align 8
  %84 = call i8* @nvpair_name(i32* %83)
  %85 = call i32 @zpool_standard_error_fmt(i32 %79, i32 %80, i32 %82, i8* %84)
  br label %123

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i32* @nvlist_next_nvpair(i32* %88, i32* %89)
  store i32* %90, i32** %14, align 8
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %56
  br label %123

93:                                               ; preds = %44, %27
  %94 = load i32*, i32** %12, align 8
  %95 = call i32* @nvlist_next_nvpair(i32* %94, i32* null)
  store i32* %95, i32** %14, align 8
  br label %96

96:                                               ; preds = %118, %93
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @fnvpair_value_int64(i32* %100)
  %102 = call i32 @xlate_init_err(i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i8* @nvpair_name(i32* %104)
  %106 = call i64 @nvlist_lookup_string(i32* %103, i8* %105, i8** %17)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32*, i32** %14, align 8
  %110 = call i8* @nvpair_name(i32* %109)
  store i8* %110, i8** %17, align 8
  br label %111

111:                                              ; preds = %108, %99
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @zfs_error_fmt(i32 %114, i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %111
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32* @nvlist_next_nvpair(i32* %119, i32* %120)
  store i32* %121, i32** %14, align 8
  br label %96

122:                                              ; preds = %96
  br label %123

123:                                              ; preds = %122, %92, %76, %48
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @fnvlist_free(i32* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @fnvlist_free(i32* %126)
  %128 = load i32*, i32** %12, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @fnvlist_free(i32* %131)
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 0, i32 -1
  ret i32 %137
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zpool_translate_vdev_guids(%struct.TYPE_4__*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @lzc_initialize(i32, i32, i32*, i32**) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @zpool_standard_error(i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @lzc_wait_tag(i32, i32, i32, i32*) #1

declare dso_local i32 @zpool_standard_error_fmt(i32, i32, i32, i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @xlate_init_err(i32) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @zfs_error_fmt(i32, i32, i8*, i8*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
