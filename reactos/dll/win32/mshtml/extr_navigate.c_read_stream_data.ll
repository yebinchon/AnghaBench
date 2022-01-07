; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_stream_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_10__, i32, %struct.TYPE_8__*, i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i8* }

@TRUE = common dso_local global i64 0, align 8
@IID_IWinInetHttpInfo = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@UTF8_STR = common dso_local global i32 0, align 4
@UTF16_STR = common dso_local global i32 0, align 4
@text_htmlW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Found MIME %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"OnDataAvailable failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer is full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*)* @read_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_stream_data(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @TRUE, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = bitcast i32** %9 to i8**
  %32 = call i64 @IBinding_QueryInterface(i64 %30, i32* @IID_IWinInetHttpInfo, i8** %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @SUCCEEDED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @query_http_info(%struct.TYPE_9__* %37, i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @IWinInetHttpInfo_Release(i32* %40)
  br label %42

42:                                               ; preds = %36, %26
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @S_OK, align 8
  store i64 %50, i64* %3, align 8
  br label %273

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %70, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %62 = call i64 @read_stream(%struct.TYPE_10__* %59, i32* %60, i32* %61, i32 4096, i32* %6)
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i1 [ false, %63 ], [ %69, %67 ]
  br i1 %71, label %57, label %72

72:                                               ; preds = %70
  %73 = load i64, i64* @S_OK, align 8
  store i64 %73, i64* %3, align 8
  br label %273

74:                                               ; preds = %51
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %74
  %80 = call %struct.TYPE_11__* (...) @create_nsprotocol_stream()
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %88, i64* %3, align 8
  br label %273

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %267, %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = sub i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = call i64 @read_stream(%struct.TYPE_10__* %100, i32* %101, i32* %113, i32 %121, i32* %6)
  store i64 %122, i64* %8, align 8
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %91
  br label %271

126:                                              ; preds = %91
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, %127
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %219

136:                                              ; preds = %126
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %156 [
    i32 128, label %141
    i32 129, label %148
    i32 130, label %155
  ]

141:                                              ; preds = %136
  %142 = load i32, i32* @UTF8_STR, align 4
  %143 = call i8* @heap_strdupA(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i8* %143, i8** %147, align 8
  br label %156

148:                                              ; preds = %136
  %149 = load i32, i32* @UTF16_STR, align 4
  %150 = call i8* @heap_strdupA(i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  store i8* %150, i8** %154, align 8
  br label %155

155:                                              ; preds = %136, %148
  br label %156

156:                                              ; preds = %155, %136, %141
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %210, label %163

163:                                              ; preds = %156
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %163
  %179 = load i32*, i32** @text_htmlW, align 8
  br label %181

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32* [ %179, %178 ], [ null, %180 ]
  %183 = call i64 @FindMimeFromData(i32* null, i32* null, i32* %168, i32 %173, i32* %182, i32 0, i32** %12, i32 0)
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = call i64 @FAILED(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i64, i64* %8, align 8
  store i64 %188, i64* %3, align 8
  br label %273

189:                                              ; preds = %181
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @debugstr_w(i32* %190)
  %192 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32*, i32** %12, align 8
  %194 = call i32 @heap_strdupWtoA(i32* %193)
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i32 %194, i32* %198, align 4
  %199 = load i32*, i32** %12, align 8
  %200 = call i32 @CoTaskMemFree(i32* %199)
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %189
  %208 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %208, i64* %3, align 8
  br label %273

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209, %156
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %212 = call i64 @on_start_nsrequest(%struct.TYPE_9__* %211)
  store i64 %212, i64* %8, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i64 @FAILED(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i64, i64* %8, align 8
  store i64 %217, i64* %3, align 8
  br label %273

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218, %126
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %237, %242
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @nsIStreamListener_OnDataAvailable(i32 %222, i32* %226, i32 %229, i32* %233, i32 %243, i32 %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i64 @NS_FAILED(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %219
  %254 = load i32, i32* %7, align 4
  %255 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %253, %219
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = icmp eq i64 %262, 8
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %271

266:                                              ; preds = %256
  br label %267

267:                                              ; preds = %266
  %268 = load i64, i64* %8, align 8
  %269 = load i64, i64* @S_OK, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %91, label %271

271:                                              ; preds = %267, %264, %125
  %272 = load i64, i64* @S_OK, align 8
  store i64 %272, i64* %3, align 8
  br label %273

273:                                              ; preds = %271, %216, %207, %187, %87, %72, %49
  %274 = load i64, i64* %3, align 8
  ret i64 %274
}

declare dso_local i64 @IBinding_QueryInterface(i64, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @query_http_info(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @IWinInetHttpInfo_Release(i32*) #1

declare dso_local i64 @read_stream(%struct.TYPE_10__*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @create_nsprotocol_stream(...) #1

declare dso_local i8* @heap_strdupA(i32) #1

declare dso_local i64 @FindMimeFromData(i32*, i32*, i32*, i32, i32*, i32, i32**, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @heap_strdupWtoA(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @on_start_nsrequest(%struct.TYPE_9__*) #1

declare dso_local i32 @nsIStreamListener_OnDataAvailable(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
