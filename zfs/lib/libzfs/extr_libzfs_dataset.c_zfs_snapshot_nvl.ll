; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_snapshot_nvl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_snapshot_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot create snapshots \00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create snapshot '%s'\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"multiple snapshots of same fs not allowed\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_snapshot_nvl(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i8* @dgettext(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 1024, i8* %24)
  store i32* null, i32** %10, align 8
  br label %26

26:                                               ; preds = %50, %3
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @nvlist_next_nvpair(i32* %27, i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = call i8* @nvpair_name(i32* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %37 = load i32, i32* @B_TRUE, align 4
  %38 = call i32 @zfs_validate_name(i32* %34, i8* %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 1024, i8* %43, i8* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %49 = call i32 @zfs_error(i32* %46, i32 %47, i8* %48)
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %140

50:                                               ; preds = %31
  br label %26

51:                                               ; preds = %26
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @nvlist_next_nvpair(i32* %52, i32* null)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i8* @nvpair_name(i32* %54)
  %56 = trunc i64 %19 to i32
  %57 = call i32 @strlcpy(i8* %21, i8* %55, i32 %56)
  %58 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds i8, i8* %21, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @zpool_open(i32* %60, i8* %21)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %140

65:                                               ; preds = %51
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @B_FALSE, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* @B_FALSE, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %76 = call i32* @zfs_valid_proplist(i32* %69, i32 %70, i32* %71, i32 %72, i32* null, i32* %73, i32 %74, i8* %75)
  store i32* %76, i32** %7, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @zpool_close(i32* %79)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %140

81:                                               ; preds = %68, %65
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @zpool_close(i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @lzc_snapshot(i32* %84, i32* %85, i32** %11)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %81
  %90 = load i32, i32* @B_FALSE, align 4
  store i32 %90, i32* %17, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @nvlist_next_nvpair(i32* %91, i32* null)
  store i32* %92, i32** %10, align 8
  br label %93

93:                                               ; preds = %109, %89
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* @TEXT_DOMAIN, align 4
  %99 = call i8* @dgettext(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32*, i32** %10, align 8
  %101 = call i8* @nvpair_name(i32* %100)
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 1024, i8* %99, i8* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @fnvpair_value_int32(i32* %104)
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %107 = call i32 @zfs_standard_error(i32* %103, i32 %105, i8* %106)
  %108 = load i32, i32* @B_TRUE, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %96
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32* @nvlist_next_nvpair(i32* %110, i32* %111)
  store i32* %112, i32** %10, align 8
  br label %93

113:                                              ; preds = %93
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  switch i32 %117, label %127 [
    i32 128, label %118
  ]

118:                                              ; preds = %116
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* @TEXT_DOMAIN, align 4
  %121 = call i8* @dgettext(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %122 = call i32 @zfs_error_aux(i32* %119, i8* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @EZFS_EXISTS, align 4
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %126 = call i32 @zfs_error(i32* %123, i32 %124, i8* %125)
  br label %132

127:                                              ; preds = %116
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %131 = call i32 @zfs_standard_error(i32* %128, i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %127, %118
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %81
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @nvlist_free(i32* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @nvlist_free(i32* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %140

140:                                              ; preds = %134, %78, %64, %40
  %141 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32* @zpool_open(i32*, i8*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, i32*, i32*, i32, i8*) #2

declare dso_local i32 @zpool_close(i32*) #2

declare dso_local i32 @lzc_snapshot(i32*, i32*, i32**) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @fnvpair_value_int32(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
