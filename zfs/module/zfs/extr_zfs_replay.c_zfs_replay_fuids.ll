; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_fuids.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_fuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i8**, i32, i32, i32, i32)* @zfs_replay_fuids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @zfs_replay_fuids(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = call %struct.TYPE_10__* (...) @zfs_fuid_info_alloc()
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @KM_SLEEP, align 4
  %28 = call i32 @kmem_zalloc(i32 %26, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %52, %6
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32, i32* @KM_SLEEP, align 4
  %37 = call %struct.TYPE_9__* @kmem_alloc(i32 24, i32 %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %16, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %49 = call i32 @list_insert_tail(i32* %47, %struct.TYPE_9__* %48)
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @zfs_replay_fuid_ugid(%struct.TYPE_10__* %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @zfs_replay_fuid_domain_common(%struct.TYPE_10__* %60, i32* %61, i32 %62)
  %64 = load i8**, i8*** %8, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  ret %struct.TYPE_10__* %65
}

declare dso_local %struct.TYPE_10__* @zfs_fuid_info_alloc(...) #1

declare dso_local i32 @kmem_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_9__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @zfs_replay_fuid_ugid(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @zfs_replay_fuid_domain_common(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
