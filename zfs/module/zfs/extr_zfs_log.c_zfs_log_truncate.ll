; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_truncate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_truncate(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @zil_replaying(i32* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = call i64 @zfs_xattr_owner_unlinked(%struct.TYPE_8__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19, %6
  br label %57

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.TYPE_10__* @zil_itx_create(i32 %30, i32 24)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %13, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %14, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @zil_itx_assign(i32* %53, %struct.TYPE_10__* %54, i32* %55)
  br label %57

57:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i64 @zfs_xattr_owner_unlinked(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_10__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
