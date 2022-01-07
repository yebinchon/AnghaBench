; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { %struct.TYPE_52__* }
%struct.TYPE_52__ = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_47__, i32 }
%struct.TYPE_47__ = type { i64, i32 }
%struct.TYPE_53__ = type { i64, i32*, i32 }
%struct.TYPE_50__ = type { i32, i32, i32, %struct.TYPE_49__, %struct.TYPE_46__ }
%struct.TYPE_49__ = type { %struct.TYPE_48__*, %struct.TYPE_45__* }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_46__ = type { i64 }

@PAT_MISSING = common dso_local global i64 0, align 8
@PAT_FIXTRIED = common dso_local global i64 0, align 8
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@STREAM_SET_RECORD_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@TS_PACKET_SIZE_188 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"transport_error_indicator set (pid=%d)\00", align 1
@TYPE_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pid[%d] unknown\00", align 1
@FLAG_SEEN = common dso_local global i32 0, align 4
@BLOCK_FLAG_SCRAMBLED = common dso_local global i32 0, align 4
@TS_HEADER_SIZE = common dso_local global i32 0, align 4
@DELAY_ES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Creating delayed ES\00", align 1
@PROGRAM_ALL = common dso_local global i32 0, align 4
@FLAG_FILTERED = common dso_local global i32 0, align 4
@TS_TRANSPORT_PES = common dso_local global i32 0, align 4
@TS_TRANSPORT_SECTIONS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_51__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_51__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_51__*, align 8
  %4 = alloca %struct.TYPE_52__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_53__*, align 8
  %10 = alloca %struct.TYPE_50__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %3, align 8
  %12 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  store %struct.TYPE_52__* %14, %struct.TYPE_52__** %4, align 8
  %15 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %1
  %25 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %26 = call %struct.TYPE_50__* @GetPID(%struct.TYPE_52__* %25, i32 0)
  %27 = call i32 @SEEN(%struct.TYPE_50__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PAT_MISSING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %38 = call i32 @MissingPATPMTFixup(%struct.TYPE_51__* %37)
  %39 = load i64, i64* @PAT_FIXTRIED, align 8
  %40 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %44 = call %struct.TYPE_50__* @GetPID(%struct.TYPE_52__* %43, i32 0)
  %45 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_45__*, %struct.TYPE_45__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %29, %24, %1
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %374, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %377

56:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %57 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %58 = call %struct.TYPE_53__* @ReadTSPacket(%struct.TYPE_51__* %57)
  store %struct.TYPE_53__* %58, %struct.TYPE_53__** %9, align 8
  %59 = icmp ne %struct.TYPE_53__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %61, i32* %2, align 4
  br label %381

62:                                               ; preds = %56
  %63 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @STREAM_SET_RECORD_STATE, align 4
  %72 = call i32 @vlc_stream_Control(i32 %70, i32 %71, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TS_PACKET_SIZE_188, align 8
  %80 = icmp slt i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %86 = call i32 @block_Release(%struct.TYPE_53__* %85)
  br label %374

87:                                               ; preds = %75
  %88 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %97 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %98 = call i32 @PIDGet(%struct.TYPE_53__* %97)
  %99 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %101 = call i32 @block_Release(%struct.TYPE_53__* %100)
  br label %374

102:                                              ; preds = %87
  %103 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %104 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %105 = call i32 @PIDGet(%struct.TYPE_53__* %104)
  %106 = call %struct.TYPE_50__* @GetPID(%struct.TYPE_52__* %103, i32 %105)
  store %struct.TYPE_50__* %106, %struct.TYPE_50__** %10, align 8
  %107 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %108 = call i32 @SEEN(%struct.TYPE_50__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TYPE_FREE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %118 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %116, %110
  %123 = load i32, i32* @FLAG_SEEN, align 4
  %124 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %133, i32 0, i32 3
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %122
  br label %136

136:                                              ; preds = %135, %102
  %137 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %138 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %139 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %140 = call %struct.TYPE_53__* @ProcessTSPacket(%struct.TYPE_51__* %137, %struct.TYPE_50__* %138, %struct.TYPE_53__* %139, i32* %8)
  store %struct.TYPE_53__* %140, %struct.TYPE_53__** %9, align 8
  %141 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %142 = icmp ne %struct.TYPE_53__* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %374

144:                                              ; preds = %136
  %145 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %146 = call i32 @SCRAMBLED(%struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %145)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = icmp ne i32 %149, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %144
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %161 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %162 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %166 = and i32 %164, %165
  %167 = call i32 @UpdatePIDScrambledState(%struct.TYPE_51__* %160, %struct.TYPE_50__* %161, i32 %166)
  br label %168

168:                                              ; preds = %159, %144
  %169 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %170 = call i64 @GetPCR(%struct.TYPE_53__* %169)
  store i64 %170, i64* %11, align 8
  %171 = load i64, i64* %11, align 8
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %175 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @PCRHandle(%struct.TYPE_51__* %174, %struct.TYPE_50__* %175, i64 %176)
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %180 = call %struct.TYPE_50__* @GetPID(%struct.TYPE_52__* %179, i32 0)
  %181 = call i32 @SEEN(%struct.TYPE_50__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %237, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %183
  %190 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %192, %196
  br i1 %197, label %198, label %237

198:                                              ; preds = %189, %183
  %199 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 192
  %205 = icmp eq i32 %204, 64
  br i1 %205, label %206, label %237

206:                                              ; preds = %198
  %207 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 208
  %213 = icmp eq i32 %212, 16
  br i1 %213, label %214, label %237

214:                                              ; preds = %206
  %215 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %216 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %217 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @TS_HEADER_SIZE, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* @TS_HEADER_SIZE, align 4
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %225, %227
  %229 = trunc i64 %228 to i32
  %230 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 32
  %236 = call i32 @ProbePES(%struct.TYPE_51__* %215, %struct.TYPE_50__* %216, i32* %222, i32 %229, i32 %235)
  br label %237

237:                                              ; preds = %214, %206, %198, %189, %178
  %238 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %358 [
    i32 132, label %241
    i32 131, label %241
    i32 128, label %249
    i32 129, label %321
    i32 130, label %339
    i32 133, label %357
  ]

241:                                              ; preds = %237, %237
  %242 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %243 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @ts_psi_Packet_Push(%struct.TYPE_50__* %242, i32* %245)
  %247 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %248 = call i32 @block_Release(%struct.TYPE_53__* %247)
  br label %361

249:                                              ; preds = %237
  %250 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %250, i32 0, i32 4
  store i32 1, i32* %251, align 4
  %252 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @DELAY_ES, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %271

257:                                              ; preds = %249
  %258 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %259 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %260 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %261 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %262 = call i32 @AddAndCreateES(%struct.TYPE_51__* %260, %struct.TYPE_50__* %261, i32 1)
  %263 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %264 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @PROGRAM_ALL, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @UpdatePESFilters(%struct.TYPE_51__* %263, i32 %269)
  br label %271

271:                                              ; preds = %257, %249
  %272 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %271
  %277 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @FLAG_FILTERED, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %276
  %284 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %285 = call i32 @block_Release(%struct.TYPE_53__* %284)
  br label %374

286:                                              ; preds = %276, %271
  %287 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_48__*, %struct.TYPE_48__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @TS_TRANSPORT_PES, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %286
  %296 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %297 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %298 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @GatherPESData(%struct.TYPE_51__* %296, %struct.TYPE_50__* %297, %struct.TYPE_53__* %298, i32 %299)
  store i32 %300, i32* %7, align 4
  br label %320

301:                                              ; preds = %286
  %302 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @TS_TRANSPORT_SECTIONS, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %301
  %311 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %312 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %313 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %314 = load i32, i32* %8, align 4
  %315 = call i32 @GatherSectionsData(%struct.TYPE_51__* %311, %struct.TYPE_50__* %312, %struct.TYPE_53__* %313, i32 %314)
  store i32 %315, i32* %7, align 4
  br label %319

316:                                              ; preds = %301
  %317 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %318 = call i32 @block_Release(%struct.TYPE_53__* %317)
  br label %319

319:                                              ; preds = %316, %310
  br label %320

320:                                              ; preds = %319, %295
  br label %361

321:                                              ; preds = %237
  %322 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %326 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %327 = or i32 %325, %326
  %328 = and i32 %324, %327
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %321
  %331 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %332 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @ts_si_Packet_Push(%struct.TYPE_50__* %331, i32* %334)
  br label %336

336:                                              ; preds = %330, %321
  %337 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %338 = call i32 @block_Release(%struct.TYPE_53__* %337)
  br label %361

339:                                              ; preds = %237
  %340 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %344 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %345 = or i32 %343, %344
  %346 = and i32 %342, %345
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %339
  %349 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %350 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @ts_psip_Packet_Push(%struct.TYPE_50__* %349, i32* %352)
  br label %354

354:                                              ; preds = %348, %339
  %355 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %356 = call i32 @block_Release(%struct.TYPE_53__* %355)
  br label %361

357:                                              ; preds = %237
  br label %358

358:                                              ; preds = %237, %357
  %359 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %360 = call i32 @block_Release(%struct.TYPE_53__* %359)
  br label %361

361:                                              ; preds = %358, %354, %336, %320, %241
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %361
  %365 = load i32, i32* %5, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367, %361
  br label %377

373:                                              ; preds = %367, %364
  br label %374

374:                                              ; preds = %373, %283, %143, %95, %84
  %375 = load i32, i32* %6, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %6, align 4
  br label %50

377:                                              ; preds = %372, %50
  %378 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %379 = call i32 @demux_UpdateTitleFromStream(%struct.TYPE_51__* %378)
  %380 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %380, i32* %2, align 4
  br label %381

381:                                              ; preds = %377, %60
  %382 = load i32, i32* %2, align 4
  ret i32 %382
}

declare dso_local i32 @SEEN(%struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_50__* @GetPID(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @MissingPATPMTFixup(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_53__* @ReadTSPacket(%struct.TYPE_51__*) #1

declare dso_local i32 @vlc_stream_Control(i32, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_53__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_51__*, i8*, ...) #1

declare dso_local i32 @PIDGet(%struct.TYPE_53__*) #1

declare dso_local %struct.TYPE_53__* @ProcessTSPacket(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_53__*, i32*) #1

declare dso_local i32 @SCRAMBLED(%struct.TYPE_50__* byval(%struct.TYPE_50__) align 8) #1

declare dso_local i32 @UpdatePIDScrambledState(%struct.TYPE_51__*, %struct.TYPE_50__*, i32) #1

declare dso_local i64 @GetPCR(%struct.TYPE_53__*) #1

declare dso_local i32 @PCRHandle(%struct.TYPE_51__*, %struct.TYPE_50__*, i64) #1

declare dso_local i32 @ProbePES(%struct.TYPE_51__*, %struct.TYPE_50__*, i32*, i32, i32) #1

declare dso_local i32 @ts_psi_Packet_Push(%struct.TYPE_50__*, i32*) #1

declare dso_local i32 @AddAndCreateES(%struct.TYPE_51__*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @UpdatePESFilters(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @GatherPESData(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @GatherSectionsData(%struct.TYPE_51__*, %struct.TYPE_50__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @ts_si_Packet_Push(%struct.TYPE_50__*, i32*) #1

declare dso_local i32 @ts_psip_Packet_Push(%struct.TYPE_50__*, i32*) #1

declare dso_local i32 @demux_UpdateTitleFromStream(%struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
