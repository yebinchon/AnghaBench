; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_prop_set_special.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_prop_set_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPL_VERSION_USERSPACE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @zfs_prop_set_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_prop_set_special(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @nvpair_name(i32* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @zfs_name_to_prop(i8* %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ZPROP_INVAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @zfs_prop_userquota(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @zfs_prop_set_userquota(i8* %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %155

31:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %155

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @nvpair_type(i32* %33)
  %35 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @nvpair_value_nvlist(i32* %38, i32** %13)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @ZPROP_VALUE, align 4
  %45 = call i64 @nvlist_lookup_nvpair(i32* %43, i32 %44, i32** %7)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @VERIFY(i32 %47)
  br label %49

49:                                               ; preds = %37, %32
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @zfs_prop_get_type(i32 %50)
  %52 = load i64, i64* @PROP_TYPE_STRING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @fnvpair_value_string(i32* %55)
  store i8* %56, i8** %11, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fnvpair_value_uint64(i32* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %152 [
    i32 136, label %62
    i32 135, label %67
    i32 138, label %72
    i32 131, label %72
    i32 137, label %85
    i32 133, label %93
    i32 134, label %98
    i32 128, label %103
    i32 132, label %107
    i32 129, label %112
    i32 130, label %117
  ]

62:                                               ; preds = %60
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dsl_dir_set_quota(i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %153

67:                                               ; preds = %60
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dsl_dataset_set_refquota(i8* %68, i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %153

72:                                               ; preds = %60, %60
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @UINT64_MAX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @dsl_dir_activate_fs_ss_limit(i8* %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %153

85:                                               ; preds = %60
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @dsl_crypto_can_set_keylocation(i8* %86, i8* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %153

93:                                               ; preds = %60
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dsl_dir_set_reservation(i8* %94, i32 %95, i32 %96)
  store i32 %97, i32* %12, align 4
  br label %153

98:                                               ; preds = %60
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dsl_dataset_set_refreservation(i8* %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  br label %153

103:                                              ; preds = %60
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @zvol_set_volsize(i8* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  br label %153

107:                                              ; preds = %60
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @zvol_set_snapdev(i8* %108, i32 %109, i32 %110)
  store i32 %111, i32* %12, align 4
  br label %153

112:                                              ; preds = %60
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @zvol_set_volmode(i8* %113, i32 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  br label %153

117:                                              ; preds = %60
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* @FTAG, align 4
  %120 = load i32, i32* @B_TRUE, align 4
  %121 = call i32 @zfsvfs_hold(i8* %118, i32 %119, i32** %14, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %153

124:                                              ; preds = %117
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @zfs_set_version(i32* %125, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* @FTAG, align 4
  %130 = call i32 @zfsvfs_rele(i32* %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %124
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @ZPL_VERSION_USERSPACE, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load i32, i32* @KM_SLEEP, align 4
  %139 = call %struct.TYPE_6__* @kmem_zalloc(i32 4, i32 %138)
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %15, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 @strcpy(i32 %142, i8* %143)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %146 = call i32 @zfs_ioc_userspace_upgrade(%struct.TYPE_6__* %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %148 = call i32 @zfs_ioc_id_quota_upgrade(%struct.TYPE_6__* %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %150 = call i32 @kmem_free(%struct.TYPE_6__* %149, i32 4)
  br label %151

151:                                              ; preds = %137, %133, %124
  br label %153

152:                                              ; preds = %60
  store i32 -1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %151, %123, %112, %107, %103, %98, %93, %92, %84, %67, %62
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %31, %27
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_set_userquota(i8*, i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i64 @zfs_prop_get_type(i32) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i32 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @dsl_dir_set_quota(i8*, i32, i32) #1

declare dso_local i32 @dsl_dataset_set_refquota(i8*, i32, i32) #1

declare dso_local i32 @dsl_dir_activate_fs_ss_limit(i8*) #1

declare dso_local i32 @dsl_crypto_can_set_keylocation(i8*, i8*) #1

declare dso_local i32 @dsl_dir_set_reservation(i8*, i32, i32) #1

declare dso_local i32 @dsl_dataset_set_refreservation(i8*, i32, i32) #1

declare dso_local i32 @zvol_set_volsize(i8*, i32) #1

declare dso_local i32 @zvol_set_snapdev(i8*, i32, i32) #1

declare dso_local i32 @zvol_set_volmode(i8*, i32, i32) #1

declare dso_local i32 @zfsvfs_hold(i8*, i32, i32**, i32) #1

declare dso_local i32 @zfs_set_version(i32*, i32) #1

declare dso_local i32 @zfsvfs_rele(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @zfs_ioc_userspace_upgrade(%struct.TYPE_6__*) #1

declare dso_local i32 @zfs_ioc_id_quota_upgrade(%struct.TYPE_6__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
