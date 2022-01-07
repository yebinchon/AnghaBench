; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTRecv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i8* }

@NBSS_HDRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"adapt %p, session %p, NCB %p\0A\00", align 1
@NRC_ENVNOTDEF = common dso_local global i32 0, align 4
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_SNUMOUT = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Receive error, WSAGetLastError() returns %d\0A\00", align 1
@NRC_SABORT = common dso_local global i32 0, align 4
@NRC_CMDCAN = common dso_local global i32 0, align 4
@NBSS_KEEPALIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Oops, received a session keepalive and lost my place\0A\00", align 1
@NBSS_MSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Received unexpected session msg type %d\0A\00", align 1
@NBSS_EXTENSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Received a message that's too long for my taste\0A\00", align 1
@NRC_INCOMP = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_10__*)* @NetBTRecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTRecv(i8* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.TYPE_9__], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  %23 = load i32, i32* @NBSS_HDRSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.TYPE_11__* %29, %struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @NRC_ENVNOTDEF, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

36:                                               ; preds = %3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @NRC_BADDR, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @NRC_BADDR, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @NRC_SNUMOUT, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INVALID_SOCKET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @NRC_SNUMOUT, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = call i32 @EnterCriticalSection(i32* %63)
  store i64 0, i64* %15, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %15, align 8
  %72 = load i32, i32* @NBSS_HDRSIZE, align 4
  %73 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 16
  %75 = bitcast i32* %26 to i8*
  %76 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %61
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 16
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @WSARecv(i64 %96, %struct.TYPE_9__* %97, i64 %98, i64* %16, i64* %17, i32* null, i32* null)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @SOCKET_ERROR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %78
  %104 = call i64 (...) @WSAGetLastError()
  %105 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = call i32 @LeaveCriticalSection(i32* %109)
  %111 = call i64 (...) @WSAGetLastError()
  %112 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = call i32 @NetBIOSHangupSession(%struct.TYPE_10__* %113)
  %115 = load i32, i32* @NRC_SABORT, align 4
  store i32 %115, i32* %12, align 4
  br label %231

116:                                              ; preds = %103, %78
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = call i64 @NCB_CANCELLED(%struct.TYPE_10__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = call i32 @LeaveCriticalSection(i32* %122)
  %124 = load i32, i32* @NRC_CMDCAN, align 4
  store i32 %124, i32* %12, align 4
  br label %230

125:                                              ; preds = %116
  %126 = load i64, i64* %15, align 8
  %127 = icmp eq i64 %126, 2
  br i1 %127, label %128, label %193

128:                                              ; preds = %125
  %129 = getelementptr inbounds i32, i32* %26, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = load i32, i32* @NBSS_KEEPALIVE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = call i32 @LeaveCriticalSection(i32* %135)
  %137 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = call i32 @NetBIOSHangupSession(%struct.TYPE_10__* %138)
  %140 = load i32, i32* @NRC_SABORT, align 4
  store i32 %140, i32* %12, align 4
  br label %232

141:                                              ; preds = %128
  %142 = getelementptr inbounds i32, i32* %26, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = load i32, i32* @NBSS_MSG, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = call i32 @LeaveCriticalSection(i32* %148)
  %150 = getelementptr inbounds i32, i32* %26, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = call i32 @NetBIOSHangupSession(%struct.TYPE_10__* %153)
  %155 = load i32, i32* @NRC_SABORT, align 4
  store i32 %155, i32* %12, align 4
  br label %232

156:                                              ; preds = %141
  %157 = getelementptr inbounds i32, i32* %26, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @NBSS_EXTENSION, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = call i32 @LeaveCriticalSection(i32* %164)
  %166 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = call i32 @NetBIOSHangupSession(%struct.TYPE_10__* %167)
  %169 = load i32, i32* @NRC_SABORT, align 4
  store i32 %169, i32* %12, align 4
  br label %232

170:                                              ; preds = %156
  %171 = load i32, i32* @NBSS_HDRSIZE, align 4
  %172 = getelementptr inbounds i32, i32* %26, i64 2
  %173 = call i32 @NBR_GETWORD(i32* %172)
  %174 = add nsw i32 %171, %173
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %16, align 8
  %177 = sub i64 %175, %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i32, i32* @NBSS_HDRSIZE, align 4
  %182 = sext i32 %181 to i64
  %183 = sub i64 %180, %182
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = call i32 @LeaveCriticalSection(i32* %188)
  br label %190

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %216

193:                                              ; preds = %125
  %194 = load i64, i64* %16, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i64, i64* %16, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = sub i64 %203, %200
  store i64 %204, i64* %202, align 8
  br label %208

205:                                              ; preds = %193
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %205, %199
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = call i32 @LeaveCriticalSection(i32* %210)
  %212 = load i64, i64* %16, align 8
  %213 = trunc i64 %212 to i32
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %208, %192
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* @NRC_INCOMP, align 4
  store i32 %222, i32* %12, align 4
  br label %229

223:                                              ; preds = %216
  %224 = load i32, i32* @NRC_GOODRET, align 4
  store i32 %224, i32* %12, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %221
  br label %230

230:                                              ; preds = %229, %120
  br label %231

231:                                              ; preds = %230, %107
  br label %232

232:                                              ; preds = %231, %162, %146, %133
  %233 = load i32, i32* %12, align 4
  %234 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %12, align 4
  store i32 %235, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %236

236:                                              ; preds = %232, %59, %51, %46, %39, %34
  %237 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i32 @WSARecv(i64, %struct.TYPE_9__*, i64, i64*, i64*, i32*, i32*) #2

declare dso_local i64 @WSAGetLastError(...) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

declare dso_local i32 @ERR(i8*, i64) #2

declare dso_local i32 @NetBIOSHangupSession(%struct.TYPE_10__*) #2

declare dso_local i64 @NCB_CANCELLED(%struct.TYPE_10__*) #2

declare dso_local i32 @FIXME(i8*, ...) #2

declare dso_local i32 @NBR_GETWORD(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
