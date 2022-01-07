; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_trim.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@ZPOOL_TRIM_VDEVS = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"operation failed\00", align 1
@EZFS_TRIM_NOTSUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot trim '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_trim(%struct.TYPE_6__* %0, i32 %1, i32* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %19 = call i32* (...) @fnvlist_alloc()
  store i32* %19, i32** %12, align 8
  %20 = call i32* (...) @fnvlist_alloc()
  store i32* %20, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @zpool_translate_vdev_guids(%struct.TYPE_6__* %21, i32* %22, i32* %23, i32* %24, i32** %14)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @lzc_trim(i32 %31, i32 %32, i32 %35, i32 %38, i32* %39, i32** %15)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fnvlist_free(i32* %44)
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @fnvlist_free(i32* %46)
  store i32 0, i32* %5, align 4
  br label %126

48:                                               ; preds = %28
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* @ZPOOL_TRIM_VDEVS, align 4
  %54 = call i32* @fnvlist_lookup_nvlist(i32* %52, i32 %53)
  store i32* %54, i32** %14, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %57 = load i32, i32* @TEXT_DOMAIN, align 4
  %58 = call i8* @dgettext(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @snprintf(i8* %56, i32 1024, i8* %58)
  br label %65

60:                                               ; preds = %4
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @verify(i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32*, i32** %14, align 8
  %67 = call i32* @nvlist_next_nvpair(i32* %66, i32* null)
  store i32* %67, i32** %16, align 8
  br label %68

68:                                               ; preds = %105, %65
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %109

71:                                               ; preds = %68
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @fnvpair_value_int64(i32* %72)
  %74 = call i64 @xlate_trim_err(i32 %73)
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @EZFS_TRIM_NOTSUP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %105

89:                                               ; preds = %83, %78, %71
  %90 = load i32*, i32** %13, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = call i8* @nvpair_name(i32* %91)
  %93 = call i64 @nvlist_lookup_string(i32* %90, i8* %92, i8** %18)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %16, align 8
  %97 = call i8* @nvpair_name(i32* %96)
  store i8* %97, i8** %18, align 8
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %17, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 @zfs_error_fmt(i32 %101, i64 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %98, %88
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32* @nvlist_next_nvpair(i32* %106, i32* %107)
  store i32* %108, i32** %16, align 8
  br label %68

109:                                              ; preds = %68
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @fnvlist_free(i32* %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @fnvlist_free(i32* %112)
  %114 = load i32*, i32** %14, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @fnvlist_free(i32* %117)
  store i32 -1, i32* %5, align 4
  br label %126

119:                                              ; preds = %109
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %125 = call i32 @zpool_standard_error(i32 %122, i32 %123, i8* %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %119, %116, %43
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zpool_translate_vdev_guids(%struct.TYPE_6__*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @lzc_trim(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @xlate_trim_err(i32) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_error_fmt(i32, i64, i8*, i8*) #1

declare dso_local i32 @zpool_standard_error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
