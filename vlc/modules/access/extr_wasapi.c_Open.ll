; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32*, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32**, i32*, i32*, i32*, i32*, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"live-caching\00", align 1
@FALSE = common dso_local global i32 0, align 4
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot initialize COM (error 0x%lX)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot set event handle (error 0x%lX)\00", align 1
@Thread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %257

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %257

34:                                               ; preds = %25, %20
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_9__* @vlc_obj_malloc(i32* %35, i32 56)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %257

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @var_InheritInteger(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @VLC_TICK_FROM_MS(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = call i32 (...) @vlc_tick_now()
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %67, %44
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %57

70:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i8* @CreateEvent(i32* null, i32 %75, i32 %76, i32* null)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %78, i32** %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  br label %205

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %71

98:                                               ; preds = %71
  %99 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %100 = call i32 @CoInitializeEx(i32* null, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @FAILED(i32 %101)
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @msg_Err(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %205

109:                                              ; preds = %98
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = call i32* @GetClient(%struct.TYPE_8__* %110, i32* %9)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = call i32 (...) @CoUninitialize()
  br label %205

120:                                              ; preds = %109
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = call i32* @CreateES(%struct.TYPE_8__* %121, i32* %124, i32 %125, i32 %128, i32* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  br label %205

139:                                              ; preds = %120
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @IAudioClient_SetEventHandle(i32* %142, i32* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @FAILED(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %139
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @msg_Err(%struct.TYPE_8__* %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %205

156:                                              ; preds = %139
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %159, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i8* @CreateEvent(i32* null, i32 %160, i32 %161, i32* null)
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 4
  store i32* %163, i32** %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %205

171:                                              ; preds = %156
  %172 = load i32, i32* @Thread, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = call i64 @_beginthreadex(i32* null, i32 0, i32 %172, %struct.TYPE_8__* %173, i32 0, i32* null)
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @INFINITE, align 4
  %182 = call i32 @WaitForSingleObject(i32* %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %171
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @CloseHandle(i32* %186)
  %188 = load i64, i64* %10, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  store i32* %189, i32** %191, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %205

197:                                              ; preds = %183
  %198 = call i32 (...) @CoUninitialize()
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  store i32* null, i32** %200, align 8
  %201 = load i32, i32* @Control, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %204, i32* %2, align 4
  br label %257

205:                                              ; preds = %196, %170, %152, %138, %118, %105, %93
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @es_out_Del(i32* %213, i32* %216)
  br label %218

218:                                              ; preds = %210, %205
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @IAudioClient_Release(i32* %226)
  %228 = call i32 (...) @CoUninitialize()
  br label %229

229:                                              ; preds = %223, %218
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %252, %229
  %231 = load i32, i32* %11, align 4
  %232 = icmp ult i32 %231, 2
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %233
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @CloseHandle(i32* %249)
  br label %251

251:                                              ; preds = %242, %233
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %11, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %230

255:                                              ; preds = %230
  %256 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %255, %197, %42, %32, %18
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.TYPE_9__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32* @GetClient(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32* @CreateES(%struct.TYPE_8__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @IAudioClient_SetEventHandle(i32*, i32*) #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @es_out_Del(i32*, i32*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
