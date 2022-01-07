; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_do_mount.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_do_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"/bin/mount\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"--no-canonicalize\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@MNTTYPE_ZFS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@STDOUT_VERBOSE = common dso_local global i32 0, align 4
@STDERR_VERBOSE = common dso_local global i32 0, align 4
@MOUNT_FILEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MOUNT_USER = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@MOUNT_SOFTWARE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@MOUNT_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MOUNT_SYSERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MOUNT_USAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_mount(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [9 x i8*], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** @MNTTYPE_ZFS, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 1
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  %26 = load i8*, i8** %25, align 16
  %27 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  %28 = load i32, i32* @STDOUT_VERBOSE, align 4
  %29 = load i32, i32* @STDERR_VERBOSE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @libzfs_run_process(i8* %26, i8** %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MOUNT_FILEIO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %5, align 4
  br label %79

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MOUNT_USER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EINTR, align 4
  store i32 %47, i32* %5, align 4
  br label %79

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MOUNT_SOFTWARE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @EPIPE, align 4
  store i32 %54, i32* %5, align 4
  br label %79

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MOUNT_BUSY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %5, align 4
  br label %79

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @MOUNT_SYSERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @EAGAIN, align 4
  store i32 %68, i32* %5, align 4
  br label %79

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MOUNT_USAGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %5, align 4
  br label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %76, %74, %67, %60, %53, %46, %39
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @libzfs_run_process(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
