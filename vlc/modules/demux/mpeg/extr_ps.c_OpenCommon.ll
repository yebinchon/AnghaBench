; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i8*, i8*, i64, i8*, i8*, i8* }

@PS_PACKET_PROBE = common dso_local global i32 0, align 4
@MPEG_PS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"cannot peek\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PSMF\00", align 1
@PSMF_PS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Detected PSMF-PS header\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CDXA\00", align 1
@CDXA_PS = common dso_local global i32 0, align 4
@CDXA_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Detected CDXA-PS\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"this does not look like an MPEG PS stream, continuing anyway\00", align 1
@__const.OpenCommon.startcode = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@PS_STREAM_ID_EXTENDED = common dso_local global i32 0, align 4
@PS_STREAM_ID_DIRECTORY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @PS_PACKET_PROBE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @MPEG_PS, align 4
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** @VLC_TICK_INVALID, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vlc_stream_Peek(i32 %27, i32** %8, i32 16)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32 @msg_Dbg(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %272

35:                                               ; preds = %2
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 (i32*, ...) @memcmp(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = call i32 @GetDWBE(i32* %41)
  %43 = and i32 %42, 808464432
  %44 = icmp eq i32 %43, 808464432
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @vlc_stream_Peek(i32 %48, i32** %8, i32 100)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 100
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %3, align 4
  br label %272

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 10
  %57 = call i32 @GetWBE(i32* %56)
  store i32 %57, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @PSMF_PS, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call i32 @msg_Info(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 96
  %63 = call i32 @GetDWBE(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 86
  %66 = call i32 @GetDWBE(i32* %65)
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 92
  %71 = call i32 @GetDWBE(i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 86
  %74 = call i32 @GetDWBE(i32* %73)
  %75 = call i8* @vlc_tick_from_samples(i32 %71, i32 %74)
  store i8* %75, i8** %15, align 8
  br label %76

76:                                               ; preds = %68, %54
  br label %99

77:                                               ; preds = %39, %35
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 (i32*, ...) @memcmp(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  %84 = call i64 (i32*, ...) @memcmp(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @CDXA_PS, align 4
  store i32 %87, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %88 = load i32, i32* @CDXA_HEADER_SIZE, align 4
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = call i32 @msg_Info(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %98

91:                                               ; preds = %81, %77
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = call i32 @msg_Warn(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %76
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %174, %99
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %177

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 16
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 16
  %115 = call i32 @vlc_stream_Peek(i32 %112, i32** %8, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 16
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %121, i32* %3, align 4
  br label %272

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %104
  %124 = bitcast [3 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 bitcast ([3 x i32]* @__const.OpenCommon.startcode to i8*), i64 12, i1 false)
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32* %128, i32** %18, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %131 = call i64 (i32*, ...) @memcmp(i32* %129, i32* %130, i32 3)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %161, label %133

133:                                              ; preds = %123
  %134 = load i32*, i32** %18, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 176
  %138 = icmp ne i32 %137, 176
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = load i32*, i32** %18, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 192
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %147, 239
  br i1 %148, label %163, label %149

149:                                              ; preds = %144, %139
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PS_STREAM_ID_EXTENDED, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load i32*, i32** %18, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PS_STREAM_ID_DIRECTORY, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155, %123
  %162 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %162, i32* %3, align 4
  br label %272

163:                                              ; preds = %155, %149, %144, %133
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @ps_pkt_size(i32* %164, i32 16)
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* %19, align 4
  %167 = icmp slt i32 %166, 5
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %169, i32* %3, align 4
  br label %272

170:                                              ; preds = %163
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %16, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %16, align 4
  br label %100

177:                                              ; preds = %100
  %178 = load i32, i32* %11, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @vlc_stream_Read(i32 %188, i32* null, i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %194, i32* %3, align 4
  br label %272

195:                                              ; preds = %185, %180, %177
  %196 = call %struct.TYPE_8__* @malloc(i32 128)
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %7, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %198, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = icmp ne %struct.TYPE_8__* %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %202, i32* %3, align 4
  br label %272

203:                                              ; preds = %195
  %204 = load i32, i32* @Demux, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @Control, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 20
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 19
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 18
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 17
  store i64 0, i64* %223, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 16
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 15
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  store i32 -1, i32* %231, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 14
  store i64 0, i64* %233, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  store i32 0, i32* %241, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 5
  store i32 0, i32* %243, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 6
  store i32 0, i32* %245, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 7
  store i32 0, i32* %247, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 13
  store i64 0, i64* %252, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 12
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 11
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 7
  %263 = call i32 @vlc_stream_Control(i32 %259, i32 %260, i32* %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 10
  %266 = call i32 @ps_psm_init(i32* %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @ps_track_init(i32 %269)
  %271 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %203, %201, %193, %168, %161, %120, %52, %31
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @memcmp(i32*, ...) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ps_pkt_size(i32*, i32) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @vlc_stream_Control(i32, i32, i32*) #1

declare dso_local i32 @ps_psm_init(i32*) #1

declare dso_local i32 @ps_track_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
