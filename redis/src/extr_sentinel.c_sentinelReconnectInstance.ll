; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelReconnectInstance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelReconnectInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*, i8*, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, i32, i64 }

@SENTINEL_PING_PERIOD = common dso_local global i64 0, align 8
@NET_FIRST_BIND_ADDR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@C_ERR = common dso_local global i64 0, align 8
@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"-cmd-link-reconnection\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%@ #Failed to initialize TLS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%@ #%s\00", align 1
@sentinelLinkEstablishedCallback = common dso_local global i32 0, align 4
@sentinelDisconnectCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@SRI_MASTER = common dso_local global i32 0, align 4
@SRI_SLAVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"-pubsub-link-reconnection\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@sentinelReceiveHelloMessages = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@SENTINEL_HELLO_CHANNEL = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@SRI_SENTINEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelReconnectInstance(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %295

13:                                               ; preds = %1
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %295

21:                                               ; preds = %13
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %3, align 8
  %25 = call i8* (...) @mstime()
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %27, %32
  %34 = load i64, i64* @SENTINEL_PING_PERIOD, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %295

37:                                               ; preds = %21
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  store i64 %38, i64* %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = icmp eq %struct.TYPE_25__* %45, null
  br i1 %46, label %47, label %149

47:                                               ; preds = %37
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @NET_FIRST_BIND_ADDR, align 4
  %59 = call i8* @redisAsyncConnectBind(i32 %52, i64 %57, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_25__*
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  store %struct.TYPE_25__* %60, %struct.TYPE_25__** %62, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %47
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 1), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = call i64 @instanceLinkNegotiateTLS(%struct.TYPE_25__* %75)
  %77 = load i64, i64* @C_ERR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* @LL_DEBUG, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %82 = call i32 (i32, i8*, %struct.TYPE_22__*, i8*, ...) @sentinelEvent(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = call i32 @instanceLinkCloseConnection(%struct.TYPE_23__* %83, %struct.TYPE_25__* %86)
  br label %148

88:                                               ; preds = %72, %69, %47
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %88
  %96 = load i32, i32* @LL_DEBUG, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, %struct.TYPE_22__*, i8*, ...) @sentinelEvent(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %106, align 8
  %108 = call i32 @instanceLinkCloseConnection(%struct.TYPE_23__* %104, %struct.TYPE_25__* %107)
  br label %147

109:                                              ; preds = %88
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = call i8* (...) @mstime()
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store %struct.TYPE_23__* %115, %struct.TYPE_23__** %119, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = call i32 @redisAeAttach(i32 %120, %struct.TYPE_25__* %123)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = load i32, i32* @sentinelLinkEstablishedCallback, align 4
  %129 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_25__* %127, i32 %128)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = load i32, i32* @sentinelDisconnectCallback, align 4
  %134 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_25__* %132, i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = call i32 @sentinelSendAuthIfNeeded(%struct.TYPE_22__* %135, %struct.TYPE_25__* %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = call i32 @sentinelSetClientName(%struct.TYPE_22__* %140, %struct.TYPE_25__* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %146 = call i32 @sentinelSendPing(%struct.TYPE_22__* %145)
  br label %147

147:                                              ; preds = %109, %95
  br label %148

148:                                              ; preds = %147, %79
  br label %149

149:                                              ; preds = %148, %37
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SRI_MASTER, align 4
  %154 = load i32, i32* @SRI_SLAVE, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %275

158:                                              ; preds = %149
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  %162 = icmp eq %struct.TYPE_25__* %161, null
  br i1 %162, label %163, label %275

163:                                              ; preds = %158
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @NET_FIRST_BIND_ADDR, align 4
  %175 = call i8* @redisAsyncConnectBind(i32 %168, i64 %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.TYPE_25__*
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 2
  store %struct.TYPE_25__* %176, %struct.TYPE_25__** %178, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %163
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 1), align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %190, align 8
  %192 = call i64 @instanceLinkNegotiateTLS(%struct.TYPE_25__* %191)
  %193 = load i64, i64* @C_ERR, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @LL_DEBUG, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %198 = call i32 (i32, i8*, %struct.TYPE_22__*, i8*, ...) @sentinelEvent(i32 %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_22__* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %274

199:                                              ; preds = %188, %185, %163
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %199
  %207 = load i32, i32* @LL_DEBUG, align 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, %struct.TYPE_22__*, i8*, ...) @sentinelEvent(i32 %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_22__* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %217, align 8
  %219 = call i32 @instanceLinkCloseConnection(%struct.TYPE_23__* %215, %struct.TYPE_25__* %218)
  br label %273

220:                                              ; preds = %199
  %221 = call i8* (...) @mstime()
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  store %struct.TYPE_23__* %224, %struct.TYPE_23__** %228, align 8
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %231, align 8
  %233 = call i32 @redisAeAttach(i32 %229, %struct.TYPE_25__* %232)
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = load i32, i32* @sentinelLinkEstablishedCallback, align 4
  %238 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_25__* %236, i32 %237)
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = load i32, i32* @sentinelDisconnectCallback, align 4
  %243 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_25__* %241, i32 %242)
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %246, align 8
  %248 = call i32 @sentinelSendAuthIfNeeded(%struct.TYPE_22__* %244, %struct.TYPE_25__* %247)
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %251, align 8
  %253 = call i32 @sentinelSetClientName(%struct.TYPE_22__* %249, %struct.TYPE_25__* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %255, align 8
  %257 = load i32, i32* @sentinelReceiveHelloMessages, align 4
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %260 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_22__* %259, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i32, i32* @SENTINEL_HELLO_CHANNEL, align 4
  %262 = call i32 @redisAsyncCommand(%struct.TYPE_25__* %256, i32 %257, %struct.TYPE_22__* %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %260, i32 %261)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* @C_OK, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %220
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %269, align 8
  %271 = call i32 @instanceLinkCloseConnection(%struct.TYPE_23__* %267, %struct.TYPE_25__* %270)
  br label %295

272:                                              ; preds = %220
  br label %273

273:                                              ; preds = %272, %206
  br label %274

274:                                              ; preds = %273, %195
  br label %275

275:                                              ; preds = %274, %158, %149
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %277, align 8
  %279 = icmp ne %struct.TYPE_25__* %278, null
  br i1 %279, label %280, label %295

280:                                              ; preds = %275
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SRI_SENTINEL, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %280
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %289, align 8
  %291 = icmp ne %struct.TYPE_25__* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %287, %280
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  store i64 0, i64* %294, align 8
  br label %295

295:                                              ; preds = %12, %20, %36, %266, %292, %287, %275
  ret void
}

declare dso_local i8* @mstime(...) #1

declare dso_local i8* @redisAsyncConnectBind(i32, i64, i32) #1

declare dso_local i64 @instanceLinkNegotiateTLS(%struct.TYPE_25__*) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_22__*, i8*, ...) #1

declare dso_local i32 @instanceLinkCloseConnection(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @redisAeAttach(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sentinelSendAuthIfNeeded(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sentinelSetClientName(%struct.TYPE_22__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @sentinelSendPing(%struct.TYPE_22__*) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_25__*, i32, %struct.TYPE_22__*, i8*, i32, i32) #1

declare dso_local i32 @sentinelInstanceMapCommand(%struct.TYPE_22__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
