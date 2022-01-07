; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbnamecache.c_NBNameCacheDestroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbnamecache.c_NBNameCacheDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBNameCache = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NBNameCacheDestroy(%struct.NBNameCache* %0) #0 {
  %2 = alloca %struct.NBNameCache*, align 8
  store %struct.NBNameCache* %0, %struct.NBNameCache** %2, align 8
  %3 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %4 = icmp ne %struct.NBNameCache* %3, null
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %7 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %14 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %13, i32 0, i32 2
  %15 = call i32 @DeleteCriticalSection(%struct.TYPE_4__* %14)
  br label %16

16:                                               ; preds = %21, %5
  %17 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %18 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %23 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %24 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %23, i32 0, i32 1
  %25 = call i32 @NBNameCacheUnlinkNode(%struct.NBNameCache* %22, i64* %24)
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %28 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.NBNameCache*, %struct.NBNameCache** %2, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, %struct.NBNameCache* %30)
  br label %32

32:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @DeleteCriticalSection(%struct.TYPE_4__*) #1

declare dso_local i32 @NBNameCacheUnlinkNode(%struct.NBNameCache*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.NBNameCache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
