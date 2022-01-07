; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_CleanETTByChannelVersion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psip.c_ATSC_CleanETTByChannelVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64)* @ATSC_CleanETTByChannelVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATSC_CleanETTByChannelVersion(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %60, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 16
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %61

35:                                               ; preds = %17
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = call i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = bitcast %struct.TYPE_8__* %49 to { i32, %struct.TYPE_7__** }*
  %52 = getelementptr inbounds { i32, %struct.TYPE_7__** }, { i32, %struct.TYPE_7__** }* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds { i32, %struct.TYPE_7__** }, { i32, %struct.TYPE_7__** }* %51, i32 0, i32 1
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = call i32 @ARRAY_REMOVE(i32 %53, %struct.TYPE_7__** %55, i32 %50)
  br label %60

57:                                               ; preds = %39, %35
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %45
  br label %10

61:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @dvbpsi_atsc_DeleteETT(%struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_REMOVE(i32, %struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
