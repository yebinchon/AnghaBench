; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ClearCuesByTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ClearCuesByTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@NODE_CUE = common dso_local global i64 0, align 8
@NODE_REGION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i64)* @ClearCuesByTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClearCuesByTime(%struct.TYPE_7__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %8

8:                                                ; preds = %57, %31, %2
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NODE_CUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = bitcast %struct.TYPE_7__* %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @webvtt_dom_cue_Delete(%struct.TYPE_8__* %38)
  br label %8

40:                                               ; preds = %23
  br label %54

41:                                               ; preds = %17
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NODE_REGION, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = bitcast %struct.TYPE_7__* %48 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %4, align 8
  call void @ClearCuesByTime(%struct.TYPE_7__** %51, i64 %52)
  br label %53

53:                                               ; preds = %47, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store %struct.TYPE_7__** %56, %struct.TYPE_7__*** %3, align 8
  br label %57

57:                                               ; preds = %54, %12
  br label %8

58:                                               ; preds = %8
  ret void
}

declare dso_local i32 @webvtt_dom_cue_Delete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
