; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_connect.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.conn = type { i64, i64, i32, i32, i32, i32, i32, i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@NC_ERROR = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"connect to server '%.*s'\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"socket for server '%.*s' failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"set nonblock on s %d for server '%.*s' failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"set tcpnodelay on s %d for server '%.*s' failed, ignored: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"event add conn s %d for server '%.*s' failed: %s\00", align 1
@EINPROGRESS = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"connecting on s %d to server '%.*s'\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"connect on s %d to server '%.*s' failed: %s\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"connected on s %d to server '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @server_connect(%struct.context* %0, %struct.server* %1, %struct.conn* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.server*, align 8
  %7 = alloca %struct.conn*, align 8
  %8 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.server* %1, %struct.server** %6, align 8
  store %struct.conn* %2, %struct.conn** %7, align 8
  %9 = load %struct.conn*, %struct.conn** %7, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.conn*, %struct.conn** %7, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.conn*, %struct.conn** %7, align 8
  %24 = getelementptr inbounds %struct.conn, %struct.conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load %struct.conn*, %struct.conn** %7, align 8
  %29 = getelementptr inbounds %struct.conn, %struct.conn* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.conn*, %struct.conn** %7, align 8
  %34 = getelementptr inbounds %struct.conn, %struct.conn* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.conn*, %struct.conn** %7, align 8
  %42 = getelementptr inbounds %struct.conn, %struct.conn* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* @errno, align 8
  %44 = load i64, i64* @NC_ERROR, align 8
  store i64 %44, i64* %4, align 8
  br label %274

45:                                               ; preds = %19
  %46 = load %struct.conn*, %struct.conn** %7, align 8
  %47 = getelementptr inbounds %struct.conn, %struct.conn* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @NC_OK, align 8
  store i64 %51, i64* %4, align 8
  br label %274

52:                                               ; preds = %45
  %53 = load i32, i32* @LOG_VVERB, align 4
  %54 = load %struct.server*, %struct.server** %6, align 8
  %55 = getelementptr inbounds %struct.server, %struct.server* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.server*, %struct.server** %6, align 8
  %60 = getelementptr inbounds %struct.server, %struct.server* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, i64, i8*, ...) @log_debug(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %58, i8* %62)
  %64 = load %struct.conn*, %struct.conn** %7, align 8
  %65 = getelementptr inbounds %struct.conn, %struct.conn* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SOCK_STREAM, align 4
  %68 = call i64 @socket(i32 %66, i32 %67, i32 0)
  %69 = load %struct.conn*, %struct.conn** %7, align 8
  %70 = getelementptr inbounds %struct.conn, %struct.conn* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.conn*, %struct.conn** %7, align 8
  %72 = getelementptr inbounds %struct.conn, %struct.conn* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %52
  %76 = load %struct.server*, %struct.server** %6, align 8
  %77 = getelementptr inbounds %struct.server, %struct.server* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.server*, %struct.server** %6, align 8
  %82 = getelementptr inbounds %struct.server, %struct.server* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* @errno, align 8
  %86 = call i32 @strerror(i64 %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 (i8*, i64, i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %80, i8* %84, i8* %88)
  %90 = load i64, i64* @NC_ERROR, align 8
  store i64 %90, i64* %8, align 8
  br label %269

91:                                               ; preds = %52
  %92 = load %struct.conn*, %struct.conn** %7, align 8
  %93 = getelementptr inbounds %struct.conn, %struct.conn* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @nc_set_nonblocking(i64 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @NC_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %91
  %100 = load %struct.conn*, %struct.conn** %7, align 8
  %101 = getelementptr inbounds %struct.conn, %struct.conn* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.server*, %struct.server** %6, align 8
  %104 = getelementptr inbounds %struct.server, %struct.server* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.server*, %struct.server** %6, align 8
  %110 = getelementptr inbounds %struct.server, %struct.server* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @errno, align 8
  %114 = call i32 @strerror(i64 %113)
  %115 = call i32 (i8*, i64, i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %102, i8* %108, i8* %112, i32 %114)
  br label %269

116:                                              ; preds = %91
  %117 = load %struct.server*, %struct.server** %6, align 8
  %118 = getelementptr inbounds %struct.server, %struct.server* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 47
  br i1 %124, label %125, label %149

125:                                              ; preds = %116
  %126 = load %struct.conn*, %struct.conn** %7, align 8
  %127 = getelementptr inbounds %struct.conn, %struct.conn* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @nc_set_tcpnodelay(i64 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @NC_OK, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = load %struct.conn*, %struct.conn** %7, align 8
  %135 = getelementptr inbounds %struct.conn, %struct.conn* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.server*, %struct.server** %6, align 8
  %138 = getelementptr inbounds %struct.server, %struct.server* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.server*, %struct.server** %6, align 8
  %142 = getelementptr inbounds %struct.server, %struct.server* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* @errno, align 8
  %146 = call i32 @strerror(i64 %145)
  %147 = call i32 @log_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %136, i32 %140, i8* %144, i32 %146)
  br label %148

148:                                              ; preds = %133, %125
  br label %149

149:                                              ; preds = %148, %116
  %150 = load %struct.context*, %struct.context** %5, align 8
  %151 = getelementptr inbounds %struct.context, %struct.context* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.conn*, %struct.conn** %7, align 8
  %154 = call i64 @event_add_conn(i32 %152, %struct.conn* %153)
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @NC_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %149
  %159 = load %struct.conn*, %struct.conn** %7, align 8
  %160 = getelementptr inbounds %struct.conn, %struct.conn* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.server*, %struct.server** %6, align 8
  %163 = getelementptr inbounds %struct.server, %struct.server* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.server*, %struct.server** %6, align 8
  %169 = getelementptr inbounds %struct.server, %struct.server* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i64, i64* @errno, align 8
  %173 = call i32 @strerror(i64 %172)
  %174 = call i32 (i8*, i64, i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %161, i8* %167, i8* %171, i32 %173)
  br label %269

175:                                              ; preds = %149
  %176 = load %struct.conn*, %struct.conn** %7, align 8
  %177 = getelementptr inbounds %struct.conn, %struct.conn* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = load %struct.conn*, %struct.conn** %7, align 8
  %182 = getelementptr inbounds %struct.conn, %struct.conn* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br label %186

186:                                              ; preds = %180, %175
  %187 = phi i1 [ false, %175 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @ASSERT(i32 %188)
  %190 = load %struct.conn*, %struct.conn** %7, align 8
  %191 = getelementptr inbounds %struct.conn, %struct.conn* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.conn*, %struct.conn** %7, align 8
  %194 = getelementptr inbounds %struct.conn, %struct.conn* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.conn*, %struct.conn** %7, align 8
  %197 = getelementptr inbounds %struct.conn, %struct.conn* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @connect(i64 %192, i32 %195, i32 %198)
  store i64 %199, i64* %8, align 8
  %200 = load i64, i64* %8, align 8
  %201 = load i64, i64* @NC_OK, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %243

203:                                              ; preds = %186
  %204 = load i64, i64* @errno, align 8
  %205 = load i64, i64* @EINPROGRESS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = load %struct.conn*, %struct.conn** %7, align 8
  %209 = getelementptr inbounds %struct.conn, %struct.conn* %208, i32 0, i32 2
  store i32 1, i32* %209, align 8
  %210 = load i32, i32* @LOG_DEBUG, align 4
  %211 = load %struct.conn*, %struct.conn** %7, align 8
  %212 = getelementptr inbounds %struct.conn, %struct.conn* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.server*, %struct.server** %6, align 8
  %215 = getelementptr inbounds %struct.server, %struct.server* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.server*, %struct.server** %6, align 8
  %221 = getelementptr inbounds %struct.server, %struct.server* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i32, i8*, i64, i8*, ...) @log_debug(i32 %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %213, i8* %219, i8* %223)
  %225 = load i64, i64* @NC_OK, align 8
  store i64 %225, i64* %4, align 8
  br label %274

226:                                              ; preds = %203
  %227 = load %struct.conn*, %struct.conn** %7, align 8
  %228 = getelementptr inbounds %struct.conn, %struct.conn* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.server*, %struct.server** %6, align 8
  %231 = getelementptr inbounds %struct.server, %struct.server* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = load %struct.server*, %struct.server** %6, align 8
  %237 = getelementptr inbounds %struct.server, %struct.server* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i64, i64* @errno, align 8
  %241 = call i32 @strerror(i64 %240)
  %242 = call i32 (i8*, i64, i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %229, i8* %235, i8* %239, i32 %241)
  br label %269

243:                                              ; preds = %186
  %244 = load %struct.conn*, %struct.conn** %7, align 8
  %245 = getelementptr inbounds %struct.conn, %struct.conn* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @ASSERT(i32 %249)
  %251 = load %struct.conn*, %struct.conn** %7, align 8
  %252 = getelementptr inbounds %struct.conn, %struct.conn* %251, i32 0, i32 3
  store i32 1, i32* %252, align 4
  %253 = load i32, i32* @LOG_INFO, align 4
  %254 = load %struct.conn*, %struct.conn** %7, align 8
  %255 = getelementptr inbounds %struct.conn, %struct.conn* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.server*, %struct.server** %6, align 8
  %258 = getelementptr inbounds %struct.server, %struct.server* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = load %struct.server*, %struct.server** %6, align 8
  %264 = getelementptr inbounds %struct.server, %struct.server* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 (i32, i8*, i64, i8*, ...) @log_debug(i32 %253, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %256, i8* %262, i8* %266)
  %268 = load i64, i64* @NC_OK, align 8
  store i64 %268, i64* %4, align 8
  br label %274

269:                                              ; preds = %226, %158, %99, %75
  %270 = load i64, i64* @errno, align 8
  %271 = load %struct.conn*, %struct.conn** %7, align 8
  %272 = getelementptr inbounds %struct.conn, %struct.conn* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* %8, align 8
  store i64 %273, i64* %4, align 8
  br label %274

274:                                              ; preds = %269, %243, %207, %50, %37
  %275 = load i64, i64* %4, align 8
  ret i64 %275
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @log_debug(i32, i8*, i64, i8*, ...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @log_error(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @nc_set_nonblocking(i64) #1

declare dso_local i64 @nc_set_tcpnodelay(i64) #1

declare dso_local i32 @log_warn(i8*, i64, i32, i8*, i32) #1

declare dso_local i64 @event_add_conn(i32, %struct.conn*) #1

declare dso_local i64 @connect(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
