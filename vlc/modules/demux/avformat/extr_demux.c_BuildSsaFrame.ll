; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_BuildSsaFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_BuildSsaFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Dialogue: %d,%d:%d:%d.%d,%d:%d:%d.%d,%n\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%u,%d,%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i32)* @BuildSsaFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @BuildSsaFrame(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %104

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @__MIN(i32 255, i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i8* %30, i64 %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  store i32 0, i32* %17, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  %40 = icmp slt i32 %39, 9
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %104

42:                                               ; preds = %25
  %43 = load i32, i32* %17, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %17, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %42
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %104

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i64 @asprintf(i8** %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i64 %59, i64 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %104

69:                                               ; preds = %51
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = add nsw i64 %72, 1
  %74 = call %struct.TYPE_6__* @block_heap_Alloc(i8* %70, i64 %73)
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %19, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %78, %79
  %81 = mul nsw i32 %80, 3600
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %82, %83
  %85 = mul nsw i32 %84, 60
  %86 = add nsw i32 %81, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = mul nsw i32 %89, 1
  %91 = add nsw i32 %86, %90
  %92 = call i64 @vlc_tick_from_sec(i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @VLC_TICK_FROM_MS(i32 %95)
  %97 = sdiv i32 %96, 100
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %92, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %77, %69
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %3, align 8
  br label %104

104:                                              ; preds = %102, %68, %50, %41, %24
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %105
}

declare dso_local i64 @__MIN(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_6__* @block_heap_Alloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
