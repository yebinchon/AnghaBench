; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_user_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_user_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@ZSB_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @__zpl_xattr_user_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_xattr_user_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %44

20:                                               ; preds = %5
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.TYPE_2__* @ITOZSB(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZSB_XATTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %44

31:                                               ; preds = %20
  %32 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33)
  store i8* %34, i8** %12, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @zpl_xattr_set(%struct.inode* %35, i8* %36, i8* %37, i64 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @kmem_strfree(i8* %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %31, %28, %17
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @ITOZSB(%struct.inode*) #1

declare dso_local i8* @kmem_asprintf(i8*, i32, i8*) #1

declare dso_local i32 @zpl_xattr_set(%struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @kmem_strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
