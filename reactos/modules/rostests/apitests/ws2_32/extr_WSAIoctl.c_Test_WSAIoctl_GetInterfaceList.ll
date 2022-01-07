; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_WSAIoctl.c_Test_WSAIoctl_GetInterfaceList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_WSAIoctl.c_Test_WSAIoctl_GetInterfaceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"WSAStartup failed. iResult = %d\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"WSASocket failed. sck = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to create socket!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to allocate memory!\0A\00", align 1
@SIO_GET_INTERFACE_LIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"WSAIoctl/SIO_GET_INTERFACE_LIST did not fail! iResult = %d.\0A\00", align 1
@WSAEFAULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"WSAIoctl/SIO_GET_INTERFACE_LIST: BytesReturned should be 0, not %ld.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"WSAIoctl / SIO_GET_INTERFACE_LIST\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Wrong count of entries! Got %ld, expected %ld.\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"WSAIoctl\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"  BytesReturned %ld - InfoCount %ld\0A \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"entry-index %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"  iiFlags %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"ifInfo^.iiAddress\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ifInfo^.iiBroadcastAddress\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ifInfo^.iiNetmask\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Entry %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Skipping interface\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@MIB_IPADDR_DISCONNECTED = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_WSAIoctl_GetInterfaceList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @Test_WSAIoctl_InitTest(%struct.TYPE_11__** %13)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %339

18:                                               ; preds = %0
  %19 = call i32 @MAKEWORD(i32 2, i32 2)
  %20 = call i32 @WSAStartup(i32 %19, i32* %1)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = load i32, i32* @IPPROTO_IP, align 4
  %29 = call i64 @WSASocket(i32 %26, i32 %27, i32 %28, i32 0, i32 0, i32 0)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @INVALID_SOCKET, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @INVALID_SOCKET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = call i32 @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %339

42:                                               ; preds = %18
  store i32 3, i32* %4, align 4
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @HeapAlloc(i32 %43, i32 0, i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %339

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* @SIO_GET_INTERFACE_LIST, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @WSAIoctl(i64 %52, i32 %53, i32 0, i32 0, i32* %54, i32 %55, i32* %5, i32 0, i32 0)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, -1
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = call i64 (...) @WSAGetLastError()
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @WSAEFAULT, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ok_hex(i32 %63, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @HeapFree(i32 %72, i32 0, i32* %73)
  store i32* null, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %122, %51
  %76 = load i64, i64* @TRUE, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %75
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @HeapFree(i32 %82, i32 0, i32* %83)
  store i32* null, i32** %11, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = mul i64 %89, 32
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @HeapAlloc(i32 %92, i32 0, i32 %93)
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = call i32 @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %339

100:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  %101 = load i64, i64* %3, align 8
  %102 = load i32, i32* @SIO_GET_INTERFACE_LIST, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @WSAIoctl(i64 %101, i32 %102, i32 0, i32 0, i32* %103, i32 %104, i32* %5, i32 0, i32 0)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @NO_ERROR, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %125

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 4
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = call i64 (...) @WSAGetLastError()
  %115 = load i64, i64* @WSAEFAULT, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @NO_ERROR, align 4
  %120 = call i32 @ok_hex(i32 %118, i32 %119)
  %121 = call i32 @skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %339

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %75

125:                                              ; preds = %109, %75
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = urem i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @ok_dec(i32 %129, i32 0)
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = udiv i64 %132, 4
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32, i32* @winetest_debug, align 4
  %147 = icmp sge i32 %146, 2
  br i1 %147, label %148, label %193

148:                                              ; preds = %125
  %149 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32*, i32** %11, align 8
  %154 = bitcast i32* %153 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %189, %148
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %155
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @traceaddr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @traceaddr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @traceaddr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 1
  store %struct.TYPE_13__* %188, %struct.TYPE_13__** %12, align 8
  br label %189

189:                                              ; preds = %159
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %155

192:                                              ; preds = %155
  br label %193

193:                                              ; preds = %192, %125
  %194 = load i32*, i32** %11, align 8
  %195 = bitcast i32* %194 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %195, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %335, %193
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %338

200:                                              ; preds = %196
  %201 = load i32, i32* @winetest_debug, align 4
  %202 = icmp sge i32 %201, 2
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %200
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %240, %206
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %207
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %222, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %213
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %14, align 8
  br label %243

239:                                              ; preds = %213
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %207

243:                                              ; preds = %232, %207
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = call i32 @skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %335

251:                                              ; preds = %243
  %252 = load i32, i32* @IFF_BROADCAST, align 4
  %253 = load i32, i32* @IFF_MULTICAST, align 4
  %254 = or i32 %252, %253
  store i32 %254, i32* %10, align 4
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @MIB_IPADDR_DISCONNECTED, align 4
  %259 = and i32 %257, %258
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %251
  %262 = load i32, i32* @IFF_UP, align 4
  %263 = load i32, i32* %10, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %10, align 4
  br label %265

265:                                              ; preds = %261, %251
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @INADDR_LOOPBACK, align 4
  %270 = call i32 @ntohl(i32 %269)
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load i32, i32* @IFF_LOOPBACK, align 4
  %274 = load i32, i32* %10, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %272, %265
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @ok_hex(i32 %282, i32 %283)
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ok_hex(i32 %293, i32 %296)
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %307

302:                                              ; preds = %276
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* @IFF_BROADCAST, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br label %307

307:                                              ; preds = %302, %276
  %308 = phi i1 [ false, %276 ], [ %306, %302 ]
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 -1, i32 0
  store i32 %310, i32* %6, align 4
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @ok_hex(i32 %319, i32 %320)
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @ok_hex(i32 %330, i32 %333)
  br label %335

335:                                              ; preds = %307, %249
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %8, align 4
  br label %196

338:                                              ; preds = %196
  br label %339

339:                                              ; preds = %338, %117, %98, %49, %40, %17
  %340 = load i64, i64* %3, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i64, i64* %3, align 8
  %344 = call i32 @closesocket(i64 %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %347 = icmp ne %struct.TYPE_11__* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %350 = call i32 @free(%struct.TYPE_11__* %349)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load i32*, i32** %11, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = call i32 (...) @GetProcessHeap()
  %356 = load i32*, i32** %11, align 8
  %357 = call i32 @HeapFree(i32 %355, i32 0, i32* %356)
  br label %358

358:                                              ; preds = %354, %351
  %359 = call i32 (...) @WSACleanup()
  ret void
}

declare dso_local i32 @Test_WSAIoctl_InitTest(%struct.TYPE_11__**) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @WSASocket(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WSAIoctl(i64, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ok_hex(i32, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ok_dec(i32, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @traceaddr(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @WSACleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
