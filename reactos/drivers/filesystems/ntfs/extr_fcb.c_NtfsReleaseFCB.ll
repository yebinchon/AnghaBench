; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsReleaseFCB.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsReleaseFCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"releasing FCB at %p: %S, refCount:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsReleaseFCB(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %7, i32 %10, i64 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @KeAcquireSpinLock(i32* %16, i32* %6)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @NtfsFCBIsDirectory(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = call i32 @RemoveEntryList(i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @KeReleaseSpinLock(i32* %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CcUninitializeCacheMap(i32 %40, i32* null, i32* null)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = call i32 @NtfsDestroyFCB(%struct.TYPE_9__* %42)
  br label %49

44:                                               ; preds = %26, %2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @KeReleaseSpinLock(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @NtfsFCBIsDirectory(%struct.TYPE_9__*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @CcUninitializeCacheMap(i32, i32*, i32*) #1

declare dso_local i32 @NtfsDestroyFCB(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
