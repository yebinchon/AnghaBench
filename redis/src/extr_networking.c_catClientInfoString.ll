; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_catClientInfoString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_catClientInfoString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i64, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_12__*, i64, i64, %struct.TYPE_11__*, i64, i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@CONN_INFO_LEN = common dso_local global i32 0, align 4
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CLIENT_MONITOR = common dso_local global i32 0, align 4
@CLIENT_MASTER = common dso_local global i32 0, align 4
@CLIENT_PUBSUB = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_TRACKING = common dso_local global i32 0, align 4
@CLIENT_TRACKING_BROKEN_REDIR = common dso_local global i32 0, align 4
@CLIENT_DIRTY_CAS = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@CLIENT_UNBLOCKED = common dso_local global i32 0, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@CLIENT_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"id=%U addr=%s %s name=%s age=%I idle=%I flags=%s db=%i sub=%i psub=%i multi=%i qbuf=%U qbuf-free=%U obl=%U oll=%U omem=%U events=%s cmd=%s user=%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"(superuser)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catClientInfoString(i32 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %10 = load i32, i32* @CONN_INFO_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CLIENT_SLAVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLIENT_MONITOR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  store i8 79, i8* %29, align 1
  br label %34

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  store i8 83, i8* %32, align 1
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CLIENT_MASTER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  store i8 77, i8* %43, align 1
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CLIENT_PUBSUB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 80, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CLIENT_MULTI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 120, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CLIENT_BLOCKED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  store i8 98, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CLIENT_TRACKING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 116, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CLIENT_TRACKING_BROKEN_REDIR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  store i8 82, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CLIENT_DIRTY_CAS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  store i8 100, i8* %103, align 1
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  store i8 99, i8* %113, align 1
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CLIENT_UNBLOCKED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  store i8 117, i8* %123, align 1
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 65, i8* %133, align 1
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %9, align 8
  store i8 85, i8* %143, align 1
  br label %145

145:                                              ; preds = %142, %135
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CLIENT_READONLY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  store i8 114, i8* %153, align 1
  br label %155

155:                                              ; preds = %152, %145
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %158 = icmp eq i8* %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %9, align 8
  store i8 78, i8* %160, align 1
  br label %162

162:                                              ; preds = %159, %155
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  store i8 0, i8* %163, align 1
  %165 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8* %165, i8** %9, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 13
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %162
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 13
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @connHasReadHandler(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  store i8 114, i8* %177, align 1
  br label %179

179:                                              ; preds = %176, %170
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 13
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @connHasWriteHandler(i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  store i8 119, i8* %186, align 1
  br label %188

188:                                              ; preds = %185, %179
  br label %189

189:                                              ; preds = %188, %162
  %190 = load i8*, i8** %9, align 8
  store i8 0, i8* %190, align 1
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 14
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = call i32 @getClientPeerId(%struct.TYPE_16__* %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 13
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %11 to i32
  %201 = call i32 @connGetInfo(i64 %199, i8* %13, i32 %200)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 12
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = icmp ne %struct.TYPE_11__* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %189
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 12
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to i8*
  br label %214

213:                                              ; preds = %189
  br label %214

214:                                              ; preds = %213, %206
  %215 = phi i8* [ %212, %206 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %213 ]
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %216, %219
  %221 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %221, %224
  %226 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 9
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @dictSize(i32 %234)
  %236 = trunc i64 %235 to i32
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @listLength(i32 %239)
  %241 = trunc i64 %240 to i32
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @CLIENT_MULTI, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %214
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  br label %254

253:                                              ; preds = %214
  br label %254

254:                                              ; preds = %253, %248
  %255 = phi i32 [ %252, %248 ], [ -1, %253 ]
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @sdslen(i32 %258)
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @sdsavail(i32 %262)
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @listLength(i32 %269)
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %272 = call i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_16__* %271)
  %273 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = icmp ne %struct.TYPE_14__* %276, null
  br i1 %277, label %278, label %284

278:                                              ; preds = %254
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  br label %285

284:                                              ; preds = %254
  br label %285

285:                                              ; preds = %284, %278
  %286 = phi i8* [ %283, %278 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %284 ]
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = icmp ne %struct.TYPE_15__* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  br label %298

297:                                              ; preds = %285
  br label %298

298:                                              ; preds = %297, %291
  %299 = phi i8* [ %296, %291 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %297 ]
  %300 = call i32 @sdscatfmt(i32 %191, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i64 %194, i32 %196, i32 %201, i8* %215, i64 %220, i64 %225, i8* %226, i32 %231, i32 %236, i32 %241, i32 %255, i64 %259, i64 %263, i64 %266, i64 %270, i64 %272, i8* %273, i8* %286, i8* %299)
  %301 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %301)
  ret i32 %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @connHasReadHandler(i64) #2

declare dso_local i64 @connHasWriteHandler(i64) #2

declare dso_local i32 @sdscatfmt(i32, i8*, i64, i32, i32, i8*, i64, i64, i8*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i8*, i8*, i8*) #2

declare dso_local i32 @getClientPeerId(%struct.TYPE_16__*) #2

declare dso_local i32 @connGetInfo(i64, i8*, i32) #2

declare dso_local i64 @dictSize(i32) #2

declare dso_local i64 @listLength(i32) #2

declare dso_local i64 @sdslen(i32) #2

declare dso_local i64 @sdsavail(i32) #2

declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
