; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [17 x i8] c"Asf muxer closed\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @msg_Dbg(%struct.TYPE_10__* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32* @asf_packet_flush(%struct.TYPE_10__* %15)
  store i32* %16, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @sout_AccessOutWrite(i32 %21, i32* %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32* @asf_stream_end_create(%struct.TYPE_10__* %25)
  store i32* %26, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sout_AccessOutWrite(i32 %31, i32* %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @sout_AccessOutSeek(i32 %37, i32 0)
  %39 = load i64, i64* @VLC_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = call i32* @asf_header_create(%struct.TYPE_10__* %42, i32 0)
  store i32* %43, i32** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @sout_AccessOutWrite(i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %41, %34
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = call i64 @vlc_array_count(i32* %53)
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = load i64, i64* %6, align 8
  %60 = call %struct.TYPE_11__* @vlc_array_item_at_index(i32* %58, i64 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = call i32 @free(%struct.TYPE_11__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  %67 = call i32 @es_format_Clean(i32* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = call i32 @free(%struct.TYPE_11__* %68)
  br label %70

70:                                               ; preds = %56
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  %76 = call i32 @vlc_array_clear(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @free(%struct.TYPE_11__* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = call i32 @free(%struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = call i32 @free(%struct.TYPE_11__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i32 @free(%struct.TYPE_11__* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = call i32 @free(%struct.TYPE_11__* %97)
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local i32* @asf_packet_flush(%struct.TYPE_10__*) #1

declare dso_local i32 @sout_AccessOutWrite(i32, i32*) #1

declare dso_local i32* @asf_stream_end_create(%struct.TYPE_10__*) #1

declare dso_local i64 @sout_AccessOutSeek(i32, i32) #1

declare dso_local i32* @asf_header_create(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.TYPE_11__* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
