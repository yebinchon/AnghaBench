; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.holdarg = type { i8*, i8*, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot hold snapshot '%s@%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_hold(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.holdarg, align 8
  %14 = alloca [1024 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @fnvlist_alloc()
  %16 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = call i32 @zfs_handle_dup(%struct.TYPE_5__* %23)
  %25 = call i32 @zfs_hold_one(i32 %24, %struct.holdarg* %13)
  %26 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @nvlist_empty(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fnvlist_free(i32 %32)
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %12, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %36 = load i32, i32* @TEXT_DOMAIN, align 4
  %37 = call i8* @dgettext(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @snprintf(i8* %35, i32 1024, i8* %37, i32 %40, i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %48 = call i32 @zfs_standard_error(i32 %45, i32 %46, i8* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %5
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @zfs_hold_nvl(%struct.TYPE_5__* %51, i32 %52, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %13, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fnvlist_free(i32 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %30
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @fnvlist_alloc(...) #1

declare dso_local i32 @zfs_hold_one(i32, %struct.holdarg*) #1

declare dso_local i32 @zfs_handle_dup(%struct.TYPE_5__*) #1

declare dso_local i64 @nvlist_empty(i32) #1

declare dso_local i32 @fnvlist_free(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #1

declare dso_local i32 @zfs_hold_nvl(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
