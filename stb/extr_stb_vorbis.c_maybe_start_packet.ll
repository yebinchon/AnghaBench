; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_maybe_start_packet.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_maybe_start_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@VORBIS_missing_capture_pattern = common dso_local global i32 0, align 4
@PAGEFLAG_continued_packet = common dso_local global i32 0, align 4
@VORBIS_continued_packet_flag_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @maybe_start_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_start_packet(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %72

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @get8(%struct.TYPE_7__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 79, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load i32, i32* @VORBIS_missing_capture_pattern, align 4
  %24 = call i32 @error(%struct.TYPE_7__* %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @get8(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 103, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = load i32, i32* @VORBIS_missing_capture_pattern, align 4
  %32 = call i32 @error(%struct.TYPE_7__* %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @get8(%struct.TYPE_7__* %34)
  %36 = icmp ne i32 103, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = load i32, i32* @VORBIS_missing_capture_pattern, align 4
  %40 = call i32 @error(%struct.TYPE_7__* %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = call i32 @get8(%struct.TYPE_7__* %42)
  %44 = icmp ne i32 83, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = load i32, i32* @VORBIS_missing_capture_pattern, align 4
  %48 = call i32 @error(%struct.TYPE_7__* %46, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 @start_page_no_capturepattern(%struct.TYPE_7__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PAGEFLAG_continued_packet, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @FALSE, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load i32, i32* @VORBIS_continued_packet_flag_invalid, align 4
  %70 = call i32 @error(%struct.TYPE_7__* %68, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = call i32 @start_packet(%struct.TYPE_7__* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %62, %53, %45, %37, %29, %21, %16
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @get8(%struct.TYPE_7__*) #1

declare dso_local i32 @error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @start_page_no_capturepattern(%struct.TYPE_7__*) #1

declare dso_local i32 @start_packet(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
