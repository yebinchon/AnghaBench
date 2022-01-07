; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_truncate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_FREESP = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FOFFMAX = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_truncate(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 @byteswap_uint64_array(%struct.TYPE_6__* %20, i32 12)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @zfs_zget(i32* %23, i32 %26, i32** %10)
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %22
  %32 = call i32 @bzero(%struct.TYPE_7__* %11, i32 16)
  %33 = load i32, i32* @F_WRLCK, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @SEEK_SET, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @ZTOI(i32* %45)
  %47 = load i32, i32* @F_FREESP, align 4
  %48 = load i32, i32* @FWRITE, align 4
  %49 = load i32, i32* @FOFFMAX, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @kcred, align 4
  %55 = call i32 @zfs_space(i32 %46, i32 %47, %struct.TYPE_7__* %11, i32 %50, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ZTOI(i32* %56)
  %58 = call i32 @iput(i32 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %31, %29
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @zfs_space(i32, i32, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @ZTOI(i32*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
