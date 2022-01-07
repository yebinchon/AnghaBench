; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_avisplitter.c_test_filter_graph.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_avisplitter.c_test_filter_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PINDIR_OUTPUT = common dso_local global i64 0, align 8
@avifile = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not read test file \22%s\22, skipping test\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AVI \00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"%s is not an avi riff file, not doing the avi splitter test\0A\00", align 1
@pAviSplitter = common dso_local global i32 0, align 4
@IID_IFileSourceFilter = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Avi splitter returns unexpected error: %08x\0A\00", align 1
@CLSID_AsyncReader = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IBaseFilter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Could not create asynchronous reader: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Could not get IFileSourceFilter: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not get base filter: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not load file: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"No enumpins: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"No pin: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Could not connect: %08x\0A\00", align 1
@CLSID_NullRenderer = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"Null renderer not registered, skipping\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Could not create null renderer: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to enum pins, hr %#x.\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to get next pin, hr %#x.\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Failed to connect output pin: %08x\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed to query pin info, hr %#x.\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Prerequisites not matched, skipping remainder of test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filter_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filter_graph() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [13 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  %19 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %20 = load i64, i64* @PINDIR_OUTPUT, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @avifile, align 4
  %22 = call i32* @load_resource(i32 %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @GENERIC_READ, align 4
  %25 = load i32, i32* @FILE_SHARE_READ, align 4
  %26 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OPEN_EXISTING, align 4
  %29 = call i64 @CreateFileW(i32* %23, i32 %24, i32 %27, i32* null, i32 %28, i32 0, i32* null)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %0
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @wine_dbgstr_w(i32* %34)
  %36 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @DeleteFileW(i32* %37)
  br label %413

39:                                               ; preds = %0
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 13)
  store i32 12, i32* %11, align 4
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ReadFile(i64 %42, i8* %43, i32 %44, i32* %11, i32* null)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @CloseHandle(i64 %46)
  %48 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %39
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @wine_dbgstr_w(i32* %57)
  %59 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @DeleteFileW(i32* %60)
  br label %413

62:                                               ; preds = %51
  %63 = load i32, i32* @pAviSplitter, align 4
  %64 = bitcast i32** %1 to i8**
  %65 = call i64 @IUnknown_QueryInterface(i32 %63, i32* @IID_IFileSourceFilter, i8** %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @E_NOINTERFACE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IFileSourceFilter_Release(i32* %75)
  br label %77

77:                                               ; preds = %74, %62
  store i32* null, i32** %1, align 8
  %78 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %79 = bitcast i32** %2 to i32*
  %80 = call i64 @CoCreateInstance(i32* @CLSID_AsyncReader, i32* null, i32 %78, i32* @IID_IBaseFilter, i32* %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %358

91:                                               ; preds = %77
  %92 = load i32*, i32** %2, align 8
  %93 = bitcast i32** %1 to i8**
  %94 = call i64 @IBaseFilter_QueryInterface(i32* %92, i32* @IID_IFileSourceFilter, i8** %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %358

105:                                              ; preds = %91
  %106 = load i32, i32* @pAviSplitter, align 4
  %107 = bitcast i32** %3 to i8**
  %108 = call i64 @IUnknown_QueryInterface(i32 %106, i32* @IID_IBaseFilter, i8** %107)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %113)
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %358

119:                                              ; preds = %105
  %120 = load i32*, i32** %1, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i64 @IFileSourceFilter_Load(i32* %120, i32* %121, i32* null)
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %127)
  br label %358

129:                                              ; preds = %119
  %130 = load i32*, i32** %2, align 8
  %131 = call i64 @IBaseFilter_EnumPins(i32* %130, i32** %4)
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %358

142:                                              ; preds = %129
  %143 = load i32*, i32** %4, align 8
  %144 = call i64 @IEnumPins_Next(i32* %143, i32 1, i32** %5, i32* null)
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @S_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %358

155:                                              ; preds = %142
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @IEnumPins_Release(i32* %156)
  store i32* null, i32** %4, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = call i64 @IBaseFilter_EnumPins(i32* %158, i32** %4)
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* @S_OK, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %164)
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* @S_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %358

170:                                              ; preds = %155
  %171 = load i32*, i32** %4, align 8
  %172 = call i64 @IEnumPins_Next(i32* %171, i32 1, i32** %6, i32* null)
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @S_OK, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* @S_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  br label %358

183:                                              ; preds = %170
  %184 = load i32*, i32** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = call i64 @IPin_Connect(i32* %184, i32* %185, i32* null)
  store i64 %186, i64* %7, align 8
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @S_OK, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %7, align 8
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %191)
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* @S_OK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %358

197:                                              ; preds = %183
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @IPin_Release(i32* %198)
  store i32* null, i32** %6, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @IEnumPins_Reset(i32* %200)
  br label %202

202:                                              ; preds = %269, %197
  %203 = load i32*, i32** %4, align 8
  %204 = call i64 @IEnumPins_Next(i32* %203, i32 1, i32** %6, i32* null)
  %205 = load i64, i64* @S_OK, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %272

