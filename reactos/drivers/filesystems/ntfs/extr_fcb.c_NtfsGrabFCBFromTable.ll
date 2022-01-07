; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsGrabFCBFromTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsGrabFCBFromTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [35 x i8] c"Return FCB for stream file object\0A\00", align 1
@NTFS_FCB = common dso_local global i32 0, align 4
@FcbListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Comparing '%S' and '%S'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @NtfsGrabFCBFromTable(%struct.TYPE_10__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i32 @KeAcquireSpinLock(i32* %10, i32* %6)
  %12 = load i64*, i64** %5, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14, %2
  %19 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @KeReleaseSpinLock(i32* %30, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %3, align 8
  br label %79

34:                                               ; preds = %14
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %8, align 8
  br label %39

39:                                               ; preds = %70, %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = icmp ne %struct.TYPE_12__* %40, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = load i32, i32* @NTFS_FCB, align 4
  %47 = load i32, i32* @FcbListEntry, align 4
  %48 = call %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_12__* %45, i32 %46, i32 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %7, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %49, i32 %52)
  %54 = load i64*, i64** %5, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @_wcsicmp(i64* %54, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %44
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @KeReleaseSpinLock(i32* %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %3, align 8
  br label %79

70:                                               ; preds = %44
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %8, align 8
  br label %39

74:                                               ; preds = %39
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @KeReleaseSpinLock(i32* %76, i32 %77)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %79

79:                                               ; preds = %74, %60, %18
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %80
}

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @_wcsicmp(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
