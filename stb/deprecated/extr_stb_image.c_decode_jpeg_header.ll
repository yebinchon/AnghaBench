; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_jpeg_header.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_jpeg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MARKER_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no SOI\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@SCAN_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"no SOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @decode_jpeg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jpeg_header(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @MARKER_none, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @get_marker(%struct.TYPE_6__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @SOI(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @e(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SCAN_type, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %62

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32 @get_marker(%struct.TYPE_6__* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %54, %22
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SOF(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @process_marker(%struct.TYPE_6__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %62

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = call i32 @get_marker(%struct.TYPE_6__* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MARKER_none, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @at_eof(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @e(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = call i32 @get_marker(%struct.TYPE_6__* %52)
  store i32 %53, i32* %6, align 4
  br label %39

54:                                               ; preds = %39
  br label %25

55:                                               ; preds = %25
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @process_frame_header(%struct.TYPE_6__* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %49, %35, %21, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @get_marker(%struct.TYPE_6__*) #1

declare dso_local i32 @SOI(i32) #1

declare dso_local i32 @e(i8*, i8*) #1

declare dso_local i32 @SOF(i32) #1

declare dso_local i32 @process_marker(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @at_eof(i32) #1

declare dso_local i32 @process_frame_header(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
