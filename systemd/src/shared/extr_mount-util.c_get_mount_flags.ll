; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_mount-util.c_get_mount_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_mount-util.c_get_mount_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libmnt_table = type { i32 }
%struct.statvfs = type { i64 }
%struct.libmnt_fs = type { i32 }

@MNT_ITER_FORWARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not find '%s' in mount table\00", align 1
@MNT_LINUX_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not get flags for '%s': %m\00", align 1
@MS_RELATIME = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.libmnt_table*)* @get_mount_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mount_flags(i8* %0, i64* %1, %struct.libmnt_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.libmnt_table*, align 8
  %8 = alloca %struct.statvfs, align 8
  %9 = alloca %struct.libmnt_fs*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.libmnt_table* %2, %struct.libmnt_table** %7, align 8
  %12 = bitcast %struct.statvfs* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  store %struct.libmnt_fs* null, %struct.libmnt_fs** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.libmnt_table*, %struct.libmnt_table** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @MNT_ITER_FORWARD, align 4
  %16 = call %struct.libmnt_fs* @mnt_table_find_target(%struct.libmnt_table* %13, i8* %14, i32 %15)
  store %struct.libmnt_fs* %16, %struct.libmnt_fs** %9, align 8
  %17 = load %struct.libmnt_fs*, %struct.libmnt_fs** %9, align 8
  %18 = icmp ne %struct.libmnt_fs* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @log_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.libmnt_fs*, %struct.libmnt_fs** %9, align 8
  %24 = call i8* @mnt_fs_get_vfs_options(%struct.libmnt_fs* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i32, i32* @MNT_LINUX_MAP, align 4
  %28 = call i32 @mnt_get_builtin_optmap(i32 %27)
  %29 = call i32 @mnt_optstr_get_flags(i8* %25, i64* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @log_warning_errno(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %42

36:                                               ; preds = %22
  %37 = load i64, i64* @MS_RELATIME, align 8
  %38 = xor i64 %37, -1
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, %38
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %53

42:                                               ; preds = %32, %19
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @statvfs(i8* %43, %struct.statvfs* %8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %46, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.libmnt_fs* @mnt_table_find_target(%struct.libmnt_table*, i8*, i32) #2

declare dso_local i32 @log_warning(i8*, i8*) #2

declare dso_local i8* @mnt_fs_get_vfs_options(%struct.libmnt_fs*) #2

declare dso_local i32 @mnt_optstr_get_flags(i8*, i64*, i32) #2

declare dso_local i32 @mnt_get_builtin_optmap(i32) #2

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #2

declare dso_local i64 @statvfs(i8*, %struct.statvfs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
