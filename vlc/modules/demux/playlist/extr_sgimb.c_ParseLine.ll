; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_sgimb.c_ParseLine.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_sgimb.c_ParseLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"rtsp://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Stream=\22\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"xdma://\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"sgiNameServerHost=\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sgiMovieName=\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"sgiUserAccount=\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sgiUserPassword=\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sgiShowingName=\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sgiFormatName=\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"MPEG-4\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"sgiMulticastAddress=\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"sgiMulticastPort=\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"sgiPacketSize=\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"sgiDuration=\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sgiRtspPort=\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"sgiSid=\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"DeliveryService=cds\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @ParseLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseLine(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 13
  br label %33

33:                                               ; preds = %28, %23, %18, %13
  %34 = phi i1 [ true, %23 ], [ true, %18 ], [ true, %13 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %13

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strncasecmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 13
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @strdup(i8* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 13
  store i8* %48, i8** %50, align 8
  br label %273

51:                                               ; preds = %38
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strncasecmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @strrchr(i8* %58, i8 signext 34)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %275

63:                                               ; preds = %55
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strncasecmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 114, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 116, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8 115, i8* %75, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  store i8 112, i8* %77, align 1
  br label %78

78:                                               ; preds = %69, %63
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 13
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @strdup(i8* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 13
  store i8* %84, i8** %86, align 8
  br label %272

87:                                               ; preds = %51
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @strncasecmp(i8* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 18)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 18
  store i8* %93, i8** %6, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 12
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 12
  store i8* %99, i8** %101, align 8
  br label %271

102:                                              ; preds = %87
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @strncasecmp(i8* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 13
  store i8* %108, i8** %6, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 11
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i8*, i8** %6, align 8
  %114 = call i8* @strdup(i8* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  br label %270

117:                                              ; preds = %102
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @strncasecmp(i8* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 15
  store i8* %123, i8** %6, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 10
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %6, align 8
  %129 = call i8* @strdup(i8* %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 10
  store i8* %129, i8** %131, align 8
  br label %269

132:                                              ; preds = %117
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strncasecmp(i8* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 16
  store i8* %138, i8** %6, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 9
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %6, align 8
  %144 = call i8* @strdup(i8* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 9
  store i8* %144, i8** %146, align 8
  br label %268

147:                                              ; preds = %132
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @strncasecmp(i8* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 15)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 15
  store i8* %153, i8** %6, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %6, align 8
  %159 = call i8* @strdup(i8* %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 8
  store i8* %159, i8** %161, align 8
  br label %267

162:                                              ; preds = %147
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @strncasecmp(i8* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 14
  store i8* %168, i8** %6, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i32* @strcasestr(i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  br label %175

175:                                              ; preds = %172, %166
  br label %266

176:                                              ; preds = %162
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @strncasecmp(i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 20)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 20
  store i8* %182, i8** %6, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 7
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %6, align 8
  %188 = call i8* @strdup(i8* %187)
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 7
  store i8* %188, i8** %190, align 8
  br label %265

191:                                              ; preds = %176
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @strncasecmp(i8* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 17)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 17
  store i8* %197, i8** %6, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = call i64 @strtol(i8* %198, i32* null, i32 0)
  %200 = trunc i64 %199 to i32
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %264

203:                                              ; preds = %191
  %204 = load i8*, i8** %6, align 8
  %205 = call i32 @strncasecmp(i8* %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 14)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %203
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 14
  store i8* %209, i8** %6, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i64 @strtol(i8* %210, i32* null, i32 0)
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %263

215:                                              ; preds = %203
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @strncasecmp(i8* %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 12)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 12
  store i8* %221, i8** %6, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = call i64 @strtol(i8* %222, i32* null, i32 0)
  %224 = call i32 @VLC_TICK_FROM_US(i64 %223)
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 8
  br label %262

227:                                              ; preds = %215
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @strncasecmp(i8* %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 12)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %227
  %232 = load i8*, i8** %6, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 12
  store i8* %233, i8** %6, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = call i64 @strtol(i8* %234, i32* null, i32 0)
  %236 = trunc i64 %235 to i32
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  br label %261

239:                                              ; preds = %227
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @strncasecmp(i8* %240, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 7)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = load i8*, i8** %6, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 7
  store i8* %245, i8** %6, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = call i64 @strtol(i8* %246, i32* null, i32 0)
  %248 = trunc i64 %247 to i32
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  br label %260

251:                                              ; preds = %239
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 @strncasecmp(i8* %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 19)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 5
  store i32 1, i32* %257, align 4
  br label %259

258:                                              ; preds = %251
  store i32 0, i32* %3, align 4
  br label %275

259:                                              ; preds = %255
  br label %260

260:                                              ; preds = %259, %243
  br label %261

261:                                              ; preds = %260, %231
  br label %262

262:                                              ; preds = %261, %219
  br label %263

263:                                              ; preds = %262, %207
  br label %264

264:                                              ; preds = %263, %195
  br label %265

265:                                              ; preds = %264, %180
  br label %266

266:                                              ; preds = %265, %175
  br label %267

267:                                              ; preds = %266, %151
  br label %268

268:                                              ; preds = %267, %136
  br label %269

269:                                              ; preds = %268, %121
  br label %270

270:                                              ; preds = %269, %106
  br label %271

271:                                              ; preds = %270, %91
  br label %272

272:                                              ; preds = %271, %78
  br label %273

273:                                              ; preds = %272, %42
  %274 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %273, %258, %62
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @VLC_TICK_FROM_US(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
