; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zfs_path_to_zhandle.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zfs_path_to_zhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat64 = type { i32 }
%struct.extmnttab = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@MNTTAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"'%s': not a ZFS filesystem\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfs_path_to_zhandle(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat64, align 4
  %9 = alloca %struct.extmnttab, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 47
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @zfs_open(%struct.TYPE_4__* %21, i8* %22, i32 %23)
  store i32* %24, i32** %4, align 8
  br label %55

25:                                               ; preds = %15, %3
  %26 = load i32, i32* @MNTTAB, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @freopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %55

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @getextmntent(i8* %34, %struct.extmnttab* %9, %struct.stat64* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %55

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MNTTYPE_ZFS, align 4
  %42 = call i64 @strcmp(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @fprintf(i32 %45, i8* %46, i8* %47)
  store i32* null, i32** %4, align 8
  br label %55

49:                                               ; preds = %38
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %9, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %54 = call i32* @zfs_open(%struct.TYPE_4__* %50, i8* %52, i32 %53)
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %49, %44, %37, %32, %20
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @zfs_open(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32* @freopen(i32, i8*, i32) #1

declare dso_local i64 @getextmntent(i8*, %struct.extmnttab*, %struct.stat64*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
