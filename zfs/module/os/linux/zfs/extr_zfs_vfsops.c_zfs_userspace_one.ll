; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_userspace_one.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_userspace_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DMU_OBJACCT_PREFIX_LEN = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_USEROBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTUSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_NO_OBJECT = common dso_local global i64 0, align 8
@DMU_OBJACCT_PREFIX = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_userspace_one(%struct.TYPE_5__* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  %19 = add nsw i32 20, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i64*, i64** %11, align 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dmu_objset_userspace_present(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

32:                                               ; preds = %5
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ZFS_PROP_USEROBJUSED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @ZFS_PROP_GROUPOBJUSED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @ZFS_PROP_PROJECTOBJUSED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52, %48, %44, %40, %36, %32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dmu_objset_userobjspace_present(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOTSUP, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

65:                                               ; preds = %56, %52
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @ZFS_PROP_PROJECTUSED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @ZFS_PROP_PROJECTOBJUSED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77, %73, %69, %65
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dmu_objset_projectquota_present(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOTSUP, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

90:                                               ; preds = %81
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @zpl_is_valid_projid(i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %77
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @zfs_userquota_prop_to_obj(%struct.TYPE_5__* %99, i64 %100)
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @ZFS_NO_OBJECT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

106:                                              ; preds = %98
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @ZFS_PROP_USEROBJUSED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @ZFS_PROP_GROUPOBJUSED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @ZFS_PROP_PROJECTOBJUSED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114, %110, %106
  %119 = load i32, i32* @DMU_OBJACCT_PREFIX, align 4
  %120 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @strlcpy(i8* %22, i32 %119, i32 %121)
  %123 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %118, %114
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %22, i64 %129
  %131 = load i32, i32* @B_FALSE, align 4
  %132 = call i32 @id_to_fuidstr(%struct.TYPE_5__* %125, i8* %126, i64 %127, i8* %130, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

137:                                              ; preds = %124
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %16, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = call i32 @zap_lookup(i32 %140, i64 %141, i8* %22, i32 8, i32 1, i64* %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @ENOENT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %147, %137
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %150

150:                                              ; preds = %148, %135, %105, %94, %87, %62, %29
  %151 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dmu_objset_userspace_present(i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @dmu_objset_userobjspace_present(i32) #2

declare dso_local i32 @dmu_objset_projectquota_present(i32) #2

declare dso_local i32 @zpl_is_valid_projid(i64) #2

declare dso_local i64 @zfs_userquota_prop_to_obj(%struct.TYPE_5__*, i64) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @id_to_fuidstr(%struct.TYPE_5__*, i8*, i64, i8*, i32) #2

declare dso_local i32 @zap_lookup(i32, i64, i8*, i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
