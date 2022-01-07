; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_link.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@TX_CI = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_link(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 1
  %21 = bitcast %struct.TYPE_5__* %20 to i8*
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = call i32 @byteswap_uint64_array(%struct.TYPE_5__* %25, i32 12)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @zfs_zget(i32* %28, i32 %31, i32** %11)
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @zfs_zget(i32* %37, i32 %40, i32** %12)
  store i32 %41, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ZTOI(i32* %44)
  %46 = call i32 @iput(i32 %45)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %36
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TX_CI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @FIGNORECASE, align 4
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @ZTOI(i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @ZTOI(i32* %63)
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @kcred, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @zfs_link(i32 %62, i32 %64, i8* %65, i32 %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @ZTOI(i32* %69)
  %71 = call i32 @iput(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @ZTOI(i32* %72)
  %74 = call i32 @iput(i32 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %60, %43, %34
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ZTOI(i32*) #1

declare dso_local i32 @zfs_link(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
