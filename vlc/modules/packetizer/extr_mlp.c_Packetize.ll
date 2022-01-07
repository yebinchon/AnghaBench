; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_mlp.c_Packetize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_mlp.c_Packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i64, i64, i64, i32, i32*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_29__, %struct.TYPE_33__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i64, i32, %struct.TYPE_27__, %struct.TYPE_31__, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }

@MLP_HEADER_SIZE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"waiting for PTS\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"emulated sync word\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"emulated sync word (no sync on following frame)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"MLP channels: %d samplerate: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_32__*, %struct.TYPE_34__**)* @Packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @Packetize(%struct.TYPE_32__* %0, %struct.TYPE_34__** %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__**, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_34__** %1, %struct.TYPE_34__*** %5, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %6, align 8
  %18 = load i32, i32* @MLP_HEADER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %23 = icmp ne %struct.TYPE_34__** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.TYPE_34__* [ %26, %24 ], [ null, %27 ]
  store %struct.TYPE_34__* %29, %struct.TYPE_34__** %10, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %31 = icmp ne %struct.TYPE_34__* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %37 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %43 = call %struct.TYPE_34__* @Packetize(%struct.TYPE_32__* %42, %struct.TYPE_34__** null)
  store %struct.TYPE_34__* %43, %struct.TYPE_34__** %11, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %45 = icmp ne %struct.TYPE_34__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  store %struct.TYPE_34__* %47, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

48:                                               ; preds = %41
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %50 = call i32 @Flush(%struct.TYPE_32__* %49)
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %59 = call i32 @block_Release(%struct.TYPE_34__* %58)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VLC_TICK_INVALID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 6
  %70 = call i64 @date_Get(i32* %69)
  %71 = load i64, i64* @VLC_TICK_INVALID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %75 = call i32 @msg_Dbg(%struct.TYPE_32__* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %77 = call i32 @block_Release(%struct.TYPE_34__* %76)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

78:                                               ; preds = %67, %61
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %82 = call i32 @block_BytestreamPush(%struct.TYPE_27__* %80, %struct.TYPE_34__* %81)
  br label %83

83:                                               ; preds = %78, %28
  br label %84

84:                                               ; preds = %428, %83
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %428 [
    i32 130, label %88
    i32 128, label %127
    i32 132, label %159
    i32 131, label %200
    i32 133, label %242
    i32 129, label %254
  ]

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %113, %88
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 4
  %92 = load i32, i32* @MLP_HEADER_SIZE, align 4
  %93 = call i32 @block_PeekBytes(%struct.TYPE_27__* %91, i32* %21, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %96, label %117

96:                                               ; preds = %89
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 5
  %101 = call i32 @SyncInfo(i32* %21, i32* %98, %struct.TYPE_31__* %100)
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  store i32 128, i32* %105, align 8
  br label %117

106:                                              ; preds = %96
  %107 = call i32 @SyncInfoDolby(i32* %21)
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 0
  store i32 128, i32* %111, align 8
  br label %117

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 4
  %116 = call i32 @block_SkipByte(%struct.TYPE_27__* %115)
  br label %89

117:                                              ; preds = %109, %103, %89
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 128
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 4
  %125 = call i32 @block_BytestreamFlush(%struct.TYPE_27__* %124)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %84, %126
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @VLC_TICK_INVALID, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %127
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 6
  %147 = call i64 @date_Get(i32* %146)
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @date_Set(i32* %151, i64 %154)
  br label %156

156:                                              ; preds = %149, %141, %127
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 0
  store i32 132, i32* %158, align 8
  br label %159

159:                                              ; preds = %84, %156
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 4
  %162 = load i32, i32* @MLP_HEADER_SIZE, align 4
  %163 = call i32 @block_PeekBytes(%struct.TYPE_27__* %161, i32* %21, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

166:                                              ; preds = %159
  %167 = call i32 @SyncInfoDolby(i32* %21)
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 5
  %179 = call i32 @SyncInfo(i32* %21, i32* %176, %struct.TYPE_31__* %178)
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %166
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %189 = call i32 @msg_Dbg(%struct.TYPE_32__* %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 4
  %192 = call i32 @block_SkipByte(%struct.TYPE_27__* %191)
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %195, i32 0, i32 0
  store i32 130, i32* %196, align 8
  br label %428

197:                                              ; preds = %182
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  store i32 131, i32* %199, align 8
  br label %200

200:                                              ; preds = %84, %197
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MLP_HEADER_SIZE, align 4
  %207 = call i32 @block_PeekOffsetBytes(%struct.TYPE_27__* %202, i32 %205, i32* %21, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %200
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %211 = icmp eq %struct.TYPE_34__* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 0
  store i32 133, i32* %214, align 8
  br label %428

215:                                              ; preds = %209
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

216:                                              ; preds = %200
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %13, align 4
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 5
  %222 = bitcast %struct.TYPE_31__* %14 to i8*
  %223 = bitcast %struct.TYPE_31__* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 8 %223, i64 16, i1 false)
  %224 = call i32 @SyncInfo(i32* %21, i32* %13, %struct.TYPE_31__* %14)
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %216
  %227 = call i32 @SyncInfoDolby(i32* %21)
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %226
  %230 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %231 = call i32 @msg_Dbg(%struct.TYPE_32__* %230, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 1
  store i32 0, i32* %233, align 4
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  store i32 130, i32* %235, align 8
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 4
  %238 = call i32 @block_SkipByte(%struct.TYPE_27__* %237)
  br label %428

239:                                              ; preds = %226, %216
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  store i32 133, i32* %241, align 8
  br label %428

242:                                              ; preds = %84
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @block_WaitBytes(%struct.TYPE_27__* %244, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

251:                                              ; preds = %242
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 0
  store i32 129, i32* %253, align 8
  br label %254

254:                                              ; preds = %84, %251
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = call %struct.TYPE_34__* @block_Alloc(i32 %257)
  store %struct.TYPE_34__* %258, %struct.TYPE_34__** %9, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %260 = icmp ne %struct.TYPE_34__* %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %254
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

262:                                              ; preds = %254
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 5
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @block_GetBytes(%struct.TYPE_27__* %264, i32* %267, i32 %270)
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @SyncInfoDolby(i32* %274)
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %262
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %279 = call i32 @block_Release(%struct.TYPE_34__* %278)
  %280 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 0
  store i32 130, i32* %281, align 8
  br label %428

282:                                              ; preds = %262
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %287, %291
  br i1 %292, label %293, label %318

293:                                              ; preds = %282
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @msg_Info(%struct.TYPE_32__* %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %298, i32 %302)
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %293
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 6
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @date_Change(i32* %311, i32 %315, i32 1)
  br label %317

317:                                              ; preds = %309, %293
  br label %318

318:                                              ; preds = %317, %282
  %319 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 4
  store i32 %322, i32* %326, align 8
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 3
  store i32 %330, i32* %334, align 4
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 2
  store i32 %338, i32* %342, align 8
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %348, i32 0, i32 1
  store i32 %345, i32* %349, align 4
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 0
  store i32 %353, i32* %357, align 8
  %358 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %358, i32 0, i32 6
  %360 = call i64 @date_Get(i32* %359)
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i32 0, i32 2
  store i64 %360, i64* %362, align 8
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 1
  store i64 %360, i64* %364, align 8
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 4
  store i32 %368, i32* %370, align 8
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 6
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i64 @date_Increment(i32* %372, i32 %376)
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = sub nsw i64 %377, %380
  %382 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %382, i32 0, i32 3
  store i64 %381, i64* %383, align 8
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %386, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %318
  %395 = load i64, i64* @VLC_TICK_INVALID, align 8
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_30__*, %struct.TYPE_30__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %399, i32 0, i32 0
  store i64 %395, i64* %400, align 8
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 2
  store i64 %395, i64* %402, align 8
  br label %403

403:                                              ; preds = %394, %318
  %404 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %403
  %409 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %410 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 8
  %414 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %414, i32 0, i32 3
  store i32 0, i32* %415, align 8
  br label %416

416:                                              ; preds = %408, %403
  %417 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %418 = icmp ne %struct.TYPE_34__** %417, null
  br i1 %418, label %419, label %424

419:                                              ; preds = %416
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %420, i32 0, i32 4
  %422 = call %struct.TYPE_34__* @block_BytestreamPop(%struct.TYPE_27__* %421)
  %423 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  store %struct.TYPE_34__* %422, %struct.TYPE_34__** %423, align 8
  br label %424

424:                                              ; preds = %419, %416
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i32 0, i32 0
  store i32 130, i32* %426, align 8
  %427 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_34__* %427, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %429

428:                                              ; preds = %84, %277, %239, %229, %212, %187
  br label %84

429:                                              ; preds = %424, %261, %250, %215, %165, %122, %73, %57, %46
  %430 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %430)
  %431 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  ret %struct.TYPE_34__* %431
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Flush(%struct.TYPE_32__*) #2

declare dso_local i32 @block_Release(%struct.TYPE_34__*) #2

declare dso_local i64 @date_Get(i32*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_32__*, i8*) #2

declare dso_local i32 @block_BytestreamPush(%struct.TYPE_27__*, %struct.TYPE_34__*) #2

declare dso_local i32 @block_PeekBytes(%struct.TYPE_27__*, i32*, i32) #2

declare dso_local i32 @SyncInfo(i32*, i32*, %struct.TYPE_31__*) #2

declare dso_local i32 @SyncInfoDolby(i32*) #2

declare dso_local i32 @block_SkipByte(%struct.TYPE_27__*) #2

declare dso_local i32 @block_BytestreamFlush(%struct.TYPE_27__*) #2

declare dso_local i32 @date_Set(i32*, i64) #2

declare dso_local i32 @block_PeekOffsetBytes(%struct.TYPE_27__*, i32, i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @block_WaitBytes(%struct.TYPE_27__*, i32) #2

declare dso_local %struct.TYPE_34__* @block_Alloc(i32) #2

declare dso_local i32 @block_GetBytes(%struct.TYPE_27__*, i32*, i32) #2

declare dso_local i32 @msg_Info(%struct.TYPE_32__*, i8*, i32, i32) #2

declare dso_local i32 @date_Change(i32*, i32, i32) #2

declare dso_local i64 @date_Increment(i32*, i32) #2

declare dso_local %struct.TYPE_34__* @block_BytestreamPop(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
