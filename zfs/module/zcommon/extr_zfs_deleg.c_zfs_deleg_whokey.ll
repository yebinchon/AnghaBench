; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_deleg_whokey.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_deleg_whokey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DELEG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%c%c%c%lld\00", align 1
@ZFS_DELEG_FIELD_SEP_CHR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%c-%c%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bad zfs_deleg_who_type_t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_deleg_whokey(i8* %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ZFS_MAX_DELEG_NAME, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %46 [
    i32 129, label %15
    i32 133, label %15
    i32 128, label %15
    i32 132, label %15
    i32 130, label %24
    i32 131, label %24
    i32 137, label %32
    i32 136, label %32
    i32 135, label %39
    i32 134, label %39
  ]

15:                                               ; preds = %4, %4, %4, %4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i8, i8* %7, align 1
  %20 = load i32, i32* @ZFS_DELEG_FIELD_SEP_CHR, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, i8*, i32, i8, ...) @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18, i8 signext %19, i32 %20, i32 %22)
  br label %48

24:                                               ; preds = %4, %4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ZFS_DELEG_FIELD_SEP_CHR, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, i32, i8*, i32, i8, ...) @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8 signext %29, i8* %30)
  br label %48

32:                                               ; preds = %4, %4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ZFS_DELEG_FIELD_SEP_CHR, align 4
  %37 = trunc i32 %36 to i8
  %38 = call i32 (i8*, i32, i8*, i32, i8, ...) @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %35, i8 signext %37)
  br label %48

39:                                               ; preds = %4, %4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i8, i8* %7, align 1
  %44 = load i32, i32* @ZFS_DELEG_FIELD_SEP_CHR, align 4
  %45 = call i32 (i8*, i32, i8*, i32, i8, ...) @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8 signext %43, i32 %44)
  br label %48

46:                                               ; preds = %4
  %47 = call i32 @ASSERT(i32 0)
  br label %48

48:                                               ; preds = %46, %39, %32, %24, %15
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8 signext, ...) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
