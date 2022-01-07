; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_PCM_StreamOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_PCM_StreamOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@ACM_STREAMOPENF_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Source: 24-bit samples must be packed\0A\00", align 1
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unsupported source bit depth: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Destination: 24-bit samples must be packed\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unsupported destination bit depth: %u\0A\00", align 1
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@PCM_ConvertKeepRate = common dso_local global i32* null, align 8
@PCM_RESAMPLE = common dso_local global i64 0, align 8
@PCM_ConvertChangeRate = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Unimplemented conversion from %u -> %u bps\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @PCM_StreamOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PCM_StreamOpen(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ACM_STREAMOPENF_ASYNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %42 [
    i32 8, label %23
    i32 16, label %24
    i32 24, label %25
  ]

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %50

24:                                               ; preds = %1
  store i32 12, i32* %5, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 3, %35
  %37 = icmp ne i32 %30, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %40, i32* %2, align 4
  br label %182

41:                                               ; preds = %25
  store i32 24, i32* %5, align 4
  br label %50

42:                                               ; preds = %1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %49, i32* %2, align 4
  br label %182

50:                                               ; preds = %41, %24, %23
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %79 [
    i32 8, label %56
    i32 16, label %57
    i32 24, label %60
  ]

56:                                               ; preds = %50
  br label %87

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %5, align 4
  br label %87

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 3, %70
  %72 = icmp ne i32 %65, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %75, i32* %2, align 4
  br label %182

76:                                               ; preds = %60
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %5, align 4
  br label %87

79:                                               ; preds = %50
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %86, i32* %2, align 4
  br label %182

87:                                               ; preds = %76, %57, %56
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = call i32 (...) @GetProcessHeap()
  %109 = call %struct.TYPE_14__* @HeapAlloc(i32 %108, i32 0, i32 8)
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %4, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = icmp ne %struct.TYPE_14__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %113, i32* %2, align 4
  br label %182

114:                                              ; preds = %107
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %114
  store i64 0, i64* %6, align 8
  %127 = load i32*, i32** @PCM_ConvertKeepRate, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  br label %145

135:                                              ; preds = %114
  %136 = load i64, i64* @PCM_RESAMPLE, align 8
  store i64 %136, i64* %6, align 8
  %137 = load i32*, i32** @PCM_ConvertChangeRate, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %126
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %173, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %173, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %167)
  %169 = call i32 (...) @GetProcessHeap()
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = call i32 @HeapFree(i32 %169, i32 0, %struct.TYPE_14__* %170)
  %172 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %172, i32* %2, align 4
  br label %182

173:                                              ; preds = %151, %145
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = ptrtoint %struct.TYPE_14__* %174 to i64
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  %181 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %173, %157, %112, %79, %73, %42, %38
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
