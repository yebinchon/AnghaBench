; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_rele_and_unlock.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_rele_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@curthread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnode_rele_and_unlock(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @zfs_refcount_remove(i32* %17, i8* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @mutex_exit(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @curthread, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %25, %3
  %33 = phi i1 [ true, %3 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = call i32 @mutex_enter(i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dbuf_rele_and_unlock(%struct.TYPE_11__* %45, %struct.TYPE_10__* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %38, %32
  ret void
}

declare dso_local i64 @zfs_refcount_remove(i32*, i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dbuf_rele_and_unlock(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
