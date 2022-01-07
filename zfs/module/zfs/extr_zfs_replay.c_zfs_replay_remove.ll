; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@TX_CI = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_remove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 1
  %20 = bitcast %struct.TYPE_5__* %19 to i8*
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = call i32 @byteswap_uint64_array(%struct.TYPE_5__* %24, i32 8)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @zfs_zget(i32* %27, i32 %30, i32** %11)
  store i32 %31, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TX_CI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @FIGNORECASE, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %66 [
    i32 129, label %52
    i32 128, label %59
  ]

52:                                               ; preds = %47
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @ZTOI(i32* %53)
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @kcred, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @zfs_remove(i32 %54, i8* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @ZTOI(i32* %60)
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @kcred, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @zfs_rmdir(i32 %61, i8* %62, i32* null, i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %47
  %67 = load i32, i32* @ENOTSUP, align 4
  %68 = call i32 @SET_ERROR(i32 %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %59, %52
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @ZTOI(i32* %70)
  %72 = call i32 @iput(i32 %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %33
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @zfs_remove(i32, i8*, i32, i32) #1

declare dso_local i32 @ZTOI(i32*) #1

declare dso_local i32 @zfs_rmdir(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