207:                                              ; preds = %202
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @IPin_QueryDirection(i32* %208, i64* %9)
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* @PINDIR_OUTPUT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %269

213:                                              ; preds = %207
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %214 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %215 = bitcast i32** %14 to i32*
  %216 = call i64 @CoCreateInstance(i32* @CLSID_NullRenderer, i32* null, i32 %214, i32* @IID_IBaseFilter, i32* %215)
  store i64 %216, i64* %7, align 8
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = call i32 @win_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %272

222:                                              ; preds = %213
  %223 = load i64, i64* %7, align 8
  %224 = load i64, i64* @S_OK, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %7, align 8
  %228 = call i32 @ok(i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i64 %227)
  %229 = load i32*, i32** %14, align 8
  %230 = call i64 @IBaseFilter_EnumPins(i32* %229, i32** %15)
  store i64 %230, i64* %7, align 8
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* @S_OK, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %7, align 8
  %236 = call i32 @ok(i32 %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i64 %235)
  %237 = load i32*, i32** %15, align 8
  %238 = call i64 @IEnumPins_Next(i32* %237, i32 1, i32** %16, i32* null)
  store i64 %238, i64* %7, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load i64, i64* @S_OK, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i64, i64* %7, align 8
  %244 = call i32 @ok(i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %243)
  %245 = load i32*, i32** %15, align 8
  %246 = call i32 @IEnumPins_Release(i32* %245)
  %247 = load i32*, i32** %16, align 8
  %248 = call i32 @IPin_QueryDirection(i32* %247, i64* %9)
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = call i64 @IPin_Connect(i32* %249, i32* %250, i32* null)
  store i64 %251, i64* %7, align 8
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* @S_OK, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = load i64, i64* %7, align 8
  %257 = call i32 @ok(i32 %255, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i64 %256)
  %258 = load i32*, i32** %16, align 8
  %259 = call i32 @IPin_Release(i32* %258)
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* @S_OK, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %222
  %264 = load i32*, i32** %14, align 8
  %265 = call i32 @IBaseFilter_Release(i32* %264)
  br label %272

266:                                              ; preds = %222
  %267 = load i32*, i32** %14, align 8
  %268 = call i32 @IBaseFilter_Run(i32* %267, i32 0)
  br label %269

269:                                              ; preds = %266, %207
  %270 = load i32*, i32** %6, align 8
  %271 = call i32 @IPin_Release(i32* %270)
  store i32* null, i32** %6, align 8
  br label %202

272:                                              ; preds = %263, %220, %202
  %273 = load i32*, i32** %6, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32*, i32** %6, align 8
  %277 = call i32 @IPin_Release(i32* %276)
  br label %278

278:                                              ; preds = %275, %272
  store i32* null, i32** %6, align 8
  %279 = load i64, i64* %7, align 8
  %280 = load i64, i64* @S_OK, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  br label %305

283:                                              ; preds = %278
  %284 = load i32*, i32** %2, align 8
  %285 = call i32 @IBaseFilter_Run(i32* %284, i32 0)
  %286 = load i32*, i32** %3, align 8
  %287 = call i32 @IBaseFilter_Run(i32* %286, i32 0)
  %288 = load i32*, i32** %3, align 8
  %289 = load i32, i32* @INFINITE, align 4
  %290 = call i32 @IBaseFilter_GetState(i32* %288, i32 %289, i32* %12)
  %291 = load i32*, i32** %3, align 8
  %292 = call i32 @IBaseFilter_Pause(i32* %291)
  %293 = load i32*, i32** %2, align 8
  %294 = call i32 @IBaseFilter_Pause(i32* %293)
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @IBaseFilter_Stop(i32* %295)
  %297 = load i32*, i32** %2, align 8
  %298 = call i32 @IBaseFilter_Stop(i32* %297)
  %299 = load i32*, i32** %3, align 8
  %300 = load i32, i32* @INFINITE, align 4
  %301 = call i32 @IBaseFilter_GetState(i32* %299, i32 %300, i32* %12)
  %302 = load i32*, i32** %2, align 8
  %303 = load i32, i32* @INFINITE, align 4
  %304 = call i32 @IBaseFilter_GetState(i32* %302, i32 %303, i32* %12)
  br label %305

305:                                              ; preds = %283, %282
  %306 = load i32*, i32** %4, align 8
  %307 = call i32 @IEnumPins_Reset(i32* %306)
  br label %308

308:                                              ; preds = %354, %305
  %309 = load i32*, i32** %4, align 8
  %310 = call i64 @IEnumPins_Next(i32* %309, i32 1, i32** %6, i32* null)
  %311 = load i64, i64* @S_OK, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %357

313:                                              ; preds = %308
  store i32* null, i32** %17, align 8
  %314 = load i32*, i32** %6, align 8
  %315 = call i32 @IPin_QueryDirection(i32* %314, i64* %9)
  %316 = load i32*, i32** %6, align 8
  %317 = call i32 @IPin_ConnectedTo(i32* %316, i32** %17)
  %318 = load i32*, i32** %17, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %354

