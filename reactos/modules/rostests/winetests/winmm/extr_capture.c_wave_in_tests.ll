; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_capture.c_wave_in_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_capture.c_wave_in_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"found %d WaveIn devices\0A\00", align 1
@WAVE_MAPPER = common dso_local global i32 0, align 4
@DRVM_MAPPER_PREFERRED_GET = common dso_local global i32 0, align 4
@MMSYSERR_NODRIVER = common dso_local global i64 0, align 8
@MMSYSERR_BADDEVICEID = common dso_local global i64 0, align 8
@MMSYSERR_NOTSUPPORTED = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"waveInMessage(DRVM_MAPPER_PREFERRED_GET) failed: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Got invalid preferred device: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"waveInGetDevCapsA(%s): MMSYSERR_BADDEVICEID expected, got %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"waveInGetDevCapsA(%s): got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"waveInGetDevCapsW(%s): MMSYSERR_BADDEVICEID or MMSYSERR_NOTSUPPORTED expected, got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"waveInGetDevCapsW(%s): got %s\0A\00", align 1
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@CALLBACK_NULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"waveInOpen(%s): MMSYSERR_BADDEVICEID expected, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wave_in_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wave_in_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 (...) @waveInGetNumDevs()
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @WAVE_MAPPER, align 4
  %14 = load i32, i32* @DRVM_MAPPER_PREFERRED_GET, align 4
  %15 = ptrtoint i32* %6 to i32
  %16 = ptrtoint i32* %7 to i32
  %17 = call i64 @waveInMessage(i32 %13, i32 %14, i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %0
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %0
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28, %24, %20
  %37 = phi i1 [ true, %28 ], [ true, %24 ], [ true, %20 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, -1
  %53 = zext i1 %52 to i32
  %54 = call i64 @broken(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %50, %47
  %61 = phi i1 [ true, %50 ], [ true, %47 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %60, %36
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 @waveInGetDevCapsA(i32 %68, i32* %1, i32 4)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @dev_name(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @wave_in_error(i64 %78)
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %77, i32 %79)
  %81 = load i32, i32* @WAVE_MAPPER, align 4
  %82 = call i64 @waveInGetDevCapsA(i32 %81, i32* %1, i32 4)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %99, label %86

86:                                               ; preds = %66
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  br label %99

99:                                               ; preds = %97, %86, %66
  %100 = phi i1 [ true, %86 ], [ true, %66 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* @WAVE_MAPPER, align 4
  %103 = call i32 @dev_name(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @wave_in_error(i64 %105)
  %107 = call i32 (i32, i8*, i64, ...) @ok(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %104, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i64 @waveInGetDevCapsW(i32 %109, i32* %2, i32 4)
  store i64 %110, i64* %5, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %99
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %117 = icmp eq i64 %115, %116
  br label %118

118:                                              ; preds = %114, %99
  %119 = phi i1 [ true, %99 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @dev_name(i32 %122)
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @wave_in_error(i64 %125)
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i64 %124, i32 %126)
  %128 = load i32, i32* @WAVE_MAPPER, align 4
  %129 = call i64 @waveInGetDevCapsW(i32 %128, i32* %2, i32 4)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %150, label %133

133:                                              ; preds = %118
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %150, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i1 [ false, %141 ], [ %147, %144 ]
  br label %150

150:                                              ; preds = %148, %137, %133, %118
  %151 = phi i1 [ true, %137 ], [ true, %133 ], [ true, %118 ], [ %149, %148 ]
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i32 @dev_name(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @wave_in_error(i64 %157)
  %159 = call i32 (i32, i8*, i64, ...) @ok(i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %156, i32 %158)
  %160 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  store i32 %160, i32* %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 2, i32* %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 16, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 44100, i32* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %166, %168
  %170 = sdiv i32 %169, 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %170, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %173, %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 %176, i32* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* @CALLBACK_NULL, align 4
  %182 = call i64 @waveInOpen(i32* %4, i32 %180, %struct.TYPE_3__* %3, i32 0, i32 0, i32 %181)
  store i64 %182, i64* %5, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  %189 = call i32 @dev_name(i32 %188)
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %5, align 8
  %192 = call i32 @wave_in_error(i64 %191)
  %193 = call i32 (i32, i8*, i64, ...) @ok(i32 %186, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 %190, i32 %192)
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %201, %150
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @wave_in_test_device(i32 %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %194

204:                                              ; preds = %194
  %205 = load i32, i32* %8, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* @WAVE_MAPPER, align 4
  %209 = call i32 @wave_in_test_device(i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  ret void
}

declare dso_local i32 @waveInGetNumDevs(...) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i64 @waveInMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @waveInGetDevCapsA(i32, i32*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @wave_in_error(i64) #1

declare dso_local i64 @waveInGetDevCapsW(i32, i32*, i32) #1

declare dso_local i64 @waveInOpen(i32*, i32, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @wave_in_test_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
