; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_open_amt_tunnel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_open_amt_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i32, i8*, i32, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.addrinfo = type { i64, %struct.addrinfo*, i32, i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Attempting AMT to %s...\00", align 1
@AMT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not find relay %s, reason: %s\00", align 1
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Could not convert relay ip to binary representation: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Trying AMT Server: %s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Sent relay AMT discovery message to %s\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Error receiving AMT relay advertisement msg from %s, skipping\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Received AMT relay advertisement from %s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Sent AMT relay request message to %s\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Could not receive AMT relay membership query from %s, reason: %s\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Received AMT relay membership query from %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Error joining SSM %s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Joined SSM\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Error joining ASM %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Joined ASM group\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"Unable to receive UDP packet from AMT relay %s for multicast group\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"Got UDP packet from multicast group via AMT relay %s, continuing...\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"No AMT servers responding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @open_amt_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_amt_tunnel(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %7, align 8
  %19 = call i32 @memset(%struct.addrinfo* %4, i32 0, i32 24)
  %20 = load i32, i32* @AF_INET, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @AMT_PORT, align 4
  %35 = call i32 @vlc_getaddrinfo(i8* %33, i32 %34, %struct.addrinfo* %4, %struct.addrinfo** %5)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gai_strerror(i32 %43)
  %45 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44)
  br label %207

46:                                               ; preds = %1
  %47 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %47, %struct.addrinfo** %6, align 8
  br label %48

48:                                               ; preds = %194, %46
  %49 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = call i32 (...) @vlc_killed()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %198

57:                                               ; preds = %55
  %58 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %61, %struct.sockaddr_in** %9, align 8
  %62 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %10, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %11, align 8
  %66 = load i32, i32* @AF_INET, align 4
  %67 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 0
  %69 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %70 = call i32* @inet_ntop(i32 %66, i32* %68, i8* %65, i32 %69)
  %71 = icmp eq i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %57
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @gai_strerror(i32 %78)
  %80 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 2, i32* %13, align 4
  br label %191

81:                                               ; preds = %57
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %86 = call i32 @memcpy(i8* %84, i8* %65, i32 %85)
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 2, i32* %13, align 4
  br label %191

95:                                               ; preds = %81
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %108 = call i64 @amt_sockets_init(%struct.TYPE_21__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  store i32 5, i32* %13, align 4
  br label %191

111:                                              ; preds = %95
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = call i32 @amt_send_relay_discovery_msg(%struct.TYPE_21__* %112, i8* %65)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = call i32 @amt_rcv_relay_adv(%struct.TYPE_21__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %121 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %120, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  store i32 2, i32* %13, align 4
  br label %191

122:                                              ; preds = %111
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %124 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = call i32 @amt_send_relay_request(%struct.TYPE_21__* %125, i8* %65)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %130 = call i32 @amt_rcv_relay_mem_query(%struct.TYPE_21__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %122
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = load i32, i32* @errno, align 4
  %135 = call i32 @vlc_strerror(i32 %134)
  %136 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %133, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i8* %65, i32 %135)
  store i32 2, i32* %13, align 4
  br label %191

137:                                              ; preds = %122
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %139 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %65)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %137
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = call i64 @amt_joinSSM_group(%struct.TYPE_21__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @vlc_strerror(i32 %152)
  %154 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  store i32 2, i32* %13, align 4
  br label %191

155:                                              ; preds = %146
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %170

158:                                              ; preds = %137
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %160 = call i64 @amt_joinASM_group(%struct.TYPE_21__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @vlc_strerror(i32 %164)
  %166 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %165)
  store i32 2, i32* %13, align 4
  br label %191

167:                                              ; preds = %158
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %169 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %155
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @vlc_timer_disarm(i32 %173)
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @amt_send_mem_update(%struct.TYPE_21__* %175, i8* %178, i32 0)
  store i32 0, i32* %14, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %181 = call i32* @BlockAMT(%struct.TYPE_21__* %180, i32* %14)
  store i32* %181, i32** %15, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %170
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %185 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %184, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0), i8* %65)
  store i32 5, i32* %13, align 4
  br label %191

186:                                              ; preds = %170
  %187 = load i32*, i32** %15, align 8
  %188 = call i32 @block_Release(i32* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Dbg(%struct.TYPE_21__* %189, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8* %65)
  store i32 3, i32* %13, align 4
  br label %191

191:                                              ; preds = %162, %150, %132, %119, %94, %75, %186, %183, %110
  %192 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %13, align 4
  switch i32 %193, label %220 [
    i32 5, label %194
    i32 3, label %198
    i32 2, label %207
  ]

194:                                              ; preds = %191
  %195 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %196 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %195, i32 0, i32 1
  %197 = load %struct.addrinfo*, %struct.addrinfo** %196, align 8
  store %struct.addrinfo* %197, %struct.addrinfo** %6, align 8
  br label %48

198:                                              ; preds = %191, %55
  %199 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %200 = icmp eq %struct.addrinfo* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %203 = call i32 (%struct.TYPE_21__*, i8*, ...) @msg_Err(%struct.TYPE_21__* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %207

204:                                              ; preds = %198
  %205 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %206 = call i32 @freeaddrinfo(%struct.addrinfo* %205)
  store i32 1, i32* %2, align 4
  br label %218

207:                                              ; preds = %201, %191, %38
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @vlc_timer_disarm(i32 %210)
  %212 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %213 = icmp ne %struct.addrinfo* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %216 = call i32 @freeaddrinfo(%struct.addrinfo* %215)
  br label %217

217:                                              ; preds = %214, %207
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %204
  %219 = load i32, i32* %2, align 4
  ret i32 %219

220:                                              ; preds = %191
  unreachable
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @vlc_getaddrinfo(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @vlc_killed(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @amt_sockets_init(%struct.TYPE_21__*) #1

declare dso_local i32 @amt_send_relay_discovery_msg(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @amt_rcv_relay_adv(%struct.TYPE_21__*) #1

declare dso_local i32 @amt_send_relay_request(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @amt_rcv_relay_mem_query(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_strerror(i32) #1

declare dso_local i64 @amt_joinSSM_group(%struct.TYPE_21__*) #1

declare dso_local i64 @amt_joinASM_group(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_timer_disarm(i32) #1

declare dso_local i32 @amt_send_mem_update(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32* @BlockAMT(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @block_Release(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
