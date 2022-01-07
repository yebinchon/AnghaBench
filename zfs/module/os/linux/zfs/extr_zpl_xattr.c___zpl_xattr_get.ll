; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_get.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32*)* @__zpl_xattr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_xattr_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_6__* @ITOZ(%struct.inode* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = call %struct.TYPE_7__* @ZTOZSB(%struct.TYPE_6__* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @RW_LOCK_HELD(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @zpl_xattr_get_sa(%struct.inode* %32, i8* %33, i8* %34, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %50

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %26, %5
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @zpl_xattr_get_dir(%struct.inode* %44, i8* %45, i8* %46, i64 %47, i32* %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %43, %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ENODATA, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_6__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @ZTOZSB(%struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i32 @zpl_xattr_get_sa(%struct.inode*, i8*, i8*, i64) #1

declare dso_local i32 @zpl_xattr_get_dir(%struct.inode*, i8*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
