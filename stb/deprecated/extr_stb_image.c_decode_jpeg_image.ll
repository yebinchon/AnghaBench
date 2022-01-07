; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }

@SCAN_load = common dso_local global i32 0, align 4
@MARKER_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @decode_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jpeg_image(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load i32, i32* @SCAN_load, align 4
  %10 = call i32 @decode_jpeg_header(%struct.TYPE_8__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @get_marker(%struct.TYPE_8__* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %78, %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @EOI(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %81

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @SOS(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @process_scan_header(%struct.TYPE_8__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %82

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @parse_entropy_coded_data(%struct.TYPE_8__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %82

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MARKER_none, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %68, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @at_eof(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @get8(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @get8u(i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %69

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %82

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  br label %42

69:                                               ; preds = %56, %42
  br label %70

70:                                               ; preds = %69, %35
  br label %78

71:                                               ; preds = %21
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @process_marker(%struct.TYPE_8__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %82

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %70
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @get_marker(%struct.TYPE_8__* %79)
  store i32 %80, i32* %4, align 4
  br label %16

81:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76, %66, %34, %29, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @decode_jpeg_header(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_marker(%struct.TYPE_8__*) #1

declare dso_local i32 @EOI(i32) #1

declare dso_local i64 @SOS(i32) #1

declare dso_local i32 @process_scan_header(%struct.TYPE_8__*) #1

declare dso_local i32 @parse_entropy_coded_data(%struct.TYPE_8__*) #1

declare dso_local i32 @at_eof(i32) #1

declare dso_local i32 @get8(i32) #1

declare dso_local i64 @get8u(i32) #1

declare dso_local i32 @process_marker(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
