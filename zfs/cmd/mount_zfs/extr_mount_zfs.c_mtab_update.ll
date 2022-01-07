; ModuleID = '/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_mtab_update.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_mtab_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntent = type { i8*, i8*, i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"filesystem '%s' was mounted, but /etc/mtab could not be opened due to error %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MOUNT_FILEIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"filesystem '%s' was mounted, but /etc/mtab could not be updated due to error %d\0A\00", align 1
@MOUNT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @mtab_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtab_update(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mntent, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %23 ]
  %26 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.mntent, %struct.mntent* %10, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = call i32* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @fprintf(i32 %33, i8* %34, i8* %35, i32 %36)
  %38 = load i32, i32* @MOUNT_FILEIO, align 4
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %24
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @addmntent(i32* %40, %struct.mntent* %10)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @gettext(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @fprintf(i32 %45, i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* @MOUNT_FILEIO, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @endmntent(i32* %52)
  %54 = load i32, i32* @MOUNT_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %44, %32
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32* @setmntent(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @addmntent(i32*, %struct.mntent*) #1

declare dso_local i32 @endmntent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
