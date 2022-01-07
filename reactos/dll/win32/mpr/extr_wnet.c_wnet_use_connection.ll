; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnet_use_connection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnet_use_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.use_connection_context = type { i32, i64 (%struct.use_connection_context*, i8*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i64, i64, i64 }

@WN_NO_NETWORK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@__const.wnet_use_connection.letter = private unnamed_addr constant [3 x i8] c"Z:\00", align 1
@providerTable = common dso_local global %struct.TYPE_8__* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@CONNECT_REDIRECT = common dso_local global i32 0, align 4
@RESOURCETYPE_DISK = common dso_local global i64 0, align 8
@RESOURCETYPE_PRINT = common dso_local global i64 0, align 8
@ERROR_BAD_DEV_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Local device selection is not implemented for printers.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CONNECT_INTERACTIVE = common dso_local global i32 0, align 4
@ERROR_BAD_NET_NAME = common dso_local global i64 0, align 8
@BAD_PROVIDER_INDEX = common dso_local global i64 0, align 8
@ERROR_BAD_PROVIDER = common dso_local global i64 0, align 8
@WN_SUCCESS = common dso_local global i64 0, align 8
@WN_ALREADY_CONNECTED = common dso_local global i64 0, align 8
@CONNECT_UPDATE_PROFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Persistent connection are not supported for printers\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@wnet_use_connection.empty = internal constant [1 x i8] zeroinitializer, align 1
@connectionType = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@providerName = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@providerType = common dso_local global i32 0, align 4
@remotePath = common dso_local global i32 0, align 4
@userName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.use_connection_context*)* @wnet_use_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wnet_use_connection(%struct.use_connection_context* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.use_connection_context*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.use_connection_context* %0, %struct.use_connection_context** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  %15 = load i64, i64* @WN_NO_NETWORK, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %7, align 4
  %17 = bitcast [3 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.wnet_use_connection.letter, i32 0, i32 0), i64 3, i1 false)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @providerTable, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @providerTable, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %1
  %26 = load i64, i64* @WN_NO_NETWORK, align 8
  store i64 %26, i64* %2, align 8
  br label %249

27:                                               ; preds = %20
  %28 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %29 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %2, align 8
  br label %249

34:                                               ; preds = %27
  %35 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %36 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = bitcast %struct.TYPE_7__* %9 to i8*
  %39 = bitcast %struct.TYPE_7__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 32, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %74, label %43

43:                                               ; preds = %34
  %44 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %45 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CONNECT_REDIRECT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RESOURCETYPE_DISK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RESOURCETYPE_PRINT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @ERROR_BAD_DEV_TYPE, align 8
  store i64 %61, i64* %2, align 8
  br label %249

62:                                               ; preds = %55, %50
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RESOURCETYPE_PRINT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = call i32 @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @WN_NO_NETWORK, align 8
  store i64 %69, i64* %2, align 8
  br label %249

70:                                               ; preds = %62
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %7, align 4
  %72 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %43, %34
  %75 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %76 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CONNECT_INTERACTIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i64, i64* @ERROR_BAD_NET_NAME, align 8
  store i64 %82, i64* %2, align 8
  br label %249

83:                                               ; preds = %74
  %84 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %85 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %84, i32 0, i32 1
  %86 = load i64 (%struct.use_connection_context*, i8*)*, i64 (%struct.use_connection_context*, i8*)** %85, align 8
  %87 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 %86(%struct.use_connection_context* %87, i8* %89)
  store i64 %90, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %2, align 8
  br label %249

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @_findProviderIndexW(i64 %100)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @BAD_PROVIDER_INDEX, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* @ERROR_BAD_PROVIDER, align 8
  store i64 %106, i64* %2, align 8
  br label %249

107:                                              ; preds = %98
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @providerTable, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %4, align 8
  %113 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @wnet_use_provider(%struct.use_connection_context* %113, %struct.TYPE_7__* %9, %struct.TYPE_6__* %114, i32 %115)
  store i64 %116, i64* %6, align 8
  br label %147

