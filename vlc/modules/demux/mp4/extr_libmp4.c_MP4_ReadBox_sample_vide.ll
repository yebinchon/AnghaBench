; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_sample_vide.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_sample_vide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64**, i32, i32* }

@ATOM_vide = common dso_local global i32 0, align 4
@MP4_Box_data_sample_vide_t = common dso_local global i32 0, align 4
@MP4_FreeBox_sample_vide = common dso_local global i32 0, align 4
@i_read = common dso_local global i32 0, align 4
@header_size = common dso_local global i32 0, align 4
@p_peek = common dso_local global i32* null, align 8
@ATOM_drmi = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"DRM protected streams are not supported.\00", align 1
@p_buff = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MP4_ReadBox_sample_vide(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load i32, i32* @ATOM_vide, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @MP4_Box_data_sample_vide_t, align 4
  %12 = load i32, i32* @MP4_FreeBox_sample_vide, align 4
  %13 = call i32 @MP4_READBOX_ENTER(i32 %11, i32 %12)
  %14 = load i32, i32* @i_read, align 4
  %15 = load i32, i32* @header_size, align 4
  %16 = add nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 6
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 17
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MP4_GET1BYTE(i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MP4_GET2BYTES(i32 %42)
  %44 = load i32, i32* @i_read, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %36
  %47 = load i32, i32* @i_read, align 4
  %48 = call i64** @malloc(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 15
  store i64** %48, i64*** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 15
  %59 = load i64**, i64*** %58, align 8
  %60 = icmp eq i64** %59, null
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %66

66:                                               ; preds = %64, %46
  %67 = load i32, i32* @i_read, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 15
  %78 = load i64**, i64*** %77, align 8
  %79 = load i32*, i32** @p_peek, align 8
  %80 = load i32, i32* @i_read, align 4
  %81 = call i32 @memcpy(i64** %78, i32* %79, i32 %80)
  br label %93

82:                                               ; preds = %36
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 15
  store i64** null, i64*** %92, align 8
  br label %93

93:                                               ; preds = %82, %66
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @MP4_GET2BYTES(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MP4_GET2BYTES(i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MP4_GET4BYTES(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @MP4_GET4BYTES(i32 %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @MP4_GET4BYTES(i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @MP4_GET2BYTES(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MP4_GET2BYTES(i32 %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MP4_GET4BYTES(i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @MP4_GET4BYTES(i32 %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @MP4_GET4BYTES(i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @MP4_GET2BYTES(i32 %169)
  %171 = load i32, i32* @i_read, align 4
  %172 = icmp slt i32 %171, 32
  br i1 %172, label %173, label %175

173:                                              ; preds = %93
  %174 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %175

175:                                              ; preds = %173, %93
  %176 = load i32*, i32** @p_peek, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 31
  br i1 %179, label %180, label %203

180:                                              ; preds = %175
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32*, i32** @p_peek, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32*, i32** @p_peek, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @memcpy(i64** %185, i32* %187, i32 %190)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32*, i32** @p_peek, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %197, i64 %201
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %180, %175
  %204 = load i32*, i32** @p_peek, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 32
  store i32* %205, i32** @p_peek, align 8
  %206 = load i32, i32* @i_read, align 4
  %207 = sub nsw i32 %206, 32
  store i32 %207, i32* @i_read, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @MP4_GET2BYTES(i32 %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @MP4_GET2BYTES(i32 %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @ATOM_drmi, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %203
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @msg_Warn(i32* %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %230 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %231

231:                                              ; preds = %227, %203
  %232 = load i64, i64* %6, align 8
  %233 = icmp ugt i64 %232, 78
  br i1 %233, label %234, label %260

234:                                              ; preds = %231
  %235 = load i32*, i32** @p_peek, align 8
  %236 = load i32*, i32** @p_buff, align 8
  %237 = ptrtoint i32* %235 to i64
  %238 = ptrtoint i32* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sdiv exact i64 %239, 4
  %241 = icmp sgt i64 %240, 78
  br i1 %241, label %242, label %260

242:                                              ; preds = %234
  %243 = load i32*, i32** %4, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = load i32*, i32** @p_peek, align 8
  %246 = load i32, i32* @i_read, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** @p_peek, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32*, i32** @p_buff, align 8
  %254 = ptrtoint i32* %252 to i64
  %255 = ptrtoint i32* %253 to i64
  %256 = sub i64 %254, %255
  %257 = sdiv exact i64 %256, 4
  %258 = trunc i64 %257 to i32
  %259 = call i32 @MP4_ReadBoxContainerRawInBox(i32* %243, %struct.TYPE_8__* %244, i32* %245, i32 %246, i32 %258)
  br label %260

260:                                              ; preds = %242, %234, %231
  %261 = call i32 @MP4_READBOX_EXIT(i32 1)
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i32 @MP4_READBOX_ENTER(i32, i32) #1

declare dso_local i32 @MP4_GET1BYTE(i32) #1

declare dso_local i32 @MP4_GET2BYTES(i32) #1

declare dso_local i64** @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i32 @memcpy(i64**, i32*, i32) #1

declare dso_local i32 @MP4_GET4BYTES(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @MP4_ReadBoxContainerRawInBox(i32*, %struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
