; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_unload_key.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_unload_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@MAXNAMELEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Key unload error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Encryption feature not enabled.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"'%s' is not encrypted.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get encryption root for '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Keys must be unloaded for encryption root of '%s' (%s).\00", align 1
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_UNAVAILABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Key already unloaded for '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Permission denied.\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"'%s' is busy.\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_crypto_unload_key(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @MAXNAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %17 = load i32, i32* @TEXT_DOMAIN, align 4
  %18 = call i8* @dgettext(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @snprintf(i8* %16, i32 1024, i8* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @encryption_feature_is_enabled(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %28, i8* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %137

33:                                               ; preds = %1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %36 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i8* @dgettext(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @zfs_get_name(%struct.TYPE_6__* %46)
  %48 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %43, i8* %45, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %137

50:                                               ; preds = %33
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = call i32 @zfs_crypto_get_encryption_root(%struct.TYPE_6__* %51, i32* %10, i8* %15)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i8* @dgettext(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = call i32 @zfs_get_name(%struct.TYPE_6__* %61)
  %63 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %58, i8* %60, i32 %62)
  br label %137

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i8* @dgettext(i32 %71, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = call i32 @zfs_get_name(%struct.TYPE_6__* %73)
  %75 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %70, i8* %72, i32 %74, i8* %15)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %4, align 4
  br label %137

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %81 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %79, i32 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TEXT_DOMAIN, align 4
  %90 = call i8* @dgettext(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = call i32 @zfs_get_name(%struct.TYPE_6__* %91)
  %93 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %88, i8* %90, i32 %92)
  store i32 130, i32* %4, align 4
  br label %137

94:                                               ; preds = %78
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lzc_unload_key(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  switch i32 %102, label %128 [
    i32 128, label %103
    i32 130, label %110
    i32 129, label %119
  ]

103:                                              ; preds = %101
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TEXT_DOMAIN, align 4
  %108 = call i8* @dgettext(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %109 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %106, i8* %108)
  br label %128

110:                                              ; preds = %101
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TEXT_DOMAIN, align 4
  %115 = call i8* @dgettext(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = call i32 @zfs_get_name(%struct.TYPE_6__* %116)
  %118 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %113, i8* %115, i32 %117)
  br label %128

119:                                              ; preds = %101
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = call i32 @zfs_get_name(%struct.TYPE_6__* %125)
  %127 = call i32 (i32, i8*, ...) @zfs_error_aux(i32 %122, i8* %124, i32 %126)
  br label %128

128:                                              ; preds = %101, %119, %110, %103
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %134 = call i32 @zfs_error(i32 %131, i32 %132, i8* %133)
  br label %135

135:                                              ; preds = %128, %94
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %145

137:                                              ; preds = %85, %67, %55, %40, %25
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %143 = call i32 @zfs_error(i32 %140, i32 %141, i8* %142)
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %137, %135
  %146 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @encryption_feature_is_enabled(i32) #2

declare dso_local i32 @zfs_error_aux(i32, i8*, ...) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_6__*) #2

declare dso_local i32 @zfs_crypto_get_encryption_root(%struct.TYPE_6__*, i32*, i8*) #2

declare dso_local i32 @lzc_unload_key(i32) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
