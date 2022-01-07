; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_NewTextSegmentPopStyle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_NewTextSegmentPopStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { i32 }

@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, %struct.TYPE_9__**)* @NewTextSegmentPopStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @NewTextSegmentPopStyle(%struct.TYPE_8__* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %8 = call %struct.TYPE_8__* @text_segment_New(i32* null)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %17 = call i32 @PopStyle(%struct.TYPE_9__** %16)
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @text_style_Duplicate(i32 %25)
  br label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %29 = call i32* @text_style_Create(i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32* [ %26, %21 ], [ %29, %27 ]
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %3, align 8
  br label %39

39:                                               ; preds = %30, %14
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %40
}

declare dso_local %struct.TYPE_8__* @text_segment_New(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PopStyle(%struct.TYPE_9__**) #1

declare dso_local i32* @text_style_Duplicate(i32) #1

declare dso_local i32* @text_style_Create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
