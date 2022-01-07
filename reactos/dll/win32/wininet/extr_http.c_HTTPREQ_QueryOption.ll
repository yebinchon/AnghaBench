; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_QueryOption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_QueryOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, %struct.TYPE_34__*, %struct.TYPE_34__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"INTERNET_DIAGNOSTIC_SOCKET_INFO stub\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@IDSI_FLAG_KEEP_ALIVE = common dso_local global i32 0, align 4
@IDSI_FLAG_PROXY = common dso_local global i32 0, align 4
@IDSI_FLAG_SECURE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Queried undocumented option 98, forwarding to INTERNET_OPTION_SECURITY_FLAGS\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"INTERNET_OPTION_SECURITY_FLAGS %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"INTERNET_OPTION_HANDLE_TYPE\0A\00", align 1
@INTERNET_HANDLE_TYPE_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"INTERNET_OPTION_URL\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"INTERNET_OPTION_CACHE_TIMESTAMPS\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"INTERNET_OPTION_DATAFILE_NAME\0A\00", align 1
@ERROR_INTERNET_ITEM_NOT_FOUND = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_INTERNET_INVALID_OPERATION = common dso_local global i32 0, align 4
@CERT_SIMPLE_NAME_STR = common dso_local global i32 0, align 4
@CERT_NAME_STR_CRLF_FLAG = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@INTERNET_REQFLAG_VIA_PROXY = common dso_local global i32 0, align 4
@INTERNET_REQFLAG_NO_HEADERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"INTERNET_OPTION_REQUEST_FLAGS returning %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, i32)* @HTTPREQ_QueryOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTPREQ_QueryOption(i32* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_34__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_35__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %28, %struct.TYPE_33__** %12, align 8
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %530 [
    i32 138, label %30
    i32 98, label %96
    i32 131, label %98
    i32 137, label %136
    i32 130, label %150
    i32 128, label %167
    i32 129, label %179
    i32 136, label %189
    i32 134, label %199
    i32 135, label %211
    i32 141, label %223
    i32 139, label %285
    i32 132, label %354
    i32 140, label %482
    i32 133, label %497
  ]

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %32, %struct.TYPE_36__** %13, align 8
  %33 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %39, i32* %6, align 4
  br label %537

