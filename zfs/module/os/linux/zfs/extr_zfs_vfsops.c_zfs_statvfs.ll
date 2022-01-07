; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_statvfs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_statvfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i64 }

@DNODE_SHIFT = common dso_local global i32 0, align 4
@ZFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i64 0, align 8
@ZFS_PROJINHERIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_statvfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i32 @ZFS_ENTER(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dmu_objset_space(i32 %23, i32* %6, i32* %7, i32* %8, i32* %9)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dmu_objset_fsid_guid(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %33 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %38 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fls(i32 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @P2ROUNDUP(i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %51, %52
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %56, %57
  %59 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %60 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %65 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @DNODE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = call i32 @MIN(i32 %66, i32 %69)
  %71 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %74 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %75, %76
  %78 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %79 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %82 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = ashr i32 %86, 32
  %88 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %89 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @ZFS_SUPER_MAGIC, align 4
  %94 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %95 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* @MAXNAMELEN, align 8
  %97 = sub nsw i64 %96, 1
  %98 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %99 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %98, i32 0, i32 6
  store i64 %97, i64* %99, align 8
  %100 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bzero(i32 %102, i32 4)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @dmu_objset_projectquota_enabled(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %144

109:                                              ; preds = %2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @dmu_objset_projectquota_present(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = load %struct.dentry*, %struct.dentry** %3, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.TYPE_12__* @ITOZ(i32 %118)
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %13, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ZFS_PROJINHERIT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %115
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @zpl_is_valid_projid(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %140 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @zfs_statfs_project(%struct.TYPE_13__* %138, %struct.TYPE_12__* %139, %struct.kstatfs* %140, i32 %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %137, %131, %126, %115
  br label %144

144:                                              ; preds = %143, %109, %2
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = call i32 @ZFS_EXIT(%struct.TYPE_13__* %145)
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_objset_space(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dmu_objset_fsid_guid(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @dmu_objset_projectquota_enabled(i32) #1

declare dso_local i64 @dmu_objset_projectquota_present(i32) #1

declare dso_local %struct.TYPE_12__* @ITOZ(i32) #1

declare dso_local i64 @zpl_is_valid_projid(i64) #1

declare dso_local i32 @zfs_statfs_project(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.kstatfs*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
