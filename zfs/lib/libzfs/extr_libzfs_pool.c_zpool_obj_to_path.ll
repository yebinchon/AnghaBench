; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_obj_to_path.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_obj_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_obj_to_path.zc = private unnamed_addr constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i64 0 }, align 8
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"<metadata>:<0x%llx>\00", align 1
@ZFS_IOC_DSOBJ_TO_DSNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"<0x%llx>:<0x%llx>\00", align 1
@ZFS_IOC_OBJ_TO_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s:<0x%llx>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpool_obj_to_path(%struct.TYPE_5__* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_6__* @__const.zpool_obj_to_path.zc to i8*), i64 32, i1 false)
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 1, i32* %16, align 4
  br label %100

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlcpy(i8* %33, i8* %36, i32 8)
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i64 %38, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ZFS_IOC_DSOBJ_TO_DSNAME, align 4
  %44 = call i64 @zfs_ioctl(i32 %42, i32 %43, %struct.TYPE_6__* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i64, i64* %8, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %52)
  store i32 1, i32* %16, align 4
  br label %100

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = trunc i64 %20 to i32
  %58 = call i32 @strlcpy(i8* %22, i8* %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @is_mounted(i32 %61, i8* %22, i8** %13)
  store i64 %62, i64* %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strlcpy(i8* %64, i8* %22, i32 8)
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ZFS_IOC_OBJ_TO_PATH, align 4
  %72 = call i64 @zfs_ioctl(i32 %70, i32 %71, %struct.TYPE_6__* %11)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %54
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %80, i8* %82)
  br label %90

84:                                               ; preds = %74
  %85 = load i8*, i8** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %85, i64 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %22, i8* %88)
  br label %90

90:                                               ; preds = %84, %77
  br label %97

91:                                               ; preds = %54
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %8, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %92, i64 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %22, i8* %95)
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @free(i8* %98)
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %46, %25
  %101 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %16, align 4
  switch i32 %102, label %104 [
    i32 0, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %100, %100
  ret void

104:                                              ; preds = %100
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i64 @zfs_ioctl(i32, i32, %struct.TYPE_6__*) #3

declare dso_local i64 @is_mounted(i32, i8*, i8**) #3

declare dso_local i32 @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
