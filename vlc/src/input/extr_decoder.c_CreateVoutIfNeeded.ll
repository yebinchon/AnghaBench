; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_CreateVoutIfNeeded.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_CreateVoutIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i32, i32*, i32, %struct.TYPE_12__, i32*, i32, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"vout: none found\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vout change: decoder size\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vout change: visible size\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"vout change: chroma\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vout change: SAR\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"vout change: orientation\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"vout change: multiview\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to create video output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoder_owner*, i32**, i32*, i32**)* @CreateVoutIfNeeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateVoutIfNeeded(%struct.decoder_owner* %0, i32** %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.decoder_owner*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %17 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = call i32 @msg_Dbg(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %30 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %23
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %42 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35, %23
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = call i32 @msg_Dbg(%struct.TYPE_15__* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %57 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %55, %60
  br i1 %61, label %98, label %62

62:                                               ; preds = %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %69 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %98, label %74

74:                                               ; preds = %62
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %81 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %79, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %74
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %93 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %91, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86, %74, %62, %50
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %100 = call i32 @msg_Dbg(%struct.TYPE_15__* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %86
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %107 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %105, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = call i32 @msg_Dbg(%struct.TYPE_15__* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %112, %101
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %123 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %121, %126
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %135 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %133, %138
  %140 = icmp ne i32 %127, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %115
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = call i32 @msg_Dbg(%struct.TYPE_15__* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %144

144:                                              ; preds = %141, %115
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %151 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %149, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %158 = call i32 @msg_Dbg(%struct.TYPE_15__* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %156, %144
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %166 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %164, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %173 = call i32 @msg_Dbg(%struct.TYPE_15__* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %174

174:                                              ; preds = %171, %159
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %174
  %178 = load i32**, i32*** %7, align 8
  %179 = icmp ne i32** %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %182 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %181, i32 0, i32 4
  %183 = call i32 @vlc_mutex_lock(i32* %182)
  %184 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %185 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = load i32**, i32*** %7, align 8
  store i32* %186, i32** %187, align 8
  %188 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %189 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** %8, align 8
  store i32 %190, i32* %191, align 4
  %192 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %193 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %192, i32 0, i32 4
  %194 = call i32 @vlc_mutex_unlock(i32* %193)
  br label %195

195:                                              ; preds = %180, %177
  store i32 0, i32* %5, align 4
  br label %337

196:                                              ; preds = %174
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %234

203:                                              ; preds = %196
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %203
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp slt i64 %215, %220
  br i1 %221, label %234, label %222

222:                                              ; preds = %210
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %227, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %222, %210, %203, %196
  store i32 -1, i32* %5, align 4
  br label %337

235:                                              ; preds = %222
  %236 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %237 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %236, i32 0, i32 4
  %238 = call i32 @vlc_mutex_lock(i32* %237)
  %239 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %240 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  store i32* %241, i32** %12, align 8
  %242 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %243 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %242, i32 0, i32 6
  store i32* null, i32** %243, align 8
  %244 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %245 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %244, i32 0, i32 4
  %246 = call i32 @vlc_mutex_unlock(i32* %245)
  %247 = load i32**, i32*** %9, align 8
  %248 = icmp ne i32** %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %235
  %250 = load i32**, i32*** %9, align 8
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %249, %235
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  store %struct.TYPE_10__* %255, %struct.TYPE_10__** %252, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %257 = load i32*, i32** %12, align 8
  store i32* %257, i32** %256, align 8
  %258 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %259 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = load i32*, i32** %8, align 8
  %262 = load i32**, i32*** %9, align 8
  %263 = call i32* @input_resource_GetVoutDecoderDevice(i32 %260, %struct.TYPE_14__* %13, i32* %261, i32** %262)
  store i32* %263, i32** %12, align 8
  %264 = load i32**, i32*** %7, align 8
  %265 = icmp ne i32** %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %251
  %267 = load i32*, i32** %12, align 8
  %268 = load i32**, i32*** %7, align 8
  store i32* %267, i32** %268, align 8
  br label %269

269:                                              ; preds = %266, %251
  %270 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %271 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %270, i32 0, i32 4
  %272 = call i32 @vlc_mutex_lock(i32* %271)
  %273 = load i32*, i32** %12, align 8
  %274 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %275 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %274, i32 0, i32 6
  store i32* %273, i32** %275, align 8
  %276 = load i32*, i32** %8, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %279 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load i32**, i32*** %9, align 8
  %281 = icmp ne i32** %280, null
  br i1 %281, label %282, label %295

282:                                              ; preds = %269
  %283 = load i32*, i32** %12, align 8
  %284 = icmp eq i32* %283, null
  br i1 %284, label %285, label %294

285:                                              ; preds = %282
  %286 = load i32**, i32*** %9, align 8
  %287 = load i32*, i32** %286, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i32**, i32*** %9, align 8
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @vlc_decoder_device_Release(i32* %291)
  %293 = load i32**, i32*** %9, align 8
  store i32* null, i32** %293, align 8
  br label %294

294:                                              ; preds = %289, %285, %282
  br label %295

295:                                              ; preds = %294, %269
  %296 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %297 = call i32 @DecoderUpdateFormatLocked(%struct.decoder_owner* %296)
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %303 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 6
  store i64 %301, i64* %305, align 8
  %306 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %307 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %306, i32 0, i32 4
  %308 = call i32 @vlc_mutex_unlock(i32* %307)
  %309 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %310 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %295
  %314 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %315 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @picture_pool_Release(i32* %316)
  %318 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %319 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %318, i32 0, i32 3
  store i32* null, i32** %319, align 8
  br label %320

320:                                              ; preds = %313, %295
  %321 = load i32*, i32** %12, align 8
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %325 = call i32 @msg_Err(%struct.TYPE_15__* %324, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %337

326:                                              ; preds = %320
  %327 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %328 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @vlc_fifo_Lock(i32 %329)
  %331 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %332 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %331, i32 0, i32 1
  store i32 1, i32* %332, align 4
  %333 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %334 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @vlc_fifo_Unlock(i32 %335)
  store i32 1, i32* %5, align 4
  br label %337

337:                                              ; preds = %326, %323, %234, %195
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32* @input_resource_GetVoutDecoderDevice(i32, %struct.TYPE_14__*, i32*, i32**) #1

declare dso_local i32 @vlc_decoder_device_Release(i32*) #1

declare dso_local i32 @DecoderUpdateFormatLocked(%struct.decoder_owner*) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
