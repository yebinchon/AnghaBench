; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@H264_SPS_ID_MAX = common dso_local global i32 0, align 4
@H264_PPS_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @DropStoredNAL(%struct.TYPE_8__* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @H264_SPS_ID_MAX, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @StoreSPS(%struct.TYPE_8__* %18, i32 %19, i32* null, i32* null)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %13

24:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @H264_PPS_ID_MAX, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @StorePPS(%struct.TYPE_8__* %30, i32 %31, i32* null, i32* null)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i32 @packetizer_Clean(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cc_storage_delete(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @free(%struct.TYPE_8__* %44)
  ret void
}

declare dso_local i32 @DropStoredNAL(%struct.TYPE_8__*) #1

declare dso_local i32 @StoreSPS(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @StorePPS(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @packetizer_Clean(i32*) #1

declare dso_local i32 @cc_storage_delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
