; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorCacheKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorCacheKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @multiCursorCacheKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiCursorCacheKey(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LSM_OK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = call i32 @multiCursorGetKey(%struct.TYPE_6__* %12, i32 %17, i32* %19, i8** %5, i32* %6)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sortedBlobSet(i32 %25, i32* %27, i8* %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @multiCursorGetKey(%struct.TYPE_6__*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @sortedBlobSet(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