320:                                              ; preds = %313
  %321 = load i32*, i32** %17, align 8
  %322 = call i32 @IPin_Release(i32* %321)
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* @PINDIR_OUTPUT, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %348

326:                                              ; preds = %320
  %327 = load i32*, i32** %17, align 8
  %328 = call i64 @IPin_QueryPinInfo(i32* %327, %struct.TYPE_3__* %18)
  store i64 %328, i64* %7, align 8
  %329 = load i64, i64* %7, align 8
  %330 = load i64, i64* @S_OK, align 8
  %331 = icmp eq i64 %329, %330
  %332 = zext i1 %331 to i32
  %333 = load i64, i64* %7, align 8
  %334 = call i32 @ok(i32 %332, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i64 %333)
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = call i32 @IBaseFilter_Stop(i32* %336)
  %338 = load i32*, i32** %17, align 8
  %339 = call i32 @IPin_Disconnect(i32* %338)
  %340 = load i32*, i32** %6, align 8
  %341 = call i32 @IPin_Disconnect(i32* %340)
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @IBaseFilter_Release(i32* %343)
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 @IBaseFilter_Release(i32* %346)
  br label %353

348:                                              ; preds = %320
  %349 = load i32*, i32** %17, align 8
  %350 = call i32 @IPin_Disconnect(i32* %349)
  %351 = load i32*, i32** %6, align 8
  %352 = call i32 @IPin_Disconnect(i32* %351)
  br label %353

353:                                              ; preds = %348, %326
  br label %354

354:                                              ; preds = %353, %313
  %355 = load i32*, i32** %6, align 8
  %356 = call i32 @IPin_Release(i32* %355)
  store i32* null, i32** %6, align 8
  br label %308

357:                                              ; preds = %308
  br label %358

358:                                              ; preds = %357, %196, %182, %169, %154, %141, %126, %118, %104, %90
  %359 = load i64, i64* %7, align 8
  %360 = load i64, i64* @S_OK, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0))
  br label %364

364:                                              ; preds = %362, %358
  %365 = load i32*, i32** %4, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32*, i32** %4, align 8
  %369 = call i32 @IEnumPins_Release(i32* %368)
  br label %370

370:                                              ; preds = %367, %364
  %371 = load i32*, i32** %6, align 8
  %372 = icmp ne i32* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i32*, i32** %6, align 8
  %375 = call i32 @IPin_Release(i32* %374)
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32*, i32** %5, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %392

379:                                              ; preds = %376
  store i32* null, i32** %19, align 8
  %380 = load i32*, i32** %5, align 8
  %381 = call i32 @IPin_ConnectedTo(i32* %380, i32** %19)
  %382 = load i32*, i32** %19, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @IPin_Disconnect(i32* %385)
  %387 = load i32*, i32** %19, align 8
  %388 = call i32 @IPin_Disconnect(i32* %387)
  br label %389

389:                                              ; preds = %384, %379
  %390 = load i32*, i32** %5, align 8
  %391 = call i32 @IPin_Release(i32* %390)
  br label %392

392:                                              ; preds = %389, %376
  %393 = load i32*, i32** %2, align 8
  %394 = icmp ne i32* %393, null
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load i32*, i32** %2, align 8
  %397 = call i32 @IBaseFilter_Release(i32* %396)
  br label %398

398:                                              ; preds = %395, %392
  %399 = load i32*, i32** %3, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i32*, i32** %3, align 8
  %403 = call i32 @IBaseFilter_Release(i32* %402)
  br label %404

404:                                              ; preds = %401, %398
  %405 = load i32*, i32** %1, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load i32*, i32** %1, align 8
  %409 = call i32 @IFileSourceFilter_Release(i32* %408)
  br label %410

410:                                              ; preds = %407, %404
  %411 = load i32*, i32** %13, align 8
  %412 = call i32 @DeleteFileW(i32* %411)
  br label %413

413:                                              ; preds = %410, %56, %33
  ret void
}

declare dso_local i32* @load_resource(i32) #1

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @DeleteFileW(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IFileSourceFilter_Release(i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @IBaseFilter_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IFileSourceFilter_Load(i32*, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i64 @IBaseFilter_EnumPins(i32*, i32**) #1

declare dso_local i64 @IEnumPins_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @IEnumPins_Release(i32*) #1

declare dso_local i64 @IPin_Connect(i32*, i32*, i32*) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i32 @IEnumPins_Reset(i32*) #1

declare dso_local i32 @IPin_QueryDirection(i32*, i64*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Run(i32*, i32) #1

declare dso_local i32 @IBaseFilter_GetState(i32*, i32, i32*) #1

declare dso_local i32 @IBaseFilter_Pause(i32*) #1

declare dso_local i32 @IBaseFilter_Stop(i32*) #1

declare dso_local i32 @IPin_ConnectedTo(i32*, i32**) #1

declare dso_local i64 @IPin_QueryPinInfo(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IPin_Disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
