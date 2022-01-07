; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_zfs_component_namecheck.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_zfs_component_namecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@NAME_ERR_TOOLONG = common dso_local global i32 0, align 4
@NAME_ERR_EMPTY_COMPONENT = common dso_local global i32 0, align 4
@NAME_ERR_INVALCHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_component_namecheck(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @NAME_ERR_TOOLONG, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  store i32 -1, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @NAME_ERR_EMPTY_COMPONENT, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  store i32 -1, i32* %4, align 4
  br label %59

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %55, %33
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @valid_char(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @NAME_ERR_INVALCHAR, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %47, %44
  store i32 -1, i32* %4, align 4
  br label %59

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %35

58:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %53, %32, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @valid_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
