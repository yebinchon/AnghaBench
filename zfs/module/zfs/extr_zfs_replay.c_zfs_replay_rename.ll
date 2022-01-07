; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@TX_CI = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zfs_replay_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_replay_rename(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %22 = bitcast %struct.TYPE_5__* %21 to i8*
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = call i32 @byteswap_uint64_array(%struct.TYPE_5__* %32, i32 12)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zfs_zget(i32* %35, i32 %38, i32** %12)
  store i32 %39, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %4, align 4
  br label %84

43:                                               ; preds = %34
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zfs_zget(i32* %44, i32 %47, i32** %13)
  store i32 %48, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @ZTOI(i32* %51)
  %53 = call i32 @iput(i32 %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %84

55:                                               ; preds = %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TX_CI, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @FIGNORECASE, align 4
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @ZTOI(i32* %68)
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @ZTOI(i32* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* @kcred, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @zfs_rename(i32 %69, i8* %70, i32 %72, i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @ZTOI(i32* %77)
  %79 = call i32 @iput(i32 %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @ZTOI(i32* %80)
  %82 = call i32 @iput(i32 %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %67, %50, %41
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zfs_zget(i32*, i32, i32**) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ZTOI(i32*) #1

declare dso_local i32 @zfs_rename(i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
