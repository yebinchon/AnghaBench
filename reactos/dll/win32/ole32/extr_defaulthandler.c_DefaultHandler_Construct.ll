; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_defaulthandler.c_DefaultHandler_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_defaulthandler.c_DefaultHandler_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32, i32, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }

@DefaultHandler_IOleObject_VTable = common dso_local global i32 0, align 4
@DefaultHandler_NDIUnknown_VTable = common dso_local global i32 0, align 4
@DefaultHandler_IDataObject_VTable = common dso_local global i32 0, align 4
@DefaultHandler_IRunnableObject_VTable = common dso_local global i32 0, align 4
@DefaultHandler_IAdviseSink_VTable = common dso_local global i32 0, align 4
@DefaultHandler_IPersistStorage_VTable = common dso_local global i32 0, align 4
@EMBDHLP_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IPersistStorage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unexpected error creating data cache\0A\00", align 1
@object_state_not_running = common dso_local global i32 0, align 4
@storage_state_uninitialised = common dso_local global i32 0, align 4
@EMBDHLP_DELAYCREATE = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDataObject = common dso_local global i32 0, align 4
@object_state_running = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"object creation failed with error %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32*, %struct.TYPE_20__*, i32, i32*)* @DefaultHandler_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @DefaultHandler_Construct(i32* %0, %struct.TYPE_20__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call %struct.TYPE_21__* @HeapAlloc(i32 %13, i32 0, i32 192)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %10, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %16 = icmp ne %struct.TYPE_21__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %5, align 8
  br label %211

19:                                               ; preds = %4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 25
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32* @DefaultHandler_IOleObject_VTable, i32** %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 20
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i32* @DefaultHandler_NDIUnknown_VTable, i32** %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 24
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32* @DefaultHandler_IDataObject_VTable, i32** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 23
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32* @DefaultHandler_IRunnableObject_VTable, i32** %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 22
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32* @DefaultHandler_IAdviseSink_VTable, i32** %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 21
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  store i32* @DefaultHandler_IPersistStorage_VTable, i32** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EMBDHLP_INPROC_SERVER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = icmp ne %struct.TYPE_20__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %19
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 20
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %7, align 8
  br label %52

52:                                               ; preds = %49, %19
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 18
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 18
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 17
  %62 = bitcast %struct.TYPE_20__** %61 to i8**
  %63 = call i32 @CreateDataCache(%struct.TYPE_20__* %58, i32* %59, i32* @IID_IUnknown, i8** %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @SUCCEEDED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %52
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 17
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 19
  %73 = bitcast i32* %72 to i8**
  %74 = call i32 @IUnknown_QueryInterface(%struct.TYPE_20__* %70, i32* @IID_IPersistStorage, i8** %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @SUCCEEDED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 18
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @IUnknown_Release(%struct.TYPE_20__* %81)
  br label %88

83:                                               ; preds = %67
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 17
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = call i32 @IUnknown_Release(%struct.TYPE_20__* %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %52
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %97 = call i32 @HeapFree(i32 %95, i32 0, %struct.TYPE_21__* %96)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %211

98:                                               ; preds = %89
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 16
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 15
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 14
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 13
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 12
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 6
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* @object_state_not_running, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 11
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 10
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 9
  store i32* null, i32** %127, align 8
  %128 = load i32, i32* @storage_state_uninitialised, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %199

135:                                              ; preds = %98
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @EMBDHLP_DELAYCREATE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %199, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 5
  %149 = bitcast i32** %148 to i8**
  %150 = call i32 @IClassFactory_CreateInstance(i32* %146, i32* null, i32* @IID_IOleObject, i8** %149)
  store i32 %150, i32* %12, align 4
  br label %159

151:                                              ; preds = %140
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 7
  %154 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 5
  %157 = bitcast i32** %156 to i8**
  %158 = call i32 @CoCreateInstance(i32* %153, i32* null, i32 %154, i32* @IID_IOleObject, i8** %157)
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %151, %145
  %160 = load i32, i32* %12, align 4
  %161 = call i64 @SUCCEEDED(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 6
  %169 = bitcast i32** %168 to i8**
  %170 = call i32 @IOleObject_QueryInterface(i32* %166, i32* @IID_IPersistStorage, i8** %169)
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %163, %159
  %172 = load i32, i32* %12, align 4
  %173 = call i64 @SUCCEEDED(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  %181 = bitcast i32** %180 to i8**
  %182 = call i32 @IOleObject_QueryInterface(i32* %178, i32* @IID_IDataObject, i8** %181)
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %175, %171
  %184 = load i32, i32* %12, align 4
  %185 = call i64 @SUCCEEDED(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @object_state_running, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %187, %183
  %192 = load i32, i32* %12, align 4
  %193 = call i64 @FAILED(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %195, %191
  br label %209

199:                                              ; preds = %135, %98
  %200 = load i32*, i32** %9, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 2
  store i32* %200, i32** %202, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @IClassFactory_AddRef(i32* %206)
  br label %208

208:                                              ; preds = %205, %199
  br label %209

209:                                              ; preds = %208, %198
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %5, align 8
  br label %211

211:                                              ; preds = %209, %93, %17
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %212
}

declare dso_local %struct.TYPE_21__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CreateDataCache(%struct.TYPE_20__*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(%struct.TYPE_20__*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_20__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IOleObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IClassFactory_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
