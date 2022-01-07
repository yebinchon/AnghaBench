; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_add_prop_list.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_add_prop_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_PROP_INVAL = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"internal error: out of memory\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"property '%s' is not a valid pool property\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"'feature@' and 'version' properties cannot be specified together\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"property '%s' is not a valid filesystem property\0A\00", align 1
@ZPOOL_PROP_CACHEFILE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"property '%s' specified multiple times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32**, i64)* @add_prop_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_prop_list(i8* %0, i8* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @ZPOOL_PROP_INVAL, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = call i64 @nvlist_alloc(i32** %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* %27)
  store i32 1, i32* %5, align 4
  br label %138

29:                                               ; preds = %20, %4
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %29
  %35 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %36 = call i8* @zpool_prop_to_name(i64 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @zpool_name_to_prop(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* @ZPOOL_PROP_INVAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @zpool_prop_feature(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* %47, i8* %48)
  store i32 2, i32* %5, align 4
  br label %138

50:                                               ; preds = %41, %34
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @ZPOOL_PROP_INVAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @zpool_prop_feature(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i64 @nvlist_exists(i32* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58, %54, %50
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @prop_list_contains_feature(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %58
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %73)
  store i32 2, i32* %5, align 4
  br label %138

75:                                               ; preds = %67, %63
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @zpool_prop_feature(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %12, align 8
  br label %84

81:                                               ; preds = %75
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @zpool_prop_to_name(i64 %82)
  store i8* %83, i8** %12, align 8
  br label %84

84:                                               ; preds = %81, %79
  br label %113

85:                                               ; preds = %29
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @zfs_name_to_prop(i8* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %90 = load i32, i32* @B_FALSE, align 4
  %91 = call i64 @zfs_prop_valid_for_type(i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  %95 = call i8* @zfs_prop_to_name(i32 %94)
  store i8* %95, i8** %12, align 8
  br label %112

96:                                               ; preds = %85
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @zfs_prop_user(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @zfs_prop_userquota(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %96
  %105 = load i8*, i8** %6, align 8
  store i8* %105, i8** %12, align 8
  br label %111

106:                                              ; preds = %100
  %107 = load i32, i32* @stderr, align 4
  %108 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* %108, i8* %109)
  store i32 2, i32* %5, align 4
  br label %138

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %93
  br label %113

113:                                              ; preds = %112, %84
  %114 = load i32*, i32** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i64 @nvlist_lookup_string(i32* %114, i8* %115, i8** %13)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @ZPOOL_PROP_CACHEFILE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* %124, i8* %125)
  store i32 2, i32* %5, align 4
  br label %138

127:                                              ; preds = %118, %113
  %128 = load i32*, i32** %11, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i64 @nvlist_add_string(i32* %128, i8* %129, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* %135)
  store i32 1, i32* %5, align 4
  br label %138

137:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %133, %122, %106, %71, %45, %25
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_prop_to_name(i64) #1

declare dso_local i64 @zpool_name_to_prop(i8*) #1

declare dso_local i64 @zpool_prop_feature(i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i64 @prop_list_contains_feature(i32*) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_valid_for_type(i32, i32, i32) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
