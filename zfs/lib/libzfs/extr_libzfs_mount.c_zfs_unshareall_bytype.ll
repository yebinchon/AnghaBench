; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unshareall_bytype.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unshareall_bytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@share_all_proto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfs_only = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@smb_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_unshareall_bytype(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @share_all_proto, align 4
  %14 = call i32 @zfs_unshare_proto(i32* %11, i8* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @nfs_only, align 4
  %23 = call i32 @zfs_unshare_proto(i32* %20, i8* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @smb_only, align 4
  %32 = call i32 @zfs_unshare_proto(i32* %29, i8* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28, %19, %10
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @zfs_unshare_proto(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
