; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_deleg_canonicalize_perm.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_deleg_canonicalize_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@zfs_deleg_perm_tab = common dso_local global %struct.TYPE_2__* null, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zfs_deleg_canonicalize_perm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zfs_deleg_perm_tab, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %6
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zfs_deleg_perm_tab, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @strcmp(i8* %15, i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %2, align 8
  br label %44

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @zfs_name_to_prop(i8* %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ZPROP_INVAL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @zfs_prop_delegatable(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i8* @zfs_prop_to_name(i64 %41)
  store i8* %42, i8** %2, align 8
  br label %44

43:                                               ; preds = %36, %30
  store i8* null, i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %40, %24
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_delegatable(i64) #1

declare dso_local i8* @zfs_prop_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
