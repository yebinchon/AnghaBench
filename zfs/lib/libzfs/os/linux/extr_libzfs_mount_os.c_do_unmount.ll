; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_do_unmount.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_do_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.do_unmount.force_opt = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@__const.do_unmount.lazy_opt = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"/bin/umount\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@MNTTYPE_ZFS = common dso_local global i8* null, align 8
@MS_FORCE = common dso_local global i32 0, align 4
@MS_DETACH = common dso_local global i32 0, align 4
@STDOUT_VERBOSE = common dso_local global i32 0, align 4
@STDERR_VERBOSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_unmount(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [7 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.do_unmount.force_opt, i32 0, i32 0), i64 3, i1 false)
  %11 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.do_unmount.lazy_opt, i32 0, i32 0), i64 3, i1 false)
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** @MNTTYPE_ZFS, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %19, align 8
  store i32 3, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MS_FORCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 %27
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MS_DETACH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 %39
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 %46
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %49 = load i8*, i8** %48, align 16
  %50 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %51 = load i32, i32* @STDOUT_VERBOSE, align 4
  %52 = load i32, i32* @STDERR_VERBOSE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @libzfs_run_process(i8* %49, i8** %50, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @libzfs_run_process(i8*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