117:                                              ; preds = %94
  store i64 0, i64* %5, align 8
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @providerTable, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @providerTable, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %4, align 8
  %130 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @wnet_use_provider(%struct.use_connection_context* %130, %struct.TYPE_7__* %9, %struct.TYPE_6__* %131, i32 %132)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @WN_SUCCESS, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %124
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @WN_ALREADY_CONNECTED, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %124
  br label %146

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %5, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %5, align 8
  br label %118

146:                                              ; preds = %141, %118
  br label %147

147:                                              ; preds = %146, %107
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @WN_SUCCESS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %247

151:                                              ; preds = %147
  %152 = load %struct.use_connection_context*, %struct.use_connection_context** %3, align 8
  %153 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CONNECT_UPDATE_PROFILE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %247

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RESOURCETYPE_PRINT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = call i32 @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %2, align 8
  br label %249

166:                                              ; preds = %158
  %167 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %168 = call i64 @RegOpenCurrentUser(i32 %167, i32* %10)
  %169 = load i64, i64* @ERROR_SUCCESS, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %246

171:                                              ; preds = %166
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  store i8 78, i8* %172, align 1
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8 101, i8* %173, align 1
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  store i8 116, i8* %174, align 1
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 119, i8* %175, align 1
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8 111, i8* %176, align 1
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8 114, i8* %177, align 1
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 107, i8* %178, align 1
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 92, i8* %179, align 1
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  store i8 %184, i8* %180, align 1
  %185 = getelementptr inbounds i8, i8* %180, i64 1
  store i8 0, i8* %185, align 1
  %186 = load i32, i32* %10, align 4
  %187 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %188 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %189 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %190 = call i64 @RegCreateKeyExW(i32 %186, i8* %187, i32 0, i32* null, i32 %188, i32 %189, i32* null, i32* %11, i32* null)
  %191 = load i64, i64* @ERROR_SUCCESS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %243

193:                                              ; preds = %171
  %194 = load i64, i64* @RESOURCETYPE_DISK, align 8
  store i64 %194, i64* %13, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @lstrlenW(i64 %197)
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 1
  store i64 %201, i64* %14, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @connectionType, align 4
  %204 = load i32, i32* @REG_DWORD, align 4
  %205 = bitcast i64* %13 to i32*
  %206 = call i32 @RegSetValueExW(i32 %202, i32 %203, i32 0, i32 %204, i32* %205, i64 8)
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @providerName, align 4
  %209 = load i32, i32* @REG_SZ, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i32*
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @RegSetValueExW(i32 %207, i32 %208, i32 0, i32 %209, i32* %213, i64 %214)
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @providerType, align 4
  %218 = load i32, i32* @REG_DWORD, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = call i32 @RegSetValueExW(i32 %216, i32 %217, i32 0, i32 %218, i32* %220, i64 8)
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @lstrlenW(i64 %223)
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 1
  store i64 %227, i64* %14, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @remotePath, align 4
  %230 = load i32, i32* @REG_SZ, align 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i32*
  %234 = load i64, i64* %14, align 8
  %235 = call i32 @RegSetValueExW(i32 %228, i32 %229, i32 0, i32 %230, i32* %233, i64 %234)
  store i64 1, i64* %14, align 8
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @userName, align 4
  %238 = load i32, i32* @REG_SZ, align 4
  %239 = load i64, i64* %14, align 8
  %240 = call i32 @RegSetValueExW(i32 %236, i32 %237, i32 0, i32 %238, i32* bitcast ([1 x i8]* @wnet_use_connection.empty to i32*), i64 %239)
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @RegCloseKey(i32 %241)
  br label %243

243:                                              ; preds = %193, %171
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @RegCloseKey(i32 %244)
  br label %246

246:                                              ; preds = %243, %166
  br label %247

247:                                              ; preds = %246, %151, %147
  %248 = load i64, i64* %6, align 8
  store i64 %248, i64* %2, align 8
  br label %249

249:                                              ; preds = %247, %163, %105, %92, %81, %67, %60, %32, %25
  %250 = load i64, i64* %2, align 8
  ret i64 %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i64 @_findProviderIndexW(i64) #2

declare dso_local i64 @wnet_use_provider(%struct.use_connection_context*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32) #2

declare dso_local i64 @RegOpenCurrentUser(i32, i32*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @lstrlenW(i64) #2

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32*, i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
