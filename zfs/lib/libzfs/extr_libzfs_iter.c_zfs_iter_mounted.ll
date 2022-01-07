; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_iter_mounted.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_iter_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.mnttab = type { i8*, i8* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@MNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i8* null, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_mounted(%struct.TYPE_8__* %0, i32 (%struct.TYPE_8__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32 (%struct.TYPE_8__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mnttab, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 (%struct.TYPE_8__*, i8*)* %1, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strlen(i32 %22)
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @MNTTAB, align 4
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %96, %93, %81, %71, %45, %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @getmntent(i32* %34, %struct.mnttab* %10)
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %101

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %10, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** @MNTTYPE_ZFS, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %30

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %10, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @strncmp(i8* %48, i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %10, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 47
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %10, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 64
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %46
  br label %30

72:                                               ; preds = %63, %55
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %10, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %79 = call %struct.TYPE_8__* @zfs_open(i32 %75, i8* %77, i32 %78)
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %11, align 8
  %80 = icmp eq %struct.TYPE_8__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %30

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %85 = trunc i64 %17 to i32
  %86 = load i32, i32* @B_FALSE, align 4
  %87 = call i64 @zfs_prop_get(%struct.TYPE_8__* %83, i32 %84, i8* %19, i32 %85, i32* null, i32* null, i32 0, i32 %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @verify(i32 %89)
  %91 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = call i32 @zfs_close(%struct.TYPE_8__* %94)
  br label %30

96:                                               ; preds = %82
  %97 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %6, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 %97(%struct.TYPE_8__* %98, i8* %99)
  store i32 %100, i32* %14, align 4
  br label %30

101:                                              ; preds = %37
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %101, %27
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @getmntent(i32*, %struct.mnttab*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i32, i64) #2

declare dso_local %struct.TYPE_8__* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_8__*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @zfs_close(%struct.TYPE_8__*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
