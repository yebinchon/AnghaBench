; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_Compress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_Compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32*, i64, i64, i32, i32*, %struct.TYPE_16__*, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%u)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"lpic={0x%X,%p,%p,%p,%p,%p,%p,%d,%u,%u,%p,%p}\0A\00", align 1
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@ICCOMPRESS_KEYFRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c": prev=%d cur=%d gone back? -- untested\0A\00", align 1
@ICERR_GOTOKEYFRAME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c": prev=%d cur=%d compute swapped -- untested\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"switched to keyframe, was small enough!\0A\00", align 1
@cktypeDIBbits = common dso_local global i32 0, align 4
@AVIIF_TWOCC = common dso_local global i32 0, align 4
@AVIIF_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @Compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Compress(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %14, %struct.TYPE_14__* %15, i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = icmp eq %struct.TYPE_14__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 96
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %3
  %29 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %29, i64* %4, align 8
  br label %426

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %40, %35, %30
  %51 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %51, i64* %4, align 8
  br label %426

52:                                               ; preds = %45
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 11
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 10
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %55, %struct.TYPE_16__* %58, i32 %61, i32* %64, i32* %67, i32* %70, i32* %73, i64 %76, i64 %79, i32 %82, i32* %85, i32* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %52
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i64 @CompressBegin(%struct.TYPE_15__* %95, i32* %98, %struct.TYPE_16__* %101)
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @ICERR_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %4, align 8
  br label %426

108:                                              ; preds = %94
  br label %123

109:                                              ; preds = %52
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 9
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = call i64 @CompressQuery(%struct.TYPE_15__* %110, i32* %113, %struct.TYPE_16__* %116)
  %118 = load i64, i64* @ICERR_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %121, i64* %4, align 8
  br label %426

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %108
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  %131 = icmp sge i64 %126, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 9
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @computeInternalFrame(%struct.TYPE_15__* %133, i32* %136, i32* %139)
  br label %234

141:                                              ; preds = %123
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %141
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %11, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  br label %233

161:                                              ; preds = %141
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %232

168:                                              ; preds = %161
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %171, i64 %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 11
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %168
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 10
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %180, %168
  %186 = load i64, i64* @ICERR_GOTOKEYFRAME, align 8
  store i64 %186, i64* %4, align 8
  br label %426

187:                                              ; preds = %180
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 11
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = call i64 @CompressQuery(%struct.TYPE_15__* %188, i32* %191, %struct.TYPE_16__* %194)
  %196 = load i64, i64* @ICERR_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %187
  %199 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %199, i64* %4, align 8
  br label %426

200:                                              ; preds = %187
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %203, i64 %206)
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 11
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 10
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @computeInternalFrame(%struct.TYPE_15__* %208, i32* %211, i32* %214)
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  store i8* %218, i8** %12, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %200, %161
  br label %233

233:                                              ; preds = %232, %149
  br label %234

234:                                              ; preds = %233, %132
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %391, %234
  %243 = load i32, i32* %9, align 4
  %244 = icmp slt i32 %243, 3
  br i1 %244, label %245, label %394

245:                                              ; preds = %242
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 4
  br i1 %255, label %256, label %272

256:                                              ; preds = %245
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 9
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 8
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @MSRLE32_CompressRLE4(%struct.TYPE_15__* %257, i32* %260, i32* %263, %struct.TYPE_16__* %266, i32 %269, i32 %270)
  br label %288

272:                                              ; preds = %245
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 9
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 8
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @MSRLE32_CompressRLE8(%struct.TYPE_15__* %273, i32* %276, i32* %279, %struct.TYPE_16__* %282, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %272, %256
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %303, label %293

293:                                              ; preds = %288
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 6
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = icmp slt i64 %298, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %293, %288
  br label %394

304:                                              ; preds = %293
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  %310 = and i32 %308, %309
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %380

312:                                              ; preds = %304
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 6
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = icmp eq i32 %317, 4
  br i1 %318, label %319, label %335

319:                                              ; preds = %312
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 9
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 8
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 6
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @TRUE, align 4
  %334 = call i32 @MSRLE32_CompressRLE4(%struct.TYPE_15__* %320, i32* %323, i32* %326, %struct.TYPE_16__* %329, i32 %332, i32 %333)
  br label %351

335:                                              ; preds = %312
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 9
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 8
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 6
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %344, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @TRUE, align 4
  %350 = call i32 @MSRLE32_CompressRLE8(%struct.TYPE_15__* %336, i32* %339, i32* %342, %struct.TYPE_16__* %345, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %335, %319
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %366, label %356

356:                                              ; preds = %351
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 6
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = icmp slt i64 %361, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %356, %351
  %367 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %368 = load i32, i32* @TRUE, align 4
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* @cktypeDIBbits, align 4
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @StreamFromFOURCC(i32 %373)
  %375 = call i32 @MAKEAVICKID(i32 %369, i32 %374)
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  store i32 %375, i32* %378, align 4
  br label %394

379:                                              ; preds = %356
  br label %380

380:                                              ; preds = %379, %304
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = icmp slt i32 %383, 1000
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  br label %394

386:                                              ; preds = %380
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = sub nsw i32 %389, 1000
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %386
  %392 = load i32, i32* %9, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %9, align 4
  br label %242

394:                                              ; preds = %385, %366, %303, %242
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  %397 = load i8*, i8** %396, align 8
  store i8* %397, i8** %13, align 8
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 1
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 2
  store i8* %400, i8** %402, align 8
  %403 = load i8*, i8** %13, align 8
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  store i8* %403, i8** %405, align 8
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  store i64 %408, i64* %410, align 8
  %411 = load i32, i32* @AVIIF_TWOCC, align 4
  %412 = load i32, i32* %8, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %394
  %415 = load i32, i32* @AVIIF_KEYFRAME, align 4
  br label %417

416:                                              ; preds = %394
  br label %417

417:                                              ; preds = %416, %414
  %418 = phi i32 [ %415, %414 ], [ 0, %416 ]
  %419 = or i32 %411, %418
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, %419
  store i32 %424, i32* %422, align 4
  %425 = load i64, i64* @ICERR_OK, align 8
  store i64 %425, i64* %4, align 8
  br label %426

426:                                              ; preds = %417, %198, %185, %120, %106, %50, %28
  %427 = load i64, i64* %4, align 8
  ret i64 %427
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CompressBegin(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @CompressQuery(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @computeInternalFrame(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @MSRLE32_CompressRLE4(%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MSRLE32_CompressRLE8(%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MAKEAVICKID(i32, i32) #1

declare dso_local i32 @StreamFromFOURCC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
