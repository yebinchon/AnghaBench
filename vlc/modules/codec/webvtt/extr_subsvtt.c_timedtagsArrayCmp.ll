; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_timedtagsArrayCmp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_timedtagsArrayCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @timedtagsArrayCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timedtagsArrayCmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__**
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %29

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 -1
  br label %29

29:                                               ; preds = %24, %23
  %30 = phi i32 [ 0, %23 ], [ %28, %24 ]
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
