; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_update_zfs_shares_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_update_zfs_shares_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @update_zfs_shares_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_zfs_shares_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %6, align 8
  %15 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @zfs_get_type(i32* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @zfs_iter_filesystems(i32* %28, i32 (i32*, i8*)* @update_zfs_shares_cb, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @zfs_close(i32* %33)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

35:                                               ; preds = %27, %2
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @zfs_close(i32* %40)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %45 = trunc i64 %16 to i32
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i64 @zfs_prop_get(i32* %43, i32 %44, i8* %18, i32 %45, i32* null, i32* null, i32 0, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @zfs_close(i32* %50)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

52:                                               ; preds = %42
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @zfs_get_name(i32* %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @zfs_close(i32* %59)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

61:                                               ; preds = %52
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @zfs_is_mounted(i32* %62, i32* null)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @zfs_close(i32* %66)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

68:                                               ; preds = %61
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %73, %68
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %82 = trunc i64 %20 to i32
  %83 = load i32, i32* @B_FALSE, align 4
  %84 = call i64 @zfs_prop_get(i32* %80, i32 %81, i8* %21, i32 %82, i32* null, i32* null, i32 0, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* @B_FALSE, align 4
  %95 = call i32 @process_share(i32 %92, i32* null, i8* %18, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21, i32* null, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %86, %79, %73
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %101, %96
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %110 = trunc i64 %20 to i32
  %111 = load i32, i32* @B_FALSE, align 4
  %112 = call i64 @zfs_prop_get(i32* %108, i32 %109, i8* %21, i32 %110, i32* null, i32* null, i32 0, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* @B_FALSE, align 4
  %123 = call i32 @process_share(i32 %120, i32* null, i8* %18, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32* null, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %114, %107, %101
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @zfs_close(i32* %125)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %124, %65, %58, %49, %39, %32
  %128 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @zfs_get_name(i32*) #2

declare dso_local i32 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @process_share(i32, i32*, i8*, i32*, i8*, i8*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
