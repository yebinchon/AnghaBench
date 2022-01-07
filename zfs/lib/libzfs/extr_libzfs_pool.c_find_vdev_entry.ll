; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_find_vdev_entry.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_find_vdev_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i64, i32**, i64)* @find_vdev_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_vdev_entry(%struct.TYPE_4__* %0, i32** %1, i64 %2, i32** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %66, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i32**, i32*** %8, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @zpool_vdev_name(i32 %24, %struct.TYPE_4__* %25, i32* %29, i32 0)
  store i8* %30, i8** %14, align 8
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %60, %21
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = load i32**, i32*** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @zpool_vdev_name(i32 %38, %struct.TYPE_4__* %39, i32* %43, i32 0)
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %70

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %31

63:                                               ; preds = %31
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %17

69:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i8* @zpool_vdev_name(i32, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
