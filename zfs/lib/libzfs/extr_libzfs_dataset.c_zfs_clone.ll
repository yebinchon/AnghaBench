; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_clone.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"no such parent '%s'\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"source and target pools differ\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_clone(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @snprintf(i8* %30, i32 1024, i8* %32, i8* %33)
  %35 = load i32*, i32** %12, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = call i32 @zfs_validate_name(i32* %35, i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %3
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %45 = call i32 @zfs_error(i32* %42, i32 %43, i8* %44)
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

46:                                               ; preds = %3
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @B_FALSE, align 4
  %50 = call i64 @check_parents(i32* %47, i8* %48, i32* %13, i32 %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = trunc i64 %17 to i32
  %56 = call i32 @parent_name(i8* %54, i8* %19, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i64 @ZFS_IS_VOLUME(%struct.TYPE_7__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  store i32 %64, i32* %15, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @B_TRUE, align 4
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %78 = call i32* @zfs_valid_proplist(i32* %68, i32 %69, i32* %70, i32 %71, %struct.TYPE_7__* %72, i32 %75, i32 %76, i8* %77)
  store i32* %78, i32** %7, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

81:                                               ; preds = %67
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @zfs_fix_auto_resv(%struct.TYPE_7__* %82, i32* %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @nvlist_free(i32* %87)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @zfs_crypto_clone_check(i32* %91, %struct.TYPE_7__* %92, i8* %19, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @nvlist_free(i32* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %102 = call i32 @zfs_error(i32* %99, i32 %100, i8* %101)
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

103:                                              ; preds = %90
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @lzc_clone(i8* %104, i32 %107, i32* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @nvlist_free(i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %149

114:                                              ; preds = %103
  %115 = load i32, i32* @errno, align 4
  switch i32 %115, label %142 [
    i32 129, label %116
    i32 128, label %129
  ]

116:                                              ; preds = %114
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @TEXT_DOMAIN, align 4
  %121 = call i8* @dgettext(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %119, i8* %121, i8* %19)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @EZFS_NOENT, align 4
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %128 = call i32 @zfs_error(i32* %125, i32 %126, i8* %127)
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

129:                                              ; preds = %114
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @TEXT_DOMAIN, align 4
  %134 = call i8* @dgettext(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %135 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %132, i8* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %141 = call i32 @zfs_error(i32* %138, i32 %139, i8* %140)
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

142:                                              ; preds = %114
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @errno, align 4
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %148 = call i32 @zfs_standard_error(i32* %145, i32 %146, i8* %147)
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

149:                                              ; preds = %103
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %149, %142, %129, %116, %96, %86, %80, %52, %41
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @check_parents(i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @parent_name(i8*, i8*, i32) #2

declare dso_local i64 @ZFS_IS_VOLUME(%struct.TYPE_7__*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, %struct.TYPE_7__*, i32, i32, i8*) #2

declare dso_local i32 @zfs_fix_auto_resv(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64 @zfs_crypto_clone_check(i32*, %struct.TYPE_7__*, i8*, i32*) #2

declare dso_local i32 @lzc_clone(i8*, i32, i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
