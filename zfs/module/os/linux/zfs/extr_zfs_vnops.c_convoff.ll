; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_convoff.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_convoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convoff(%struct.inode* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 (...) @CRED()
  %22 = call i32 @zfs_getattr(%struct.inode* %20, %struct.TYPE_5__* %10, i32 0, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %47 [
    i32 130, label %31
    i32 129, label %38
    i32 128, label %46
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %50

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %27, %38
  br label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %85

50:                                               ; preds = %46, %31
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @SET_ERROR(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %85

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %76 [
    i32 130, label %60
    i32 129, label %67
    i32 128, label %75
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %79

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %58, %67
  br label %79

76:                                               ; preds = %58
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @SET_ERROR(i32 %77)
  store i32 %78, i32* %5, align 4
  br label %85

79:                                               ; preds = %75, %60
  %80 = load i32, i32* %8, align 4
  %81 = trunc i32 %80 to i16
  %82 = sext i16 %81 to i32
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %76, %55, %47, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @zfs_getattr(%struct.inode*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
