; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_packetizer_helper.h_packetizer_PacketizeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_packetizer_helper.h_packetizer_PacketizeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i8*, i8*, i32* }
%struct.TYPE_21__ = type { i32, i32, i64, i64, %struct.TYPE_23__, i32, i32 (i32, %struct.TYPE_22__*)*, %struct.TYPE_22__* (i32, i32*, %struct.TYPE_22__*)*, i32, i32, i32, i32, i32 (i32, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_AU_END = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_21__*, %struct.TYPE_22__**)* @packetizer_PacketizeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @packetizer_PacketizeBlock(%struct.TYPE_21__* %0, %struct.TYPE_22__** %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %5, align 8
  %11 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %12 = icmp ne %struct.TYPE_22__** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi %struct.TYPE_22__* [ %15, %13 ], [ null, %16 ]
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = icmp eq %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %327

28:                                               ; preds = %21, %17
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = icmp ne %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %36 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call %struct.TYPE_22__* @packetizer_PacketizeBlock(%struct.TYPE_21__* %42, %struct.TYPE_22__** null)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %7, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %3, align 8
  br label %327

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store i32 128, i32* %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 4
  %53 = call i32 @block_BytestreamEmpty(%struct.TYPE_23__* %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 12
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %58(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %48, %31, %28
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = call i32 @block_BytestreamPush(%struct.TYPE_23__* %68, %struct.TYPE_22__* %69)
  br label %71

71:                                               ; preds = %66, %63
  br label %72

72:                                               ; preds = %326, %71
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %326 [
    i32 128, label %76
    i32 129, label %121
  ]

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @block_FindStartcodeFromOffset(%struct.TYPE_23__* %78, i32* %80, i32 %83, i32 %86, i32 %89, i32* null)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %76
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  store i32 129, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %76
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @block_SkipBytes(%struct.TYPE_23__* %102, i32 %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = call i32 @block_BytestreamFlush(%struct.TYPE_23__* %110)
  br label %112

112:                                              ; preds = %100, %95
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 129
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %327

118:                                              ; preds = %112
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %72, %118
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @block_FindStartcodeFromOffset(%struct.TYPE_23__* %123, i32* %125, i32 %128, i32 %131, i32 %134, i32* null)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %180

137:                                              ; preds = %121
  %138 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %139 = icmp ne %struct.TYPE_22__** %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140, %137
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %327

147:                                              ; preds = %140
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 4
  %150 = call i32 @block_BytestreamRemaining(%struct.TYPE_23__* %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %327

158:                                              ; preds = %147
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ule i64 %162, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %158
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %327

179:                                              ; preds = %168, %158
  br label %180

180:                                              ; preds = %179, %121
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 4
  %183 = call i32 @block_BytestreamFlush(%struct.TYPE_23__* %182)
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  store %struct.TYPE_22__* %187, %struct.TYPE_22__** %10, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %191, %194
  %196 = call %struct.TYPE_22__* @block_Alloc(i64 %195)
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %9, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %180
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = icmp eq i64 %216, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %213
  %223 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %213, %180
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = sub i64 %240, %243
  %245 = call i32 @block_GetBytes(%struct.TYPE_23__* %230, i32* %237, i64 %244)
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ugt i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %228
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @memcpy(i32* %253, i32 %256, i64 %259)
  br label %261

261:                                              ; preds = %250, %228
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ult i64 %266, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %261
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %273 = call i32 @block_Release(%struct.TYPE_22__* %272)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  br label %293

274:                                              ; preds = %261
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 7
  %277 = load %struct.TYPE_22__* (i32, i32*, %struct.TYPE_22__*)*, %struct.TYPE_22__* (i32, i32*, %struct.TYPE_22__*)** %276, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %282 = call %struct.TYPE_22__* %277(i32 %280, i32* %8, %struct.TYPE_22__* %281)
  store %struct.TYPE_22__* %282, %struct.TYPE_22__** %9, align 8
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %274
  %286 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %285, %274
  br label %293

293:                                              ; preds = %292, %271
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %295 = icmp ne %struct.TYPE_22__* %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 0
  store i32 128, i32* %298, align 8
  br label %326

299:                                              ; preds = %293
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 6
  %302 = load i32 (i32, %struct.TYPE_22__*)*, i32 (i32, %struct.TYPE_22__*)** %301, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %307 = call i32 %302(i32 %305, %struct.TYPE_22__* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %299
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  store i32 128, i32* %311, align 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %313 = call i32 @block_Release(%struct.TYPE_22__* %312)
  br label %326

314:                                              ; preds = %299
  %315 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %316 = icmp ne %struct.TYPE_22__** %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 4
  %320 = call %struct.TYPE_22__* @block_BytestreamPop(%struct.TYPE_23__* %319)
  %321 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* %320, %struct.TYPE_22__** %321, align 8
  br label %322

322:                                              ; preds = %317, %314
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 0
  store i32 128, i32* %324, align 8
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %325, %struct.TYPE_22__** %3, align 8
  br label %327

326:                                              ; preds = %72, %309, %296
  br label %72

327:                                              ; preds = %322, %178, %157, %146, %117, %46, %27
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %328
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_BytestreamEmpty(%struct.TYPE_23__*) #1

declare dso_local i32 @block_BytestreamPush(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @block_FindStartcodeFromOffset(%struct.TYPE_23__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @block_SkipBytes(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @block_BytestreamFlush(%struct.TYPE_23__*) #1

declare dso_local i32 @block_BytestreamRemaining(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @block_Alloc(i64) #1

declare dso_local i32 @block_GetBytes(%struct.TYPE_23__*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @block_BytestreamPop(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
