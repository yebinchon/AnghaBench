; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliFormatReplyTTY.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliFormatReplyTTY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, %struct.TYPE_3__**, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(error) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"(integer) %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"(double) %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(true)\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"(false)\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"(empty array)\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(empty hash)\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"(empty set)\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"(empty aggregate type)\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%%s%%%ud%c \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Unknown reply type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @cliFormatReplyTTY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cliFormatReplyTTY(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = call i8* (...) @sdsempty()
  store i8* %14, i8** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %254 [
    i32 135, label %18
    i32 130, label %24
    i32 134, label %32
    i32 136, label %40
    i32 129, label %46
    i32 128, label %46
    i32 132, label %74
    i32 137, label %77
    i32 138, label %86
    i32 133, label %86
    i32 131, label %86
  ]

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i8* %23, i8** %5, align 8
  br label %261

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @sdscat(i8* %25, i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @sdscat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  br label %261

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i8* %39, i8** %5, align 8
  br label %261

40:                                               ; preds = %2
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i8* %45, i8** %5, align 8
  br label %261

46:                                               ; preds = %2, %2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @sdscatrepr(i8* %52, i8* %55, i32 %58)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @sdscat(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %61, i8** %5, align 8
  br label %73

62:                                               ; preds = %46
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @sdscatlen(i8* %63, i8* %66, i32 %69)
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @sdscat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %62, %51
  br label %261

74:                                               ; preds = %2
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @sdscat(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %76, i8** %5, align 8
  br label %261

77:                                               ; preds = %2
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %85 = call i8* @sdscat(i8* %78, i8* %84)
  store i8* %85, i8** %5, align 8
  br label %261

86:                                               ; preds = %2, %2, %2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 138
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @sdscat(i8* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %98, i8** %5, align 8
  br label %120

99:                                               ; preds = %91
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 133
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = call i8* @sdscat(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %106, i8** %5, align 8
  br label %119

107:                                              ; preds = %99
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 131
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = call i8* @sdscat(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i8* %114, i8** %5, align 8
  br label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %5, align 8
  %117 = call i8* @sdscat(i8* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %96
  br label %253

121:                                              ; preds = %86
  store i32 0, i32* %7, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %6, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 133
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* %6, align 4
  %131 = udiv i32 %130, 2
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %121
  br label %133

133:                                              ; preds = %138, %132
  %134 = load i32, i32* %7, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = udiv i32 %136, 10
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %133, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 2
  %145 = call i32 @memset(i8* %142, i8 signext 32, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 2
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %4, align 8
  %151 = call i8* @sdsnew(i8* %150)
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %153 = call i8* @sdscat(i8* %151, i8* %152)
  store i8* %153, i8** %10, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 131
  br i1 %157, label %158, label %159

158:                                              ; preds = %141
  store i8 126, i8* %12, align 1
  br label %167

159:                                              ; preds = %141
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 133
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i8 35, i8* %12, align 1
  br label %166

165:                                              ; preds = %159
  store i8 41, i8* %12, align 1
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %169 = load i32, i32* %7, align 4
  %170 = load i8, i8* %12, align 1
  %171 = call i32 @snprintf(i8* %168, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %169, i8 signext %170)
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %247, %167
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %250

178:                                              ; preds = %172
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 133
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %6, align 4
  %185 = udiv i32 %184, 2
  br label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i32 [ %185, %183 ], [ %187, %186 ]
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %13, align 4
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %199

197:                                              ; preds = %188
  %198 = load i8*, i8** %4, align 8
  br label %199

199:                                              ; preds = %197, %196
  %200 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %196 ], [ %198, %197 ]
  %201 = load i32, i32* %13, align 4
  %202 = call i8* (i8*, i8*, i8*, ...) @sdscatprintf(i8* %192, i8* %193, i8* %200, i32 %201)
  store i8* %202, i8** %5, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %205, i64 %207
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = call i8* @cliFormatReplyTTY(%struct.TYPE_3__* %209, i8* %210)
  store i8* %211, i8** %11, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 @sdslen(i8* %214)
  %216 = call i8* @sdscatlen(i8* %212, i8* %213, i32 %215)
  store i8* %216, i8** %5, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @sdsfree(i8* %217)
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 133
  br i1 %222, label %223, label %246

223:                                              ; preds = %199
  %224 = load i32, i32* %6, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = load i8*, i8** %5, align 8
  %227 = call i32 @sdsrange(i8* %226, i32 0, i32 -2)
  %228 = load i8*, i8** %5, align 8
  %229 = call i8* @sdscat(i8* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i8* %229, i8** %5, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %232, i64 %234
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = call i8* @cliFormatReplyTTY(%struct.TYPE_3__* %236, i8* %237)
  store i8* %238, i8** %11, align 8
  %239 = load i8*, i8** %5, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i8*, i8** %11, align 8
  %242 = call i32 @sdslen(i8* %241)
  %243 = call i8* @sdscatlen(i8* %239, i8* %240, i32 %242)
  store i8* %243, i8** %5, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = call i32 @sdsfree(i8* %244)
  br label %246

246:                                              ; preds = %223, %199
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %6, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %6, align 4
  br label %172

250:                                              ; preds = %172
  %251 = load i8*, i8** %10, align 8
  %252 = call i32 @sdsfree(i8* %251)
  br label %253

253:                                              ; preds = %250, %120
  br label %261

254:                                              ; preds = %2
  %255 = load i32, i32* @stderr, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @fprintf(i32 %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %258)
  %260 = call i32 @exit(i32 1) #3
  unreachable

261:                                              ; preds = %253, %77, %74, %73, %40, %32, %24, %18
  %262 = load i8*, i8** %5, align 8
  ret i8* %262
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @sdscatrepr(i8*, i8*, i32) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8 signext) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
