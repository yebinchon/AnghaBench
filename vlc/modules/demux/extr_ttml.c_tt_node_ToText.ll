; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_node_ToText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_node_ToText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TT_NODE_TYPE_ELEMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"</\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, %struct.TYPE_10__*, i32*)* @tt_node_ToText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tt_node_ToText(%struct.vlc_memstream* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TT_NODE_TYPE_ELEMENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = bitcast %struct.TYPE_10__* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @tt_time_Valid(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @tt_timings_Contains(%struct.TYPE_11__* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %81

28:                                               ; preds = %21, %15
  %29 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %30 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %29, i8 signext 60)
  %31 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @tt_MemstreamPutEntities(%struct.vlc_memstream* %31, i32 %34)
  %36 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = call i32 @tt_node_AttributesToText(%struct.vlc_memstream* %36, %struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = call i64 @tt_node_HasChild(%struct.TYPE_9__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %28
  %43 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %44 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %43, i8 signext 62)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %8, align 8
  br label %48

48:                                               ; preds = %55, %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = load i32*, i32** %6, align 8
  call void @tt_node_ToText(%struct.vlc_memstream* %52, %struct.TYPE_10__* %53, i32* %54)
  br label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %8, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %61 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @tt_MemstreamPutEntities(%struct.vlc_memstream* %62, i32 %65)
  %67 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %68 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %67, i8 signext 62)
  br label %72

69:                                               ; preds = %28
  %70 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %71 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %59
  br label %81

73:                                               ; preds = %3
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = bitcast %struct.TYPE_10__* %74 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %9, align 8
  %76 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tt_MemstreamPutEntities(%struct.vlc_memstream* %76, i32 %79)
  br label %81

81:                                               ; preds = %27, %73, %72
  ret void
}

declare dso_local i64 @tt_time_Valid(i32*) #1

declare dso_local i32 @tt_timings_Contains(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32 @tt_MemstreamPutEntities(%struct.vlc_memstream*, i32) #1

declare dso_local i32 @tt_node_AttributesToText(%struct.vlc_memstream*, %struct.TYPE_9__*) #1

declare dso_local i64 @tt_node_HasChild(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
