; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cliprdr.c_cliprdr_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cliprdr.c_cliprdr_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32* }

@.str = private unnamed_addr constant [45 x i8] c"CLIPRDR recv: type=%d, status=%d, length=%d\0A\00", align 1
@CLIPRDR_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"CLIPRDR error (type=%d)\0A\00", align 1
@CLIPRDR_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"CLIPRDR packet type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @cliprdr_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliprdr_process(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @in_uint16_le(%struct.TYPE_16__* %10, i64 %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @in_uint16_le(%struct.TYPE_16__* %13, i64 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @in_uint32_le(%struct.TYPE_16__* %16, i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DEBUG_CLIPBOARD(i8* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CLIPRDR_ERROR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %2
  %32 = load i64, i64* %5, align 8
  switch i64 %32, label %47 [
    i64 129, label %33
    i64 130, label %44
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cliprdr_send_native_format_announce(%struct.TYPE_17__* %34, i32 %38, i32 %42)
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = call i32 @ui_clip_request_failed(%struct.TYPE_17__* %45)
  br label %51

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DEBUG_CLIPBOARD(i8* %49)
  br label %51

51:                                               ; preds = %47, %44, %33
  br label %82

52:                                               ; preds = %2
  %53 = load i64, i64* %5, align 8
  switch i64 %53, label %79 [
    i64 132, label %54
    i64 128, label %57
    i64 129, label %65
    i64 131, label %66
    i64 130, label %73
    i64 7, label %78
  ]

54:                                               ; preds = %52
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = call i32 @ui_clip_sync(%struct.TYPE_17__* %55)
  br label %82

57:                                               ; preds = %52
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ui_clip_format_announce(%struct.TYPE_17__* %58, i32* %59, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load i32, i32* @CLIPRDR_RESPONSE, align 4
  %64 = call i32 @cliprdr_send_packet(%struct.TYPE_17__* %62, i32 129, i32 %63, i32* null, i32 0)
  br label %82

65:                                               ; preds = %52
  br label %82

66:                                               ; preds = %52
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @in_uint32_le(%struct.TYPE_16__* %67, i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ui_clip_request_data(%struct.TYPE_17__* %70, i32 %71)
  br label %82

73:                                               ; preds = %52
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ui_clip_handle_data(%struct.TYPE_17__* %74, i32* %75, i32 %76)
  br label %82

78:                                               ; preds = %52
  br label %82

79:                                               ; preds = %52
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @unimpl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %51, %57, %79, %78, %73, %66, %65, %54
  ret void
}

declare dso_local i32 @in_uint16_le(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @in_uint32_le(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @DEBUG_CLIPBOARD(i8*) #1

declare dso_local i32 @cliprdr_send_native_format_announce(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ui_clip_request_failed(%struct.TYPE_17__*) #1

declare dso_local i32 @ui_clip_sync(%struct.TYPE_17__*) #1

declare dso_local i32 @ui_clip_format_announce(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @cliprdr_send_packet(%struct.TYPE_17__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ui_clip_request_data(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ui_clip_handle_data(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @unimpl(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