40:                                               ; preds = %30
  %41 = load i32*, i32** %10, align 8
  store i32 16, i32* %41, align 4
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 7
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %56 = call i32 @HTTP_KeepAlive(%struct.TYPE_33__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load i32, i32* @IDSI_FLAG_KEEP_ALIVE, align 4
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %40
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @IDSI_FLAG_PROXY, align 4
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %77, align 8
  %79 = call i32 @is_valid_netconn(%struct.TYPE_27__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @IDSI_FLAG_SECURE, align 4
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %81, %75
  %95 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %95, i32* %6, align 4
  br label %537

96:                                               ; preds = %5
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %5, %96
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 4
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %104, i32* %6, align 4
  br label %537

105:                                              ; preds = %98
  %106 = load i32*, i32** %10, align 8
  store i32 4, i32* %106, align 4
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %108, align 8
  %110 = call i32 @is_valid_netconn(%struct.TYPE_27__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  br label %128

118:                                              ; preds = %105
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %121, %126
  br label %128

128:                                              ; preds = %118, %112
  %129 = phi i32 [ %117, %112 ], [ %127, %118 ]
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = bitcast i8* %131 to i32*
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %135, i32* %6, align 4
  br label %537

136:                                              ; preds = %5
  %137 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %143, i32* %6, align 4
  br label %537

144:                                              ; preds = %136
  %145 = load i32*, i32** %10, align 8
  store i32 4, i32* %145, align 4
  %146 = load i32, i32* @INTERNET_HANDLE_TYPE_HTTP_REQUEST, align 4
  %147 = load i8*, i8** %9, align 8
  %148 = bitcast i8* %147 to i32*
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %149, i32* %6, align 4
  br label %537

150:                                              ; preds = %5
  %151 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %153 = call %struct.TYPE_34__* @compose_request_url(%struct.TYPE_33__* %152)
  store %struct.TYPE_34__* %153, %struct.TYPE_34__** %15, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %155 = icmp ne %struct.TYPE_34__* %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %157, i32* %6, align 4
  br label %537

158:                                              ; preds = %150
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @str_to_buffer(%struct.TYPE_34__* %159, i8* %160, i32* %161, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %165 = call i32 @heap_free(%struct.TYPE_34__* %164)
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %6, align 4
  br label %537

167:                                              ; preds = %5
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %173, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @str_to_buffer(%struct.TYPE_34__* %174, i8* %175, i32* %176, i32 %177)
  store i32 %178, i32* %6, align 4
  br label %537

179:                                              ; preds = %5
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 6
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %183, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @str_to_buffer(%struct.TYPE_34__* %184, i8* %185, i32* %186, i32 %187)
  store i32 %188, i32* %6, align 4
  br label %537

189:                                              ; preds = %5
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %193, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @str_to_buffer(%struct.TYPE_34__* %194, i8* %195, i32* %196, i32 %197)
  store i32 %198, i32* %6, align 4
  br label %537

199:                                              ; preds = %5
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %205, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @str_to_buffer(%struct.TYPE_34__* %206, i8* %207, i32* %208, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %537

211:                                              ; preds = %5
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %217, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @str_to_buffer(%struct.TYPE_34__* %218, i8* %219, i32* %220, i32 %221)
  store i32 %222, i32* %6, align 4
  br label %537

223:                                              ; preds = %5
  %224 = load i8*, i8** %9, align 8
  %225 = bitcast i8* %224 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %225, %struct.TYPE_26__** %18, align 8
  %226 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %228, align 8
  %230 = icmp ne %struct.TYPE_32__* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %223
  %232 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  store i32 %232, i32* %6, align 4
  br label %537

233:                                              ; preds = %223
  %234 = load i32*, i32** %10, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = icmp ult i64 %236, 8
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i32*, i32** %10, align 8
  store i32 8, i32* %239, align 4
  %240 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %240, i32* %6, align 4
  br label %537

241:                                              ; preds = %233
  store i32 0, i32* %19, align 4
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @GetUrlCacheEntryInfoW(i32 %246, %struct.TYPE_34__* null, i32* %19)
  store i32 %247, i32* %21, align 4
  %248 = call i32 (...) @GetLastError()
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %21, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %283, label %251

251:                                              ; preds = %241
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %251
  %256 = load i32, i32* %19, align 4
  %257 = call %struct.TYPE_34__* @heap_alloc(i32 %256)
  store %struct.TYPE_34__* %257, %struct.TYPE_34__** %17, align 8
  %258 = icmp ne %struct.TYPE_34__* %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %260, i32* %6, align 4
  br label %537

261:                                              ; preds = %255
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %268 = call i32 @GetUrlCacheEntryInfoW(i32 %266, %struct.TYPE_34__* %267, i32* %19)
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %280 = call i32 @heap_free(%struct.TYPE_34__* %279)
  %281 = load i32*, i32** %10, align 8
  store i32 8, i32* %281, align 4
  %282 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %282, i32* %6, align 4
  br label %537

283:                                              ; preds = %251, %241
  %284 = load i32, i32* %20, align 4
  store i32 %284, i32* %6, align 4
  br label %537

285:                                              ; preds = %5
  %286 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %288, align 8
  %290 = icmp ne %struct.TYPE_32__* %289, null
  br i1 %290, label %294, label %291

291:                                              ; preds = %285
  %292 = load i32*, i32** %10, align 8
  store i32 0, i32* %292, align 4
  %293 = load i32, i32* @ERROR_INTERNET_ITEM_NOT_FOUND, align 4
  store i32 %293, i32* %6, align 4
  br label %537

294:                                              ; preds = %285
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %327

297:                                              ; preds = %294
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @lstrlenW(i32 %302)
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = mul i64 %305, 8
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %22, align 4
  %308 = load i32*, i32** %10, align 8
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %22, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %297
  %313 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %313, i32* %6, align 4
  br label %537

314:                                              ; preds = %297
  %315 = load i32, i32* %22, align 4
  %316 = load i32*, i32** %10, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i8*, i8** %9, align 8
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_32__*, %struct.TYPE_32__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @memcpy(i8* %317, i32 %322, i32 %324)
  %326 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %326, i32* %6, align 4
  br label %537

327:                                              ; preds = %294
  %328 = load i32, i32* @CP_ACP, align 4
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 5
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @WideCharToMultiByte(i32 %328, i32 0, i32 %333, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %334, i32* %22, align 4
  %335 = load i32, i32* %22, align 4
  %336 = load i32*, i32** %10, align 8
  %337 = load i32, i32* %336, align 4
  %338 = icmp sgt i32 %335, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %327
  %340 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %340, i32* %6, align 4
  br label %537

341:                                              ; preds = %327
  %342 = load i32, i32* @CP_ACP, align 4
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 5
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i8*, i8** %9, align 8
  %349 = load i32*, i32** %10, align 8
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @WideCharToMultiByte(i32 %342, i32 0, i32 %347, i32 -1, i8* %348, i32 %350, i32* null, i32* null)
  %352 = load i32*, i32** %10, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %353, i32* %6, align 4
  br label %537

354:                                              ; preds = %5
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %355, i32 0, i32 4
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %356, align 8
  %358 = icmp ne %struct.TYPE_27__* %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %354
  %360 = load i32, i32* @ERROR_INTERNET_INVALID_OPERATION, align 4
  store i32 %360, i32* %6, align 4
  br label %537

361:                                              ; preds = %354
  %362 = load i32*, i32** %10, align 8
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = icmp ult i64 %364, 32
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load i32*, i32** %10, align 8
  store i32 32, i32* %367, align 4
  %368 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %368, i32* %6, align 4
  br label %537

369:                                              ; preds = %361
  %370 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %370, i32 0, i32 4
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %371, align 8
  %373 = call i32 @NETCON_GetCert(%struct.TYPE_27__* %372)
  %374 = sext i32 %373 to i64
  %375 = inttoptr i64 %374 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %375, %struct.TYPE_35__** %23, align 8
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %377 = icmp ne %struct.TYPE_35__* %376, null
  br i1 %377, label %378, label %480

378:                                              ; preds = %369
  %379 = load i8*, i8** %9, align 8
  %380 = bitcast i8* %379 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %380, %struct.TYPE_25__** %24, align 8
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %382 = call i32 @memset(%struct.TYPE_25__* %381, i32 0, i32 32)
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 4
  store i32 %387, i32* %389, align 4
  %390 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %391 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 3
  store i32 %394, i32* %396, align 8
  %397 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %398 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %401 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 1
  %404 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %405 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %406 = or i32 %404, %405
  %407 = call i32 @CertNameToStrA(i32 %399, i32* %403, i32 %406, i32* null, i32 0)
  store i32 %407, i32* %25, align 4
  %408 = load i32, i32* %25, align 4
  %409 = call i8* @LocalAlloc(i32 0, i32 %408)
  %410 = bitcast i8* %409 to i32*
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %412 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %411, i32 0, i32 2
  store i32* %410, i32** %412, align 8
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %414 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %413, i32 0, i32 2
  %415 = load i32*, i32** %414, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %433

417:                                              ; preds = %378
  %418 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %419 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %422 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_28__*, %struct.TYPE_28__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %423, i32 0, i32 1
  %425 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %426 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %427 = or i32 %425, %426
  %428 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %429 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %428, i32 0, i32 2
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %25, align 4
  %432 = call i32 @CertNameToStrA(i32 %420, i32* %424, i32 %427, i32* %430, i32 %431)
  br label %433

433:                                              ; preds = %417, %378
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_28__*, %struct.TYPE_28__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %439, i32 0, i32 0
  %441 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %442 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %443 = or i32 %441, %442
  %444 = call i32 @CertNameToStrA(i32 %436, i32* %440, i32 %443, i32* null, i32 0)
  store i32 %444, i32* %25, align 4
  %445 = load i32, i32* %25, align 4
  %446 = call i8* @LocalAlloc(i32 0, i32 %445)
  %447 = bitcast i8* %446 to i32*
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 1
  store i32* %447, i32** %449, align 8
  %450 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %451 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %450, i32 0, i32 1
  %452 = load i32*, i32** %451, align 8
  %453 = icmp ne i32* %452, null
  br i1 %453, label %454, label %470

454:                                              ; preds = %433
  %455 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %456 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %459 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 0
  %462 = load i32, i32* @CERT_SIMPLE_NAME_STR, align 4
  %463 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %464 = or i32 %462, %463
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %25, align 4
  %469 = call i32 @CertNameToStrA(i32 %457, i32* %461, i32 %464, i32* %467, i32 %468)
  br label %470

470:                                              ; preds = %454, %433
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %472 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %471, i32 0, i32 4
  %473 = load %struct.TYPE_27__*, %struct.TYPE_27__** %472, align 8
  %474 = call i32 @NETCON_GetCipherStrength(%struct.TYPE_27__* %473)
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 0
  store i32 %474, i32* %476, align 8
  %477 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %478 = call i32 @CertFreeCertificateContext(%struct.TYPE_35__* %477)
  %479 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %479, i32* %6, align 4
  br label %537

480:                                              ; preds = %369
  %481 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %481, i32* %6, align 4
  br label %537

482:                                              ; preds = %5
  %483 = load i32*, i32** %10, align 8
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  %486 = icmp ult i64 %485, 4
  br i1 %486, label %487, label %489

487:                                              ; preds = %482
  %488 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %488, i32* %6, align 4
  br label %537

489:                                              ; preds = %482
  %490 = load i32*, i32** %10, align 8
  store i32 4, i32* %490, align 4
  %491 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load i8*, i8** %9, align 8
  %495 = bitcast i8* %494 to i32*
  store i32 %493, i32* %495, align 4
  %496 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %496, i32* %6, align 4
  br label %537

497:                                              ; preds = %5
  store i32 0, i32* %26, align 4
  %498 = load i32*, i32** %10, align 8
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = icmp ult i64 %500, 4
  br i1 %501, label %502, label %504

502:                                              ; preds = %497
  %503 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %503, i32* %6, align 4
  br label %537

504:                                              ; preds = %497
  %505 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %506 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %513

509:                                              ; preds = %504
  %510 = load i32, i32* @INTERNET_REQFLAG_VIA_PROXY, align 4
  %511 = load i32, i32* %26, align 4
  %512 = or i32 %511, %510
  store i32 %512, i32* %26, align 4
  br label %513

513:                                              ; preds = %509, %504
  %514 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %515 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %522, label %518

518:                                              ; preds = %513
  %519 = load i32, i32* @INTERNET_REQFLAG_NO_HEADERS, align 4
  %520 = load i32, i32* %26, align 4
  %521 = or i32 %520, %519
  store i32 %521, i32* %26, align 4
  br label %522

522:                                              ; preds = %518, %513
  %523 = load i32, i32* %26, align 4
  %524 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %523)
  %525 = load i32*, i32** %10, align 8
  store i32 4, i32* %525, align 4
  %526 = load i32, i32* %26, align 4
  %527 = load i8*, i8** %9, align 8
  %528 = bitcast i8* %527 to i32*
  store i32 %526, i32* %528, align 4
  %529 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %529, i32* %6, align 4
  br label %537

530:                                              ; preds = %5
  %531 = load i32*, i32** %7, align 8
  %532 = load i32, i32* %8, align 4
  %533 = load i8*, i8** %9, align 8
  %534 = load i32*, i32** %10, align 8
  %535 = load i32, i32* %11, align 4
  %536 = call i32 @INET_QueryOption(i32* %531, i32 %532, i8* %533, i32* %534, i32 %535)
  store i32 %536, i32* %6, align 4
  br label %537

537:                                              ; preds = %530, %522, %502, %489, %487, %480, %470, %366, %359, %341, %339, %314, %312, %291, %283, %261, %259, %238, %231, %211, %199, %189, %179, %167, %158, %156, %144, %142, %128, %103, %94, %38
  %538 = load i32, i32* %6, align 4
  ret i32 %538
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @HTTP_KeepAlive(%struct.TYPE_33__*) #1

declare dso_local i32 @is_valid_netconn(%struct.TYPE_27__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_34__* @compose_request_url(%struct.TYPE_33__*) #1

declare dso_local i32 @str_to_buffer(%struct.TYPE_34__*, i8*, i32*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_34__*) #1

declare dso_local i32 @GetUrlCacheEntryInfoW(i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_34__* @heap_alloc(i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @NETCON_GetCert(%struct.TYPE_27__*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @CertNameToStrA(i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @LocalAlloc(i32, i32) #1

declare dso_local i32 @NETCON_GetCipherStrength(%struct.TYPE_27__*) #1

declare dso_local i32 @CertFreeCertificateContext(%struct.TYPE_35__*) #1

declare dso_local i32 @INET_QueryOption(i32*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
