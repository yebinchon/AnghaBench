; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_reply.c_adns__procdgram.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_reply.c_adns__procdgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32, i32, %struct.TYPE_42__, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_44__, i32*, %struct.TYPE_45__*, i32*, i32, %struct.TYPE_43__, %struct.TYPE_41__*, %struct.TYPE_48__* }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_45__ = type { i32, i32, i64 (%struct.TYPE_46__*, i32, i32, i32*)* }
%struct.TYPE_46__ = type { i32, i32, i32, i32, i32, %struct.timeval, i32*, %struct.TYPE_48__*, i32 }
%struct.timeval = type { i32 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_40__, i32* }
%struct.TYPE_40__ = type { i32*, i32 }

@DNS_HDRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"received datagram too short for message header (%d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"server sent us a query, not a response\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"server sent us unknown opcode %d (wanted 0=QUERY)\00", align 1
@query_tcpw = common dso_local global i64 0, align 8
@query_tosend = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"server cannot understand our query (Format Error)\00", align 1
@adns_s_rcodeformaterror = common dso_local global i64 0, align 8
@adns_s_rcodeservfail = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"server failure on unidentifiable query\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"server claims not to implement our query\00", align 1
@adns_s_rcodenotimplemented = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"server refused our query\00", align 1
@adns_s_rcoderefused = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"server gave unknown response code %d\00", align 1
@adns_s_rcodeunknown = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"server sent reply without quoting our question\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"server claimed to answer %d questions with one message\00", align 1
@adns_if_debug = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"reply not found, id %02x, query owner %s\00", align 1
@DNS_CLASS_IN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [56 x i8] c"ignoring answer RR with wrong class %d (expected IN=%d)\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"ignoring RR with an unexpected owner %s\00", align 1
@adns_r_cname = common dso_local global i32 0, align 4
@adns__rrt_typemask = common dso_local global i32 0, align 4
@adns_qf_cname_forbid = common dso_local global i32 0, align 4
@adns_s_prohibitedcname = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [53 x i8] c"allegedly canonical name %s is actually alias for %s\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"ignoring CNAME (to %s) coexisting with RR\00", align 1
@adns_qf_quotefail_cname = common dso_local global i32 0, align 4
@pdf_quoteok = common dso_local global i32 0, align 4
@adns_s_nomemory = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [43 x i8] c"ignoring answer RR with irrelevant type %d\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"ignoring authority RR with wrong class %d (expected IN=%d)\00", align 1
@adns_r_soa_raw = common dso_local global i32 0, align 4
@adns_r_ns_raw = common dso_local global i32 0, align 4
@adns_qf_search = common dso_local global i32 0, align 4
@adns_s_nxdomain = common dso_local global i64 0, align 8
@adns_s_nodata = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [53 x i8] c"server is not willing to do recursive lookups for us\00", align 1
@adns_s_norecurse = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [49 x i8] c"server thinks we didn't ask for recursive lookup\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"server claims to do recursion, but gave us a referral\00", align 1
@adns_s_invalidresponse = common dso_local global i64 0, align 8
@query_childw = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [49 x i8] c"server sent datagram which points outside itself\00", align 1
@adns_qf_usevc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__procdgram(%struct.TYPE_47__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.TYPE_47__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca %struct.TYPE_45__*, align 8
  %45 = alloca %struct.TYPE_48__*, align 8
  %46 = alloca %struct.TYPE_48__*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca %struct.TYPE_44__, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca %struct.TYPE_46__, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %5, i32* %53, align 4
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @DNS_HDRSIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %6
  %58 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %58, i32 %59, %struct.TYPE_48__* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %994

62:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @GET_W(i32 %63, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @GET_B(i32 %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @GET_B(i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @GET_W(i32 %72, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @GET_W(i32 %75, i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %25, align 4
  %80 = call i32 @GET_W(i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %26, align 4
  %83 = call i32 @GET_W(i32 %81, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @DNS_HDRSIZE, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %21, align 4
  %90 = and i32 %89, 128
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %21, align 4
  %92 = and i32 %91, 120
  %93 = ashr i32 %92, 3
  store i32 %93, i32* %31, align 4
  %94 = load i32, i32* %21, align 4
  %95 = and i32 %94, 2
  store i32 %95, i32* %29, align 4
  %96 = load i32, i32* %21, align 4
  %97 = and i32 %96, 1
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %22, align 4
  %99 = and i32 %98, 128
  store i32 %99, i32* %27, align 4
  %100 = load i32, i32* %22, align 4
  %101 = and i32 %100, 15
  store i32 %101, i32* %47, align 4
  store i32 0, i32* %19, align 4
  %102 = load i32, i32* %30, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %62
  %105 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %105, i32 %106, %struct.TYPE_48__* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %994

108:                                              ; preds = %62
  %109 = load i32, i32* %31, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %31, align 4
  %115 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %112, i32 %113, %struct.TYPE_48__* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %994

116:                                              ; preds = %108
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %45, align 8
  %117 = load i32, i32* %23, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %228

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %125, align 8
  br label %132

127:                                              ; preds = %119
  %128 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_48__*, %struct.TYPE_48__** %130, align 8
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi %struct.TYPE_48__* [ %126, %122 ], [ %131, %127 ]
  store %struct.TYPE_48__* %133, %struct.TYPE_48__** %45, align 8
  br label %134

134:                                              ; preds = %204, %132
  %135 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %136 = icmp ne %struct.TYPE_48__* %135, null
  br i1 %136, label %137, label %206

137:                                              ; preds = %134
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %139 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %138, i32 0, i32 15
  %140 = load %struct.TYPE_48__*, %struct.TYPE_48__** %139, align 8
  store %struct.TYPE_48__* %140, %struct.TYPE_48__** %46, align 8
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %142 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %204

147:                                              ; preds = %137
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %150 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %204

154:                                              ; preds = %147
  %155 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %156 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %155, i32 0, i32 9
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @DNS_HDRSIZE, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* @DNS_HDRSIZE, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %166 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* @DNS_HDRSIZE, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %168, %170
  %172 = call i64 @memcmp(i32* %160, i32* %164, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %154
  br label %204

175:                                              ; preds = %154
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %180 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @query_tcpw, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  br label %203

186:                                              ; preds = %175
  %187 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %188 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @query_tosend, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %195 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = shl i32 1, %197
  %199 = and i32 %196, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %186
  br label %204

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %178
  br label %206

204:                                              ; preds = %201, %174, %153, %146
  %205 = load %struct.TYPE_48__*, %struct.TYPE_48__** %46, align 8
  store %struct.TYPE_48__* %205, %struct.TYPE_48__** %45, align 8
  br label %134

206:                                              ; preds = %203, %134
  %207 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %208 = icmp ne %struct.TYPE_48__* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %216 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %214, i32 0, i32 0
  %217 = load %struct.TYPE_48__*, %struct.TYPE_48__** %216, align 8
  %218 = call i32 @LIST_UNLINK(%struct.TYPE_48__* %217, %struct.TYPE_48__* %215)
  br label %226

219:                                              ; preds = %209
  %220 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %223 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i32 0, i32 0
  %224 = load %struct.TYPE_48__*, %struct.TYPE_48__** %223, align 8
  %225 = call i32 @LIST_UNLINK(%struct.TYPE_48__* %224, %struct.TYPE_48__* %222)
  br label %226

226:                                              ; preds = %219, %212
  br label %227

227:                                              ; preds = %226, %206
  br label %228

228:                                              ; preds = %227, %116
  %229 = load i32, i32* %47, align 4
  switch i32 %229, label %280 [
    i32 132, label %230
    i32 130, label %230
    i32 133, label %231
    i32 128, label %243
    i32 131, label %256
    i32 129, label %268
  ]

230:                                              ; preds = %228, %228
  br label %293

231:                                              ; preds = %228
  %232 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %235 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__warn(%struct.TYPE_47__* %232, i32 %233, %struct.TYPE_48__* %234, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %236 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %237 = icmp ne %struct.TYPE_48__* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %240 = load i64, i64* @adns_s_rcodeformaterror, align 8
  %241 = call i32 @adns__query_fail(%struct.TYPE_48__* %239, i64 %240)
  br label %242

242:                                              ; preds = %238, %231
  br label %994

243:                                              ; preds = %228
  %244 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %245 = icmp ne %struct.TYPE_48__* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %248 = load i64, i64* @adns_s_rcodeservfail, align 8
  %249 = call i32 @adns__query_fail(%struct.TYPE_48__* %247, i64 %248)
  br label %255

250:                                              ; preds = %243
  %251 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %254 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %251, i32 %252, %struct.TYPE_48__* %253, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %255

255:                                              ; preds = %250, %246
  br label %994

256:                                              ; preds = %228
  %257 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %260 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__warn(%struct.TYPE_47__* %257, i32 %258, %struct.TYPE_48__* %259, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %261 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %262 = icmp ne %struct.TYPE_48__* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %265 = load i64, i64* @adns_s_rcodenotimplemented, align 8
  %266 = call i32 @adns__query_fail(%struct.TYPE_48__* %264, i64 %265)
  br label %267

267:                                              ; preds = %263, %256
  br label %994

268:                                              ; preds = %228
  %269 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %270 = load i32, i32* %11, align 4
  %271 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %272 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %269, i32 %270, %struct.TYPE_48__* %271, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %273 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %274 = icmp ne %struct.TYPE_48__* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %277 = load i64, i64* @adns_s_rcoderefused, align 8
  %278 = call i32 @adns__query_fail(%struct.TYPE_48__* %276, i64 %277)
  br label %279

279:                                              ; preds = %275, %268
  br label %994

280:                                              ; preds = %228
  %281 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %284 = load i32, i32* %47, align 4
  %285 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__warn(%struct.TYPE_47__* %281, i32 %282, %struct.TYPE_48__* %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %284)
  %286 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %287 = icmp ne %struct.TYPE_48__* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %280
  %289 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %290 = load i64, i64* @adns_s_rcodeunknown, align 8
  %291 = call i32 @adns__query_fail(%struct.TYPE_48__* %289, i64 %290)
  br label %292

292:                                              ; preds = %288, %280
  br label %994

293:                                              ; preds = %230
  %294 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %295 = icmp ne %struct.TYPE_48__* %294, null
  br i1 %295, label %334, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %23, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %296
  %300 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %300, i32 %301, %struct.TYPE_48__* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %333

303:                                              ; preds = %296
  %304 = load i32, i32* %23, align 4
  %305 = icmp sgt i32 %304, 1
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %23, align 4
  %310 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %307, i32 %308, %struct.TYPE_48__* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %309)
  br label %332

311:                                              ; preds = %303
  %312 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @adns_if_debug, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %311
  %319 = call i32 @adns__vbuf_init(%struct.TYPE_44__* %49)
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %20, align 4
  %323 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %324 = load i32, i32* %11, align 4
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* @DNS_HDRSIZE, align 4
  %328 = call i32 @adns__diag_domain(%struct.TYPE_47__* %323, i32 %324, %struct.TYPE_48__* null, %struct.TYPE_44__* %49, i32* %325, i32 %326, i32 %327)
  %329 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %320, i32 %321, %struct.TYPE_48__* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %322, i32 %328)
  %330 = call i32 @adns__vbuf_free(%struct.TYPE_44__* %49)
  br label %331

331:                                              ; preds = %318, %311
  br label %332

332:                                              ; preds = %331, %306
  br label %333

333:                                              ; preds = %332, %299
  br label %994

334:                                              ; preds = %293
  %335 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %336 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %36, align 4
  store i32 -1, i32* %38, align 4
  store i32 0, i32* %15, align 4
  %338 = load i32, i32* %36, align 4
  store i32 %338, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %339

339:                                              ; preds = %588, %334
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* %24, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %591

343:                                              ; preds = %339
  %344 = load i32, i32* %13, align 4
  store i32 %344, i32* %14, align 4
  %345 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %346 = load i32, i32* %11, align 4
  %347 = load i32*, i32** %9, align 8
  %348 = load i32, i32* %10, align 4
  %349 = call i64 @adns__findrr(%struct.TYPE_48__* %345, i32 %346, i32* %347, i32 %348, i32* %13, i32* %32, i32* %33, i64* %42, i32* %34, i32* %35, i32* %39)
  store i64 %349, i64* %48, align 8
  %350 = load i64, i64* %48, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %343
  %353 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %354 = load i64, i64* %48, align 8
  %355 = call i32 @adns__query_fail(%struct.TYPE_48__* %353, i64 %354)
  br label %994

356:                                              ; preds = %343
  %357 = load i32, i32* %32, align 4
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %884

360:                                              ; preds = %356
  %361 = load i32, i32* %33, align 4
  %362 = load i32, i32* @DNS_CLASS_IN, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %360
  %365 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %366 = load i32, i32* %11, align 4
  %367 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %368 = load i32, i32* %33, align 4
  %369 = load i32, i32* @DNS_CLASS_IN, align 4
  %370 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %365, i32 %366, %struct.TYPE_48__* %367, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %368, i32 %369)
  br label %588

371:                                              ; preds = %360
  %372 = load i32, i32* %39, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %396, label %374

374:                                              ; preds = %371
  %375 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @adns_if_debug, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %374
  %382 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %383 = load i32, i32* %11, align 4
  %384 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %385 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %386 = load i32, i32* %11, align 4
  %387 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %388 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %389 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %388, i32 0, i32 8
  %390 = load i32*, i32** %9, align 8
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* %14, align 4
  %393 = call i32 @adns__diag_domain(%struct.TYPE_47__* %385, i32 %386, %struct.TYPE_48__* %387, %struct.TYPE_44__* %389, i32* %390, i32 %391, i32 %392)
  %394 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %382, i32 %383, %struct.TYPE_48__* %384, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %381, %374
  br label %588

396:                                              ; preds = %371
  %397 = load i32, i32* %32, align 4
  %398 = load i32, i32* @adns_r_cname, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %567

400:                                              ; preds = %396
  %401 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %402 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %401, i32 0, i32 10
  %403 = load %struct.TYPE_45__*, %struct.TYPE_45__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @adns__rrt_typemask, align 4
  %407 = and i32 %405, %406
  %408 = load i32, i32* @adns_r_cname, align 4
  %409 = icmp ne i32 %407, %408
  br i1 %409, label %410, label %567

410:                                              ; preds = %400
  %411 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %412 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @adns_qf_cname_forbid, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %410
  %418 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %419 = load i64, i64* @adns_s_prohibitedcname, align 8
  %420 = call i32 @adns__query_fail(%struct.TYPE_48__* %418, i64 %419)
  br label %994

421:                                              ; preds = %410
  %422 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %423 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %422, i32 0, i32 11
  %424 = load i32*, i32** %423, align 8
  %425 = icmp ne i32* %424, null
  br i1 %425, label %426, label %448

426:                                              ; preds = %421
  %427 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %428 = load i32, i32* %11, align 4
  %429 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %430 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %431 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %430, i32 0, i32 14
  %432 = load %struct.TYPE_41__*, %struct.TYPE_41__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %432, i32 0, i32 2
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %436 = load i32, i32* %11, align 4
  %437 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %438 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %439 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %438, i32 0, i32 8
  %440 = load i32*, i32** %9, align 8
  %441 = load i32, i32* %10, align 4
  %442 = load i32, i32* %35, align 4
  %443 = call i32 @adns__diag_domain(%struct.TYPE_47__* %435, i32 %436, %struct.TYPE_48__* %437, %struct.TYPE_44__* %439, i32* %440, i32 %441, i32 %442)
  %444 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %427, i32 %428, %struct.TYPE_48__* %429, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32* %434, i32 %443)
  %445 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %446 = load i64, i64* @adns_s_prohibitedcname, align 8
  %447 = call i32 @adns__query_fail(%struct.TYPE_48__* %445, i64 %446)
  br label %994

448:                                              ; preds = %421
  %449 = load i32, i32* %15, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %465

451:                                              ; preds = %448
  %452 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %453 = load i32, i32* %11, align 4
  %454 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %455 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %456 = load i32, i32* %11, align 4
  %457 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %458 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %459 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %458, i32 0, i32 8
  %460 = load i32*, i32** %9, align 8
  %461 = load i32, i32* %10, align 4
  %462 = load i32, i32* %35, align 4
  %463 = call i32 @adns__diag_domain(%struct.TYPE_47__* %455, i32 %456, %struct.TYPE_48__* %457, %struct.TYPE_44__* %459, i32* %460, i32 %461, i32 %462)
  %464 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %452, i32 %453, %struct.TYPE_48__* %454, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %463)
  br label %564

465:                                              ; preds = %448
  %466 = load i32, i32* %35, align 4
  %467 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %468 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %467, i32 0, i32 5
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* %10, align 4
  %470 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %471 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %470, i32 0, i32 6
  store i32 %469, i32* %471, align 4
  %472 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %473 = load i32, i32* %11, align 4
  %474 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %475 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %476 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %475, i32 0, i32 8
  %477 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %478 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @adns_qf_quotefail_cname, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %465
  br label %486

484:                                              ; preds = %465
  %485 = load i32, i32* @pdf_quoteok, align 4
  br label %486

486:                                              ; preds = %484, %483
  %487 = phi i32 [ 0, %483 ], [ %485, %484 ]
  %488 = load i32*, i32** %9, align 8
  %489 = load i32, i32* %10, align 4
  %490 = load i32, i32* %35, align 4
  %491 = load i32, i32* %34, align 4
  %492 = add nsw i32 %490, %491
  %493 = call i64 @adns__parse_domain(%struct.TYPE_47__* %472, i32 %473, %struct.TYPE_48__* %474, %struct.TYPE_44__* %476, i32 %487, i32* %488, i32 %489, i32* %35, i32 %492)
  store i64 %493, i64* %48, align 8
  %494 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %495 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %494, i32 0, i32 8
  %496 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

499:                                              ; preds = %486
  br label %884

500:                                              ; preds = %486
  %501 = load i64, i64* %48, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %500
  %504 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %505 = load i64, i64* %48, align 8
  %506 = call i32 @adns__query_fail(%struct.TYPE_48__* %504, i64 %505)
  br label %994

507:                                              ; preds = %500
  %508 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %509 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %508, i32 0, i32 8
  %510 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = bitcast i32* %511 to i8*
  %513 = call i32 @strlen(i8* %512)
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %40, align 4
  %515 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %516 = load i32, i32* %40, align 4
  %517 = sext i32 %516 to i64
  %518 = call i32* @adns__alloc_preserved(%struct.TYPE_48__* %515, i64 %517)
  %519 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %520 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %519, i32 0, i32 14
  %521 = load %struct.TYPE_41__*, %struct.TYPE_41__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %521, i32 0, i32 2
  store i32* %518, i32** %522, align 8
  %523 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %524 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %523, i32 0, i32 14
  %525 = load %struct.TYPE_41__*, %struct.TYPE_41__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = icmp ne i32* %527, null
  br i1 %528, label %533, label %529

529:                                              ; preds = %507
  %530 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %531 = load i64, i64* @adns_s_nomemory, align 8
  %532 = call i32 @adns__query_fail(%struct.TYPE_48__* %530, i64 %531)
  br label %994

533:                                              ; preds = %507
  %534 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %535 = load i32, i32* %10, align 4
  %536 = sext i32 %535 to i64
  %537 = call i32* @adns__alloc_mine(%struct.TYPE_48__* %534, i64 %536)
  %538 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %539 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %538, i32 0, i32 11
  store i32* %537, i32** %539, align 8
  %540 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %541 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %540, i32 0, i32 11
  %542 = load i32*, i32** %541, align 8
  %543 = load i32*, i32** %9, align 8
  %544 = load i32, i32* %10, align 4
  %545 = sext i32 %544 to i64
  %546 = call i32 @memcpy(i32* %542, i32* %543, i64 %545)
  %547 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %548 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %547, i32 0, i32 14
  %549 = load %struct.TYPE_41__*, %struct.TYPE_41__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %549, i32 0, i32 2
  %551 = load i32*, i32** %550, align 8
  %552 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %553 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %552, i32 0, i32 8
  %554 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %553, i32 0, i32 1
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %40, align 4
  %557 = sext i32 %556 to i64
  %558 = call i32 @memcpy(i32* %551, i32* %555, i64 %557)
  store i32 1, i32* %19, align 4
  %559 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %560 = load i64, i64* %42, align 8
  %561 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @adns__update_expires(%struct.TYPE_48__* %559, i64 %560, i32 %562)
  br label %564

564:                                              ; preds = %533, %451
  br label %565

565:                                              ; preds = %564
  br label %566

566:                                              ; preds = %565
  br label %587

567:                                              ; preds = %400, %396
  %568 = load i32, i32* %32, align 4
  %569 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %570 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %569, i32 0, i32 10
  %571 = load %struct.TYPE_45__*, %struct.TYPE_45__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = load i32, i32* @adns__rrt_typemask, align 4
  %575 = and i32 %573, %574
  %576 = icmp eq i32 %568, %575
  br i1 %576, label %577, label %580

577:                                              ; preds = %567
  %578 = load i32, i32* %15, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %15, align 4
  br label %586

580:                                              ; preds = %567
  %581 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %582 = load i32, i32* %11, align 4
  %583 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %584 = load i32, i32* %32, align 4
  %585 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %581, i32 %582, %struct.TYPE_48__* %583, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %584)
  br label %586

586:                                              ; preds = %580, %577
  br label %587

587:                                              ; preds = %586, %566
  br label %588

588:                                              ; preds = %587, %395, %364
  %589 = load i32, i32* %16, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %16, align 4
  br label %339

591:                                              ; preds = %339
  %592 = load i32, i32* %29, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  br label %884

595:                                              ; preds = %591
  %596 = load i32, i32* %13, align 4
  store i32 %596, i32* %37, align 4
  %597 = load i32, i32* %15, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %722, label %599

599:                                              ; preds = %595
  store i32 0, i32* %17, align 4
  store i64 0, i64* %43, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %600

600:                                              ; preds = %645, %599
  %601 = load i32, i32* %16, align 4
  %602 = load i32, i32* %25, align 4
  %603 = icmp slt i32 %601, %602
  br i1 %603, label %604, label %648

604:                                              ; preds = %600
  %605 = load i32, i32* %13, align 4
  store i32 %605, i32* %14, align 4
  %606 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %607 = load i32, i32* %11, align 4
  %608 = load i32*, i32** %9, align 8
  %609 = load i32, i32* %10, align 4
  %610 = call i64 @adns__findrr(%struct.TYPE_48__* %606, i32 %607, i32* %608, i32 %609, i32* %13, i32* %32, i32* %33, i64* %42, i32* %34, i32* %35, i32* null)
  store i64 %610, i64* %48, align 8
  %611 = load i64, i64* %48, align 8
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %617

613:                                              ; preds = %604
  %614 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %615 = load i64, i64* %48, align 8
  %616 = call i32 @adns__query_fail(%struct.TYPE_48__* %614, i64 %615)
  br label %994

617:                                              ; preds = %604
  %618 = load i32, i32* %32, align 4
  %619 = icmp eq i32 %618, -1
  br i1 %619, label %620, label %621

620:                                              ; preds = %617
  br label %884

621:                                              ; preds = %617
  %622 = load i32, i32* %33, align 4
  %623 = load i32, i32* @DNS_CLASS_IN, align 4
  %624 = icmp ne i32 %622, %623
  br i1 %624, label %625, label %632

625:                                              ; preds = %621
  %626 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %627 = load i32, i32* %11, align 4
  %628 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %629 = load i32, i32* %33, align 4
  %630 = load i32, i32* @DNS_CLASS_IN, align 4
  %631 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %626, i32 %627, %struct.TYPE_48__* %628, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i32 %629, i32 %630)
  br label %645

632:                                              ; preds = %621
  %633 = load i32, i32* %32, align 4
  %634 = load i32, i32* @adns_r_soa_raw, align 4
  %635 = icmp eq i32 %633, %634
  br i1 %635, label %636, label %638

636:                                              ; preds = %632
  store i32 1, i32* %17, align 4
  %637 = load i64, i64* %42, align 8
  store i64 %637, i64* %43, align 8
  br label %648

638:                                              ; preds = %632
  %639 = load i32, i32* %32, align 4
  %640 = load i32, i32* @adns_r_ns_raw, align 4
  %641 = icmp eq i32 %639, %640
  br i1 %641, label %642, label %643

642:                                              ; preds = %638
  store i32 1, i32* %18, align 4
  br label %643

643:                                              ; preds = %642, %638
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644, %625
  %646 = load i32, i32* %16, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %16, align 4
  br label %600

648:                                              ; preds = %636, %600
  %649 = load i32, i32* %47, align 4
  %650 = icmp eq i32 %649, 130
  br i1 %650, label %651, label %674

651:                                              ; preds = %648
  %652 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %653 = load i64, i64* %43, align 8
  %654 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @adns__update_expires(%struct.TYPE_48__* %652, i64 %653, i32 %655)
  %657 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %658 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %657, i32 0, i32 4
  %659 = load i32, i32* %658, align 4
  %660 = load i32, i32* @adns_qf_search, align 4
  %661 = and i32 %659, %660
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %669

663:                                              ; preds = %651
  %664 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %665 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %666 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = call i32 @adns__search_next(%struct.TYPE_47__* %664, %struct.TYPE_48__* %665, i32 %667)
  br label %673

669:                                              ; preds = %651
  %670 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %671 = load i64, i64* @adns_s_nxdomain, align 8
  %672 = call i32 @adns__query_fail(%struct.TYPE_48__* %670, i64 %671)
  br label %673

673:                                              ; preds = %669, %663
  br label %994

674:                                              ; preds = %648
  %675 = load i32, i32* %17, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %680, label %677

677:                                              ; preds = %674
  %678 = load i32, i32* %18, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %689, label %680

680:                                              ; preds = %677, %674
  %681 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %682 = load i64, i64* %43, align 8
  %683 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = call i32 @adns__update_expires(%struct.TYPE_48__* %681, i64 %682, i32 %684)
  %686 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %687 = load i64, i64* @adns_s_nodata, align 8
  %688 = call i32 @adns__query_fail(%struct.TYPE_48__* %686, i64 %687)
  br label %994

689:                                              ; preds = %677
  %690 = load i32, i32* %19, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %693

692:                                              ; preds = %689
  br label %901

693:                                              ; preds = %689
  %694 = load i32, i32* %27, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %704, label %696

696:                                              ; preds = %693
  %697 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %698 = load i32, i32* %11, align 4
  %699 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %700 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %697, i32 %698, %struct.TYPE_48__* %699, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  %701 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %702 = load i64, i64* @adns_s_norecurse, align 8
  %703 = call i32 @adns__query_fail(%struct.TYPE_48__* %701, i64 %702)
  br label %721

704:                                              ; preds = %693
  %705 = load i32, i32* %28, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %712, label %707

707:                                              ; preds = %704
  %708 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %709 = load i32, i32* %11, align 4
  %710 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %711 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %708, i32 %709, %struct.TYPE_48__* %710, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  br label %717

712:                                              ; preds = %704
  %713 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %714 = load i32, i32* %11, align 4
  %715 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %716 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__debug(%struct.TYPE_47__* %713, i32 %714, %struct.TYPE_48__* %715, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  br label %717

717:                                              ; preds = %712, %707
  %718 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %719 = load i64, i64* @adns_s_invalidresponse, align 8
  %720 = call i32 @adns__query_fail(%struct.TYPE_48__* %718, i64 %719)
  br label %721

721:                                              ; preds = %717, %696
  br label %994

722:                                              ; preds = %595
  %723 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %724 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %725 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %724, i32 0, i32 10
  %726 = load %struct.TYPE_45__*, %struct.TYPE_45__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  %730 = load i32, i32* %15, align 4
  %731 = sext i32 %730 to i64
  %732 = mul i64 %729, %731
  %733 = call i32 @adns__alloc_interim(%struct.TYPE_48__* %723, i64 %732)
  %734 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %735 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %734, i32 0, i32 14
  %736 = load %struct.TYPE_41__*, %struct.TYPE_41__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %737, i32 0, i32 1
  store i32 %733, i32* %738, align 8
  %739 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %740 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %739, i32 0, i32 14
  %741 = load %struct.TYPE_41__*, %struct.TYPE_41__** %740, align 8
  %742 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %742, i32 0, i32 1
  %744 = load i32, i32* %743, align 8
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %750, label %746

746:                                              ; preds = %722
  %747 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %748 = load i64, i64* @adns_s_nomemory, align 8
  %749 = call i32 @adns__query_fail(%struct.TYPE_48__* %747, i64 %748)
  br label %994

750:                                              ; preds = %722
  %751 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %752 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %751, i32 0, i32 10
  %753 = load %struct.TYPE_45__*, %struct.TYPE_45__** %752, align 8
  store %struct.TYPE_45__* %753, %struct.TYPE_45__** %44, align 8
  %754 = load i32, i32* %36, align 4
  store i32 %754, i32* %13, align 4
  %755 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %756 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %755, i32 0, i32 14
  %757 = load %struct.TYPE_41__*, %struct.TYPE_41__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %758, i32 0, i32 0
  %760 = load i32*, i32** %759, align 8
  store i32* %760, i32** %51, align 8
  %761 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %762 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %761, i32 0, i32 12
  %763 = load i32, i32* %762, align 8
  %764 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 8
  store i32 %763, i32* %764, align 8
  %765 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %766 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 7
  store %struct.TYPE_48__* %765, %struct.TYPE_48__** %766, align 8
  %767 = load i32, i32* %11, align 4
  %768 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 0
  store i32 %767, i32* %768, align 8
  %769 = load i32*, i32** %9, align 8
  %770 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 6
  store i32* %769, i32** %770, align 8
  %771 = load i32, i32* %10, align 4
  %772 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 1
  store i32 %771, i32* %772, align 4
  %773 = load i32, i32* %37, align 4
  %774 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 2
  store i32 %773, i32* %774, align 8
  %775 = load i32, i32* %25, align 4
  %776 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 3
  store i32 %775, i32* %776, align 4
  %777 = load i32, i32* %26, align 4
  %778 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 4
  store i32 %777, i32* %778, align 8
  %779 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %52, i32 0, i32 5
  %780 = bitcast %struct.timeval* %779 to i8*
  %781 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %780, i8* align 4 %781, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %41, align 4
  br label %782

782:                                              ; preds = %853, %750
  %783 = load i32, i32* %16, align 4
  %784 = load i32, i32* %24, align 4
  %785 = icmp slt i32 %783, %784
  br i1 %785, label %786, label %856

786:                                              ; preds = %782
  %787 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %788 = load i32, i32* %11, align 4
  %789 = load i32*, i32** %9, align 8
  %790 = load i32, i32* %10, align 4
  %791 = call i64 @adns__findrr(%struct.TYPE_48__* %787, i32 %788, i32* %789, i32 %790, i32* %13, i32* %32, i32* %33, i64* %42, i32* %34, i32* %35, i32* %39)
  store i64 %791, i64* %48, align 8
  %792 = load i64, i64* %48, align 8
  %793 = icmp ne i64 %792, 0
  %794 = xor i1 %793, true
  %795 = zext i1 %794 to i32
  %796 = call i32 @assert(i32 %795)
  %797 = load i32, i32* %32, align 4
  %798 = icmp ne i32 %797, -1
  %799 = zext i1 %798 to i32
  %800 = call i32 @assert(i32 %799)
  %801 = load i32, i32* %33, align 4
  %802 = load i32, i32* @DNS_CLASS_IN, align 4
  %803 = icmp ne i32 %801, %802
  br i1 %803, label %817, label %804

804:                                              ; preds = %786
  %805 = load i32, i32* %32, align 4
  %806 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %807 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %806, i32 0, i32 10
  %808 = load %struct.TYPE_45__*, %struct.TYPE_45__** %807, align 8
  %809 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %808, i32 0, i32 0
  %810 = load i32, i32* %809, align 8
  %811 = load i32, i32* @adns__rrt_typemask, align 4
  %812 = and i32 %810, %811
  %813 = icmp ne i32 %805, %812
  br i1 %813, label %817, label %814

814:                                              ; preds = %804
  %815 = load i32, i32* %39, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %818, label %817

817:                                              ; preds = %814, %804, %786
  br label %853

818:                                              ; preds = %814
  %819 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %820 = load i64, i64* %42, align 8
  %821 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %822 = load i32, i32* %821, align 4
  %823 = call i32 @adns__update_expires(%struct.TYPE_48__* %819, i64 %820, i32 %822)
  %824 = load %struct.TYPE_45__*, %struct.TYPE_45__** %44, align 8
  %825 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %824, i32 0, i32 2
  %826 = load i64 (%struct.TYPE_46__*, i32, i32, i32*)*, i64 (%struct.TYPE_46__*, i32, i32, i32*)** %825, align 8
  %827 = load i32, i32* %35, align 4
  %828 = load i32, i32* %35, align 4
  %829 = load i32, i32* %34, align 4
  %830 = add nsw i32 %828, %829
  %831 = load i32*, i32** %51, align 8
  %832 = load i32, i32* %41, align 4
  %833 = load %struct.TYPE_45__*, %struct.TYPE_45__** %44, align 8
  %834 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %833, i32 0, i32 1
  %835 = load i32, i32* %834, align 4
  %836 = mul nsw i32 %832, %835
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i32, i32* %831, i64 %837
  %839 = call i64 %826(%struct.TYPE_46__* %52, i32 %827, i32 %830, i32* %838)
  store i64 %839, i64* %48, align 8
  %840 = load i64, i64* %48, align 8
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %842, label %846

842:                                              ; preds = %818
  %843 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %844 = load i64, i64* %48, align 8
  %845 = call i32 @adns__query_fail(%struct.TYPE_48__* %843, i64 %844)
  br label %994

846:                                              ; preds = %818
  %847 = load i32, i32* %35, align 4
  %848 = icmp eq i32 %847, -1
  br i1 %848, label %849, label %850

849:                                              ; preds = %846
  br label %884

850:                                              ; preds = %846
  %851 = load i32, i32* %41, align 4
  %852 = add nsw i32 %851, 1
  store i32 %852, i32* %41, align 4
  br label %853

853:                                              ; preds = %850, %817
  %854 = load i32, i32* %16, align 4
  %855 = add nsw i32 %854, 1
  store i32 %855, i32* %16, align 4
  br label %782

856:                                              ; preds = %782
  %857 = load i32, i32* %41, align 4
  %858 = load i32, i32* %15, align 4
  %859 = icmp eq i32 %857, %858
  %860 = zext i1 %859 to i32
  %861 = call i32 @assert(i32 %860)
  %862 = load i32, i32* %41, align 4
  %863 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %864 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %863, i32 0, i32 14
  %865 = load %struct.TYPE_41__*, %struct.TYPE_41__** %864, align 8
  %866 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %865, i32 0, i32 0
  store i32 %862, i32* %866, align 8
  %867 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %868 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %867, i32 0, i32 13
  %869 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %868, i32 0, i32 0
  %870 = load i64, i64* %869, align 8
  %871 = icmp ne i64 %870, 0
  br i1 %871, label %872, label %881

872:                                              ; preds = %856
  %873 = load i64, i64* @query_childw, align 8
  %874 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %875 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %874, i32 0, i32 2
  store i64 %873, i64* %875, align 8
  %876 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %877 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %876, i32 0, i32 1
  %878 = load i32, i32* %877, align 4
  %879 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %880 = call i32 @LIST_LINK_TAIL(i32 %878, %struct.TYPE_48__* %879)
  br label %994

881:                                              ; preds = %856
  %882 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %883 = call i32 @adns__query_done(%struct.TYPE_48__* %882)
  br label %994

884:                                              ; preds = %849, %620, %594, %499, %359
  %885 = load i32, i32* %29, align 4
  %886 = icmp ne i32 %885, 0
  br i1 %886, label %895, label %887

887:                                              ; preds = %884
  %888 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %889 = load i32, i32* %11, align 4
  %890 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %891 = call i32 (%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) @adns__diag(%struct.TYPE_47__* %888, i32 %889, %struct.TYPE_48__* %890, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %892 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %893 = load i64, i64* @adns_s_invalidresponse, align 8
  %894 = call i32 @adns__query_fail(%struct.TYPE_48__* %892, i64 %893)
  br label %994

895:                                              ; preds = %884
  %896 = load i32, i32* @adns_qf_usevc, align 4
  %897 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %898 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %897, i32 0, i32 4
  %899 = load i32, i32* %898, align 4
  %900 = or i32 %899, %896
  store i32 %900, i32* %898, align 4
  br label %901

901:                                              ; preds = %895, %692
  %902 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %903 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %902, i32 0, i32 11
  %904 = load i32*, i32** %903, align 8
  %905 = icmp ne i32* %904, null
  br i1 %905, label %906, label %975

906:                                              ; preds = %901
  %907 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %908 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %907, i32 0, i32 12
  %909 = load i32, i32* %908, align 8
  %910 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %911 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %910, i32 0, i32 8
  %912 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %913 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %912, i32 0, i32 0
  %914 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %915 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %914, i32 0, i32 11
  %916 = load i32*, i32** %915, align 8
  %917 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %918 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %917, i32 0, i32 6
  %919 = load i32, i32* %918, align 4
  %920 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %921 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %920, i32 0, i32 5
  %922 = load i32, i32* %921, align 8
  %923 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %924 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %923, i32 0, i32 10
  %925 = load %struct.TYPE_45__*, %struct.TYPE_45__** %924, align 8
  %926 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %925, i32 0, i32 0
  %927 = load i32, i32* %926, align 8
  %928 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %929 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %928, i32 0, i32 4
  %930 = load i32, i32* %929, align 4
  %931 = call i64 @adns__mkquery_frdgram(i32 %909, %struct.TYPE_44__* %911, i32* %913, i32* %916, i32 %919, i32 %922, i32 %927, i32 %930)
  store i64 %931, i64* %48, align 8
  %932 = load i64, i64* %48, align 8
  %933 = icmp ne i64 %932, 0
  br i1 %933, label %934, label %938

934:                                              ; preds = %906
  %935 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %936 = load i64, i64* %48, align 8
  %937 = call i32 @adns__query_fail(%struct.TYPE_48__* %935, i64 %936)
  br label %994

938:                                              ; preds = %906
  %939 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %940 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %939, i32 0, i32 9
  %941 = load i32*, i32** %940, align 8
  %942 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %943 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %942, i32 0, i32 8
  %944 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 8
  %946 = sext i32 %945 to i64
  %947 = call i32* @realloc(i32* %941, i64 %946)
  store i32* %947, i32** %50, align 8
  %948 = load i32*, i32** %50, align 8
  %949 = icmp ne i32* %948, null
  br i1 %949, label %954, label %950

950:                                              ; preds = %938
  %951 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %952 = load i64, i64* @adns_s_nomemory, align 8
  %953 = call i32 @adns__query_fail(%struct.TYPE_48__* %951, i64 %952)
  br label %994

954:                                              ; preds = %938
  %955 = load i32*, i32** %50, align 8
  %956 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %957 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %956, i32 0, i32 9
  store i32* %955, i32** %957, align 8
  %958 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %959 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %958, i32 0, i32 8
  %960 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %959, i32 0, i32 0
  %961 = load i32, i32* %960, align 8
  %962 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %963 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %962, i32 0, i32 1
  store i32 %961, i32* %963, align 4
  %964 = load i32*, i32** %50, align 8
  %965 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %966 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %965, i32 0, i32 8
  %967 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %966, i32 0, i32 1
  %968 = load i32*, i32** %967, align 8
  %969 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %970 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %969, i32 0, i32 8
  %971 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %970, i32 0, i32 0
  %972 = load i32, i32* %971, align 8
  %973 = sext i32 %972 to i64
  %974 = call i32 @memcpy(i32* %964, i32* %968, i64 %973)
  br label %975

975:                                              ; preds = %954, %901
  %976 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %977 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %976, i32 0, i32 2
  %978 = load i64, i64* %977, align 8
  %979 = load i64, i64* @query_tcpw, align 8
  %980 = icmp eq i64 %978, %979
  br i1 %980, label %981, label %985

981:                                              ; preds = %975
  %982 = load i64, i64* @query_tosend, align 8
  %983 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %984 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %983, i32 0, i32 2
  store i64 %982, i64* %984, align 8
  br label %985

985:                                              ; preds = %981, %975
  %986 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %987 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %986, i32 0, i32 7
  store i64 0, i64* %987, align 8
  %988 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %989 = call i32 @adns__reset_preserved(%struct.TYPE_48__* %988)
  %990 = load %struct.TYPE_48__*, %struct.TYPE_48__** %45, align 8
  %991 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %992 = load i32, i32* %991, align 4
  %993 = call i32 @adns__query_send(%struct.TYPE_48__* %990, i32 %992)
  br label %994

994:                                              ; preds = %985, %950, %934, %887, %881, %872, %842, %746, %721, %680, %673, %613, %529, %503, %426, %417, %352, %333, %292, %279, %267, %255, %242, %111, %104, %57
  ret void
}

declare dso_local i32 @adns__diag(%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) #1

declare dso_local i32 @GET_W(i32, i32) #1

declare dso_local i32 @GET_B(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @LIST_UNLINK(%struct.TYPE_48__*, %struct.TYPE_48__*) #1

declare dso_local i32 @adns__warn(%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) #1

declare dso_local i32 @adns__query_fail(%struct.TYPE_48__*, i64) #1

declare dso_local i32 @adns__debug(%struct.TYPE_47__*, i32, %struct.TYPE_48__*, i8*, ...) #1

declare dso_local i32 @adns__vbuf_init(%struct.TYPE_44__*) #1

declare dso_local i32 @adns__diag_domain(%struct.TYPE_47__*, i32, %struct.TYPE_48__*, %struct.TYPE_44__*, i32*, i32, i32) #1

declare dso_local i32 @adns__vbuf_free(%struct.TYPE_44__*) #1

declare dso_local i64 @adns__findrr(%struct.TYPE_48__*, i32, i32*, i32, i32*, i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i64 @adns__parse_domain(%struct.TYPE_47__*, i32, %struct.TYPE_48__*, %struct.TYPE_44__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @adns__alloc_preserved(%struct.TYPE_48__*, i64) #1

declare dso_local i32* @adns__alloc_mine(%struct.TYPE_48__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @adns__update_expires(%struct.TYPE_48__*, i64, i32) #1

declare dso_local i32 @adns__search_next(%struct.TYPE_47__*, %struct.TYPE_48__*, i32) #1

declare dso_local i32 @adns__alloc_interim(%struct.TYPE_48__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @adns__query_done(%struct.TYPE_48__*) #1

declare dso_local i64 @adns__mkquery_frdgram(i32, %struct.TYPE_44__*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @adns__reset_preserved(%struct.TYPE_48__*) #1

declare dso_local i32 @adns__query_send(%struct.TYPE_48__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
