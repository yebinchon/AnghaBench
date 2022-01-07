; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_describe_free.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_describe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.zfs_stat = type { i32 }

@ESTALE = common dso_local global i64 0, align 8
@ZDIFF_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i8*, i32)* @describe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @describe_free(i32* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.zfs_stat, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @get_stats_for_obj(%struct.TYPE_5__* %13, i32 %16, i32 %17, i8* %18, i32 %19, %struct.zfs_stat* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ESTALE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %38

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = load i32, i32* @ZDIFF_REMOVED, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @print_file(i32* %33, %struct.TYPE_5__* %34, i32 %35, i8* %36, %struct.zfs_stat* %12)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %29, %22
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @get_stats_for_obj(%struct.TYPE_5__*, i32, i32, i8*, i32, %struct.zfs_stat*) #1

declare dso_local i32 @print_file(i32*, %struct.TYPE_5__*, i32, i8*, %struct.zfs_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
