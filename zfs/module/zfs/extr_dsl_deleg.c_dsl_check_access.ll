; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_check_access.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_check_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DELEG_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8, i8, i8*, i8*)* @dsl_check_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_check_access(i32* %0, i32 %1, i8 signext %2, i8 signext %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* @ZFS_MAX_DELEG_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %16, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %17, align 8
  %22 = load i8, i8* %9, align 1
  %23 = load i8, i8* %10, align 1
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @zfs_deleg_whokey(i8* %21, i8 signext %22, i8 signext %23, i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @zap_lookup(i32* %26, i32 %27, i8* %21, i32 8, i32 1, i32* %14)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %6
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @zap_lookup(i32* %32, i32 %33, i8* %34, i32 8, i32 1, i32* %15)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EPERM, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* %13, align 4
  %45 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_deleg_whokey(i8*, i8 signext, i8 signext, i8*) #2

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
