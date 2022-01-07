; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfsvfs_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfsvfs_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@B_FALSE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_5__**, i64)* @zfsvfs_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_hold(i8* %0, i8* %1, %struct.TYPE_5__** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %13 = call i64 @getzfsvfs(i8* %11, %struct.TYPE_5__** %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @B_FALSE, align 4
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %19 = call i32 @zfsvfs_create(i8* %16, i32 %17, %struct.TYPE_5__** %18)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @RW_WRITER, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @RW_READER, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @rrm_enter(i32* %26, i32 %34, i8* %35)
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @rrm_exit(i32* %45, i8* %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @getzfsvfs(i8*, %struct.TYPE_5__**) #1

declare dso_local i32 @zfsvfs_create(i8*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @rrm_enter(i32*, i32, i8*) #1

declare dso_local i32 @rrm_exit(i32*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
