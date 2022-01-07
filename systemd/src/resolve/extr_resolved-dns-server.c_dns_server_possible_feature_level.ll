; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_possible_feature_level.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_possible_feature_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i64, i64, i64, i64, i64 }

@DNSSEC_NO = common dso_local global i64 0, align 8
@DNS_OVER_TLS_NO = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_LARGE = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_TLS_DO = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_EDNS0 = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Grace period over, resuming full feature set (%s) for DNS server %s.\00", align 1
@DNS_SERVER_FEATURE_RETRY_ATTEMPTS = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"Reached maximum number of failed TCP connection attempts, trying UDP again...\00", align 1
@DNS_SERVER_FEATURE_LEVEL_UDP = common dso_local global i64 0, align 8
@DNS_OVER_TLS_YES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Server doesn't support DNS-over-TLS, downgrading protocol...\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Server doesn't support EDNS(0) properly, downgrading feature level...\00", align 1
@DNS_SERVER_FEATURE_LEVEL_DO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"Detected server responses lack RRSIG records, downgrading feature level...\00", align 1
@DNSSEC_YES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"Lost too many UDP packets, downgrading feature level...\00", align 1
@.str.6 = private unnamed_addr constant [100 x i8] c"Got too many failed TCP connection failures and truncated UDP packets, downgrading feature level...\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Using degraded feature set (%s) for DNS server %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dns_server_possible_feature_level(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i64 @dns_server_get_dnssec_mode(%struct.TYPE_10__* %7)
  %9 = load i64, i64* @DNSSEC_NO, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i64 @dns_server_get_dns_over_tls_mode(%struct.TYPE_10__* %12)
  %14 = load i64, i64* @DNS_OVER_TLS_NO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_LARGE, align 8
  br label %20

18:                                               ; preds = %11
  %19 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TLS_DO, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %3, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i64 @dns_server_get_dns_over_tls_mode(%struct.TYPE_10__* %23)
  %25 = load i64, i64* @DNS_OVER_TLS_NO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %20
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = call i64 @dns_server_grace_period_expired(%struct.TYPE_10__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = call i32 @dns_server_reset_counters(%struct.TYPE_10__* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dns_server_feature_level_to_string(i64 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = call i32 @dns_server_string(%struct.TYPE_10__* %67)
  %69 = call i32 @log_info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = call i32 @dns_server_flush_cache(%struct.TYPE_10__* %70)
  br label %252

72:                                               ; preds = %49, %43
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %251

86:                                               ; preds = %72
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %4, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DNS_SERVER_FEATURE_RETRY_ATTEMPTS, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TCP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = call i32 @log_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_UDP, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %234

106:                                              ; preds = %95, %86
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %119 = call i64 @dns_server_get_dns_over_tls_mode(%struct.TYPE_10__* %118)
  %120 = load i64, i64* @DNS_OVER_TLS_YES, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = call i32 @log_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  br label %233

128:                                              ; preds = %117, %111, %106
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = call i32 @log_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_UDP, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %232

144:                                              ; preds = %133, %128
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_DO, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %149
  %156 = call i32 @log_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN, align 8
  br label %166

164:                                              ; preds = %155
  %165 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i64 [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %231

170:                                              ; preds = %149, %144
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @DNS_SERVER_FEATURE_RETRY_ATTEMPTS, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %181 = call i64 @dns_server_get_dnssec_mode(%struct.TYPE_10__* %180)
  %182 = load i64, i64* @DNSSEC_YES, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_LARGE, align 8
  br label %188

186:                                              ; preds = %176
  %187 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_UDP, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i64 [ %185, %184 ], [ %187, %186 ]
  %190 = icmp sge i64 %179, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = call i32 @log_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %194, align 8
  br label %230

197:                                              ; preds = %188, %170
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @DNS_SERVER_FEATURE_RETRY_ATTEMPTS, align 8
  %202 = icmp sge i64 %200, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %197
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %203
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %213 = call i64 @dns_server_get_dnssec_mode(%struct.TYPE_10__* %212)
  %214 = load i64, i64* @DNSSEC_YES, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_LARGE, align 8
  br label %220

218:                                              ; preds = %208
  %219 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_UDP, align 8
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i64 [ %217, %216 ], [ %219, %218 ]
  %222 = icmp sgt i64 %211, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = call i32 @log_debug(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.6, i64 0, i64 0))
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %226, align 8
  br label %229

229:                                              ; preds = %223, %220, %203, %197
  br label %230

230:                                              ; preds = %229, %191
  br label %231

231:                                              ; preds = %230, %166
  br label %232

232:                                              ; preds = %231, %139
  br label %233

233:                                              ; preds = %232, %122
  br label %234

234:                                              ; preds = %233, %101
  %235 = load i64, i64* %4, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %235, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %234
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %242 = call i32 @dns_server_reset_counters(%struct.TYPE_10__* %241)
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @dns_server_feature_level_to_string(i64 %245)
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %248 = call i32 @dns_server_string(%struct.TYPE_10__* %247)
  %249 = call i32 @log_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %246, i32 %248)
  br label %250

250:                                              ; preds = %240, %234
  br label %251

251:                                              ; preds = %250, %80
  br label %252

252:                                              ; preds = %251, %53
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  ret i64 %255
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @dns_server_get_dnssec_mode(%struct.TYPE_10__*) #1

declare dso_local i64 @dns_server_get_dns_over_tls_mode(%struct.TYPE_10__*) #1

declare dso_local i64 @dns_server_grace_period_expired(%struct.TYPE_10__*) #1

declare dso_local i32 @dns_server_reset_counters(%struct.TYPE_10__*) #1

declare dso_local i32 @log_info(i8*, i32, i32) #1

declare dso_local i32 @dns_server_feature_level_to_string(i64) #1

declare dso_local i32 @dns_server_string(%struct.TYPE_10__*) #1

declare dso_local i32 @dns_server_flush_cache(%struct.TYPE_10__*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64) #1

declare dso_local i32 @log_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
