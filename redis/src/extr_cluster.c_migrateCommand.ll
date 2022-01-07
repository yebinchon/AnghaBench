; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, i64 }
%struct.TYPE_51__ = type { i32, %struct.TYPE_48__**, i32 }
%struct.TYPE_48__ = type { i8* }
%struct.TYPE_50__ = type { i64, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@shared = common dso_local global %struct.TYPE_44__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"When using MIGRATE KEYS option, the key argument must be set to the empty string\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"+NOKEY\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@server = common dso_local global %struct.TYPE_45__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"RESTORE-ASKING\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"RESTORE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"Target instance replied with error: %s\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"-IOERR error or timeout %s to target instance\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"reading\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migrateCommand(%struct.TYPE_51__* %0) #0 {
  %2 = alloca %struct.TYPE_51__*, align 8
  %3 = alloca %struct.TYPE_50__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_48__**, align 8
  %11 = alloca %struct.TYPE_48__**, align 8
  %12 = alloca %struct.TYPE_48__**, align 8
  %13 = alloca %struct.TYPE_49__, align 8
  %14 = alloca %struct.TYPE_49__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca [1024 x i8], align 16
  %31 = alloca [1024 x i8], align 16
  %32 = alloca [1024 x i8], align 16
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store %struct.TYPE_48__** null, %struct.TYPE_48__*** %10, align 8
  store %struct.TYPE_48__** null, %struct.TYPE_48__*** %11, align 8
  store %struct.TYPE_48__** null, %struct.TYPE_48__*** %12, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 3, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 6, i32* %6, align 4
  br label %37

37:                                               ; preds = %148, %1
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %151

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %44, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %53, i64 %55
  %57 = load %struct.TYPE_48__*, %struct.TYPE_48__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %147

63:                                               ; preds = %43
  %64 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %66, i64 %68
  %70 = load %struct.TYPE_48__*, %struct.TYPE_48__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcasecmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %146

76:                                               ; preds = %63
  %77 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %79, i64 %81
  %83 = load %struct.TYPE_48__*, %struct.TYPE_48__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 1), align 4
  %94 = call i32 @addReply(%struct.TYPE_51__* %92, i32 %93)
  br label %743

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %100, i64 %102
  %104 = load %struct.TYPE_48__*, %struct.TYPE_48__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %7, align 8
  br label %145

107:                                              ; preds = %76
  %108 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %110, i64 %112
  %114 = load %struct.TYPE_48__*, %struct.TYPE_48__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcasecmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %141, label %119

119:                                              ; preds = %107
  %120 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %122, i64 3
  %124 = load %struct.TYPE_48__*, %struct.TYPE_48__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @sdslen(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %131 = call i32 @addReplyError(%struct.TYPE_51__* %130, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  br label %743

132:                                              ; preds = %119
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  %135 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %151

141:                                              ; preds = %107
  %142 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 1), align 4
  %144 = call i32 @addReply(%struct.TYPE_51__* %142, i32 %143)
  br label %743

145:                                              ; preds = %95
  br label %146

146:                                              ; preds = %145, %75
  br label %147

147:                                              ; preds = %146, %62
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %37

151:                                              ; preds = %132, %37
  %152 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %153 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %155, i64 5
  %157 = load %struct.TYPE_48__*, %struct.TYPE_48__** %156, align 8
  %158 = call i64 @getLongFromObjectOrReply(%struct.TYPE_51__* %152, %struct.TYPE_48__* %157, i64* %8, i32* null)
  %159 = load i64, i64* @C_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %151
  %162 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %163 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %165, i64 4
  %167 = load %struct.TYPE_48__*, %struct.TYPE_48__** %166, align 8
  %168 = call i64 @getLongFromObjectOrReply(%struct.TYPE_51__* %162, %struct.TYPE_48__* %167, i64* %9, i32* null)
  %169 = load i64, i64* @C_OK, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161, %151
  br label %743

172:                                              ; preds = %161
  %173 = load i64, i64* %8, align 8
  %174 = icmp sle i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i64 1000, i64* %8, align 8
  br label %176

176:                                              ; preds = %175, %172
  %177 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call %struct.TYPE_48__** @zrealloc(%struct.TYPE_48__** %177, i32 %181)
  store %struct.TYPE_48__** %182, %struct.TYPE_48__*** %10, align 8
  %183 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 8, %185
  %187 = trunc i64 %186 to i32
  %188 = call %struct.TYPE_48__** @zrealloc(%struct.TYPE_48__** %183, i32 %187)
  store %struct.TYPE_48__** %188, %struct.TYPE_48__*** %11, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %229, %176
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %19, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %189
  %194 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %199, i64 %203
  %205 = load %struct.TYPE_48__*, %struct.TYPE_48__** %204, align 8
  %206 = call %struct.TYPE_48__* @lookupKeyRead(i32 %196, %struct.TYPE_48__* %205)
  %207 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %208 = load i32, i32* %21, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %207, i64 %209
  store %struct.TYPE_48__* %206, %struct.TYPE_48__** %210, align 8
  %211 = icmp ne %struct.TYPE_48__* %206, null
  br i1 %211, label %212, label %228

212:                                              ; preds = %193
  %213 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %214, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %215, i64 %219
  %221 = load %struct.TYPE_48__*, %struct.TYPE_48__** %220, align 8
  %222 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %223 = load i32, i32* %21, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %222, i64 %224
  store %struct.TYPE_48__* %221, %struct.TYPE_48__** %225, align 8
  %226 = load i32, i32* %21, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %21, align 4
  br label %228

228:                                              ; preds = %212, %193
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %189

232:                                              ; preds = %189
  %233 = load i32, i32* %21, align 4
  store i32 %233, i32* %19, align 4
  %234 = load i32, i32* %19, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %238 = call i32 @zfree(%struct.TYPE_48__** %237)
  %239 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %240 = call i32 @zfree(%struct.TYPE_48__** %239)
  %241 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %242 = call i32 @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %243 = call i32 @addReplySds(%struct.TYPE_51__* %241, i32 %242)
  br label %743

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %729, %244
  store i32 0, i32* %16, align 4
  %246 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %249, i64 1
  %251 = load %struct.TYPE_48__*, %struct.TYPE_48__** %250, align 8
  %252 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %254, i64 2
  %256 = load %struct.TYPE_48__*, %struct.TYPE_48__** %255, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call %struct.TYPE_50__* @migrateGetSocket(%struct.TYPE_51__* %246, %struct.TYPE_48__* %251, %struct.TYPE_48__* %256, i64 %257)
  store %struct.TYPE_50__* %258, %struct.TYPE_50__** %3, align 8
  %259 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %260 = icmp eq %struct.TYPE_50__* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %245
  %262 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %263 = call i32 @zfree(%struct.TYPE_48__** %262)
  %264 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %265 = call i32 @zfree(%struct.TYPE_48__** %264)
  br label %743

266:                                              ; preds = %245
  %267 = call i32 (...) @sdsempty()
  %268 = call i32 @rioInitWithBuffer(%struct.TYPE_49__* %13, i32 %267)
  %269 = load i8*, i8** %7, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %285

271:                                              ; preds = %266
  %272 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %273 = call i32 @rioWriteBulkCount(%struct.TYPE_49__* %13, i8 signext 42, i32 2)
  %274 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %272, i32* null, i32 %273)
  %275 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %276 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %277 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %275, i32* null, i32 %276)
  %278 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %279 = load i8*, i8** %7, align 8
  %280 = load i8*, i8** %7, align 8
  %281 = call i64 @sdslen(i8* %280)
  %282 = trunc i64 %281 to i32
  %283 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* %279, i32 %282)
  %284 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %278, i32* null, i32 %283)
  br label %285

285:                                              ; preds = %271, %266
  %286 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %9, align 8
  %290 = icmp ne i64 %288, %289
  %291 = zext i1 %290 to i32
  store i32 %291, i32* %22, align 4
  %292 = load i32, i32* %22, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %285
  %295 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %296 = call i32 @rioWriteBulkCount(%struct.TYPE_49__* %13, i8 signext 42, i32 2)
  %297 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %295, i32* null, i32 %296)
  %298 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %299 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %300 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %298, i32* null, i32 %299)
  %301 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %302 = load i64, i64* %9, align 8
  %303 = call i32 @rioWriteBulkLongLong(%struct.TYPE_49__* %13, i64 %302)
  %304 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %301, i32* null, i32 %303)
  br label %305

305:                                              ; preds = %294, %285
  store i32 0, i32* %23, align 4
  store i32 0, i32* %6, align 4
  br label %306

306:                                              ; preds = %430, %305
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %19, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %433

310:                                              ; preds = %306
  store i64 0, i64* %24, align 8
  %311 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %314, i64 %316
  %318 = load %struct.TYPE_48__*, %struct.TYPE_48__** %317, align 8
  %319 = call i64 @getExpire(i32 %313, %struct.TYPE_48__* %318)
  store i64 %319, i64* %25, align 8
  %320 = load i64, i64* %25, align 8
  %321 = icmp ne i64 %320, -1
  br i1 %321, label %322, label %334

322:                                              ; preds = %310
  %323 = load i64, i64* %25, align 8
  %324 = call i64 (...) @mstime()
  %325 = sub nsw i64 %323, %324
  store i64 %325, i64* %24, align 8
  %326 = load i64, i64* %24, align 8
  %327 = icmp slt i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %430

329:                                              ; preds = %322
  %330 = load i64, i64* %24, align 8
  %331 = icmp slt i64 %330, 1
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i64 1, i64* %24, align 8
  br label %333

333:                                              ; preds = %332, %329
  br label %334

334:                                              ; preds = %333, %310
  %335 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %335, i64 %337
  %339 = load %struct.TYPE_48__*, %struct.TYPE_48__** %338, align 8
  %340 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %341 = load i32, i32* %23, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %23, align 4
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %340, i64 %343
  store %struct.TYPE_48__* %339, %struct.TYPE_48__** %344, align 8
  %345 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %346 = load i32, i32* %5, align 4
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 5, i32 4
  %350 = call i32 @rioWriteBulkCount(%struct.TYPE_49__* %13, i8 signext 42, i32 %349)
  %351 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %345, i32* null, i32 %350)
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @server, i32 0, i32 1), align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %334
  %355 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %356 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 14)
  %357 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %355, i32* null, i32 %356)
  br label %362

358:                                              ; preds = %334
  %359 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %360 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %361 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %359, i32* null, i32 %360)
  br label %362

362:                                              ; preds = %358, %354
  %363 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %364 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %364, i64 %366
  %368 = load %struct.TYPE_48__*, %struct.TYPE_48__** %367, align 8
  %369 = call i32 @sdsEncodedObject(%struct.TYPE_48__* %368)
  %370 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %363, i32* null, i32 %369)
  %371 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %372 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %372, i64 %374
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %379, i64 %381
  %383 = load %struct.TYPE_48__*, %struct.TYPE_48__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = call i64 @sdslen(i8* %385)
  %387 = trunc i64 %386 to i32
  %388 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* %378, i32 %387)
  %389 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %371, i32* null, i32 %388)
  %390 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %391 = load i64, i64* %24, align 8
  %392 = call i32 @rioWriteBulkLongLong(%struct.TYPE_49__* %13, i64 %391)
  %393 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %390, i32* null, i32 %392)
  %394 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %394, i64 %396
  %398 = load %struct.TYPE_48__*, %struct.TYPE_48__** %397, align 8
  %399 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %399, i64 %401
  %403 = load %struct.TYPE_48__*, %struct.TYPE_48__** %402, align 8
  %404 = call i32 @createDumpPayload(%struct.TYPE_49__* %14, %struct.TYPE_48__* %398, %struct.TYPE_48__* %403)
  %405 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %14, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %14, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %411, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  %414 = call i64 @sdslen(i8* %413)
  %415 = trunc i64 %414 to i32
  %416 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* %409, i32 %415)
  %417 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %405, i32* null, i32 %416)
  %418 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %14, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @sdsfree(i8* %421)
  %423 = load i32, i32* %5, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %362
  %426 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %427 = call i32 @rioWriteBulkString(%struct.TYPE_49__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %428 = call i32 @serverAssertWithInfo(%struct.TYPE_51__* %426, i32* null, i32 %427)
  br label %429

429:                                              ; preds = %425, %362
  br label %430

430:                                              ; preds = %429, %328
  %431 = load i32, i32* %6, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %6, align 4
  br label %306

433:                                              ; preds = %306
  %434 = load i32, i32* %23, align 4
  store i32 %434, i32* %19, align 4
  store i64 0, i64* @errno, align 8
  %435 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 8
  store i8* %438, i8** %26, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %29, align 4
  br label %439

439:                                              ; preds = %467, %433
  %440 = load i8*, i8** %26, align 8
  %441 = call i64 @sdslen(i8* %440)
  %442 = load i64, i64* %27, align 8
  %443 = sub i64 %441, %442
  store i64 %443, i64* %28, align 8
  %444 = icmp ugt i64 %443, 0
  br i1 %444, label %445, label %472

445:                                              ; preds = %439
  %446 = load i64, i64* %28, align 8
  %447 = icmp ugt i64 %446, 65536
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  br label %451

449:                                              ; preds = %445
  %450 = load i64, i64* %28, align 8
  br label %451

451:                                              ; preds = %449, %448
  %452 = phi i64 [ 65536, %448 ], [ %450, %449 ]
  store i64 %452, i64* %28, align 8
  %453 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = load i8*, i8** %26, align 8
  %457 = load i64, i64* %27, align 8
  %458 = getelementptr inbounds i8, i8* %456, i64 %457
  %459 = load i64, i64* %28, align 8
  %460 = load i64, i64* %8, align 8
  %461 = call i32 @connSyncWrite(i32 %455, i8* %458, i64 %459, i64 %460)
  store i32 %461, i32* %29, align 4
  %462 = load i32, i32* %29, align 4
  %463 = load i64, i64* %28, align 8
  %464 = trunc i64 %463 to i32
  %465 = icmp ne i32 %462, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %451
  store i32 1, i32* %16, align 4
  br label %700

467:                                              ; preds = %451
  %468 = load i32, i32* %29, align 4
  %469 = sext i32 %468 to i64
  %470 = load i64, i64* %27, align 8
  %471 = add i64 %470, %469
  store i64 %471, i64* %27, align 8
  br label %439

472:                                              ; preds = %439
  %473 = load i8*, i8** %7, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %484

475:                                              ; preds = %472
  %476 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %480 = load i64, i64* %8, align 8
  %481 = call i64 @connSyncReadLine(i32 %478, i8* %479, i32 1024, i64 %480)
  %482 = icmp sle i64 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %475
  br label %700

484:                                              ; preds = %475, %472
  %485 = load i32, i32* %22, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %496

487:                                              ; preds = %484
  %488 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %492 = load i64, i64* %8, align 8
  %493 = call i64 @connSyncReadLine(i32 %490, i8* %491, i32 1024, i64 %492)
  %494 = icmp sle i64 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %487
  br label %700

496:                                              ; preds = %487, %484
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %497 = load i32, i32* %4, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %506, label %499

499:                                              ; preds = %496
  %500 = load i32, i32* %19, align 4
  %501 = add nsw i32 %500, 1
  %502 = sext i32 %501 to i64
  %503 = mul i64 8, %502
  %504 = trunc i64 %503 to i32
  %505 = call %struct.TYPE_48__** @zmalloc(i32 %504)
  store %struct.TYPE_48__** %505, %struct.TYPE_48__*** %12, align 8
  br label %506

506:                                              ; preds = %499, %496
  store i32 0, i32* %6, align 4
  br label %507

507:                                              ; preds = %617, %506
  %508 = load i32, i32* %6, align 4
  %509 = load i32, i32* %19, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %620

511:                                              ; preds = %507
  %512 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %516 = load i64, i64* %8, align 8
  %517 = call i64 @connSyncReadLine(i32 %514, i8* %515, i32 1024, i64 %516)
  %518 = icmp sle i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %511
  store i32 1, i32* %34, align 4
  br label %620

520:                                              ; preds = %511
  %521 = load i8*, i8** %7, align 8
  %522 = icmp ne i8* %521, null
  br i1 %522, label %523, label %528

523:                                              ; preds = %520
  %524 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %525 = load i8, i8* %524, align 16
  %526 = sext i8 %525 to i32
  %527 = icmp eq i32 %526, 45
  br i1 %527, label %541, label %528

528:                                              ; preds = %523, %520
  %529 = load i32, i32* %22, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %528
  %532 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %533 = load i8, i8* %532, align 16
  %534 = sext i8 %533 to i32
  %535 = icmp eq i32 %534, 45
  br i1 %535, label %541, label %536

536:                                              ; preds = %531, %528
  %537 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %538 = load i8, i8* %537, align 16
  %539 = sext i8 %538 to i32
  %540 = icmp eq i32 %539, 45
  br i1 %540, label %541, label %575

541:                                              ; preds = %536, %531, %523
  %542 = load i32, i32* %33, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %574, label %544

544:                                              ; preds = %541
  %545 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %545, i32 0, i32 0
  store i64 -1, i64* %546, align 8
  %547 = load i8*, i8** %7, align 8
  %548 = icmp ne i8* %547, null
  br i1 %548, label %549, label %556

549:                                              ; preds = %544
  %550 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %551 = load i8, i8* %550, align 16
  %552 = sext i8 %551 to i32
  %553 = icmp eq i32 %552, 45
  br i1 %553, label %554, label %556

554:                                              ; preds = %549
  %555 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  store i8* %555, i8** %36, align 8
  br label %569

556:                                              ; preds = %549, %544
  %557 = load i32, i32* %22, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %566

559:                                              ; preds = %556
  %560 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %561 = load i8, i8* %560, align 16
  %562 = sext i8 %561 to i32
  %563 = icmp eq i32 %562, 45
  br i1 %563, label %564, label %566

564:                                              ; preds = %559
  %565 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  store i8* %565, i8** %36, align 8
  br label %568

566:                                              ; preds = %559, %556
  %567 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  store i8* %567, i8** %36, align 8
  br label %568

568:                                              ; preds = %566, %564
  br label %569

569:                                              ; preds = %568, %554
  store i32 1, i32* %33, align 4
  %570 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %571 = load i8*, i8** %36, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 1
  %573 = call i32 @addReplyErrorFormat(%struct.TYPE_51__* %570, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %572)
  br label %574

574:                                              ; preds = %569, %541
  br label %616

575:                                              ; preds = %536
  %576 = load i32, i32* %4, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %615, label %578

578:                                              ; preds = %575
  %579 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %580 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %583 = load i32, i32* %6, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %582, i64 %584
  %586 = load %struct.TYPE_48__*, %struct.TYPE_48__** %585, align 8
  %587 = call i32 @dbDelete(i32 %581, %struct.TYPE_48__* %586)
  %588 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %589 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 8
  %591 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %592 = load i32, i32* %6, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %591, i64 %593
  %595 = load %struct.TYPE_48__*, %struct.TYPE_48__** %594, align 8
  %596 = call i32 @signalModifiedKey(i32 %590, %struct.TYPE_48__* %595)
  %597 = load i32, i32* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @server, i32 0, i32 0), align 8
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @server, i32 0, i32 0), align 8
  %599 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %600 = load i32, i32* %6, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %599, i64 %601
  %603 = load %struct.TYPE_48__*, %struct.TYPE_48__** %602, align 8
  %604 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %605 = load i32, i32* %35, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %35, align 4
  %607 = sext i32 %605 to i64
  %608 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %604, i64 %607
  store %struct.TYPE_48__* %603, %struct.TYPE_48__** %608, align 8
  %609 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %610 = load i32, i32* %6, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %609, i64 %611
  %613 = load %struct.TYPE_48__*, %struct.TYPE_48__** %612, align 8
  %614 = call i32 @incrRefCount(%struct.TYPE_48__* %613)
  br label %615

615:                                              ; preds = %578, %575
  br label %616

616:                                              ; preds = %615, %574
  br label %617

617:                                              ; preds = %616
  %618 = load i32, i32* %6, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %6, align 4
  br label %507

620:                                              ; preds = %519, %507
  %621 = load i32, i32* %33, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %637, label %623

623:                                              ; preds = %620
  %624 = load i32, i32* %34, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %637

626:                                              ; preds = %623
  %627 = load i32, i32* %6, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %637

629:                                              ; preds = %626
  %630 = load i32, i32* %15, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %629
  %633 = load i64, i64* @errno, align 8
  %634 = load i64, i64* @ETIMEDOUT, align 8
  %635 = icmp ne i64 %633, %634
  br i1 %635, label %636, label %637

636:                                              ; preds = %632
  br label %700

637:                                              ; preds = %632, %629, %626, %623, %620
  %638 = load i32, i32* %34, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %652

640:                                              ; preds = %637
  %641 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %642 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %641, i32 0, i32 1
  %643 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %643, i64 1
  %645 = load %struct.TYPE_48__*, %struct.TYPE_48__** %644, align 8
  %646 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %647 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %646, i32 0, i32 1
  %648 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %648, i64 2
  %650 = load %struct.TYPE_48__*, %struct.TYPE_48__** %649, align 8
  %651 = call i32 @migrateCloseSocket(%struct.TYPE_48__* %645, %struct.TYPE_48__* %650)
  br label %652

652:                                              ; preds = %640, %637
  %653 = load i32, i32* %4, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %670, label %655

655:                                              ; preds = %652
  %656 = load i32, i32* %35, align 4
  %657 = icmp sgt i32 %656, 1
  br i1 %657, label %658, label %666

658:                                              ; preds = %655
  %659 = call %struct.TYPE_48__* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %660 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %661 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %660, i64 0
  store %struct.TYPE_48__* %659, %struct.TYPE_48__** %661, align 8
  %662 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %663 = load i32, i32* %35, align 4
  %664 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %665 = call i32 @replaceClientCommandVector(%struct.TYPE_51__* %662, i32 %663, %struct.TYPE_48__** %664)
  store i32 1, i32* %17, align 4
  br label %669

666:                                              ; preds = %655
  %667 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %668 = call i32 @zfree(%struct.TYPE_48__** %667)
  br label %669

669:                                              ; preds = %666, %658
  store %struct.TYPE_48__** null, %struct.TYPE_48__*** %12, align 8
  br label %670

670:                                              ; preds = %669, %652
  %671 = load i32, i32* %33, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = load i32, i32* %34, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %673
  store i32 0, i32* %15, align 4
  br label %700

677:                                              ; preds = %673, %670
  %678 = load i32, i32* %33, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %687, label %680

680:                                              ; preds = %677
  %681 = load i64, i64* %9, align 8
  %682 = load %struct.TYPE_50__*, %struct.TYPE_50__** %3, align 8
  %683 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %682, i32 0, i32 0
  store i64 %681, i64* %683, align 8
  %684 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %685 = load i32, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @shared, i32 0, i32 0), align 4
  %686 = call i32 @addReply(%struct.TYPE_51__* %684, i32 %685)
  br label %688

687:                                              ; preds = %677
  br label %688

688:                                              ; preds = %687, %680
  %689 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 0
  %690 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %690, i32 0, i32 0
  %692 = load i8*, i8** %691, align 8
  %693 = call i32 @sdsfree(i8* %692)
  %694 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %695 = call i32 @zfree(%struct.TYPE_48__** %694)
  %696 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %697 = call i32 @zfree(%struct.TYPE_48__** %696)
  %698 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %699 = call i32 @zfree(%struct.TYPE_48__** %698)
  br label %743

700:                                              ; preds = %676, %636, %495, %483, %466
  %701 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %702, i32 0, i32 0
  %704 = load i8*, i8** %703, align 8
  %705 = call i32 @sdsfree(i8* %704)
  %706 = load i32, i32* %17, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %720, label %708

708:                                              ; preds = %700
  %709 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %710 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %709, i32 0, i32 1
  %711 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %711, i64 1
  %713 = load %struct.TYPE_48__*, %struct.TYPE_48__** %712, align 8
  %714 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %715 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %714, i32 0, i32 1
  %716 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %715, align 8
  %717 = getelementptr inbounds %struct.TYPE_48__*, %struct.TYPE_48__** %716, i64 2
  %718 = load %struct.TYPE_48__*, %struct.TYPE_48__** %717, align 8
  %719 = call i32 @migrateCloseSocket(%struct.TYPE_48__* %713, %struct.TYPE_48__* %718)
  br label %720

720:                                              ; preds = %708, %700
  %721 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %12, align 8
  %722 = call i32 @zfree(%struct.TYPE_48__** %721)
  store %struct.TYPE_48__** null, %struct.TYPE_48__*** %12, align 8
  %723 = load i64, i64* @errno, align 8
  %724 = load i64, i64* @ETIMEDOUT, align 8
  %725 = icmp ne i64 %723, %724
  br i1 %725, label %726, label %730

726:                                              ; preds = %720
  %727 = load i32, i32* %15, align 4
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %730

729:                                              ; preds = %726
  store i32 0, i32* %15, align 4
  br label %245

730:                                              ; preds = %726, %720
  %731 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %10, align 8
  %732 = call i32 @zfree(%struct.TYPE_48__** %731)
  %733 = load %struct.TYPE_48__**, %struct.TYPE_48__*** %11, align 8
  %734 = call i32 @zfree(%struct.TYPE_48__** %733)
  %735 = load %struct.TYPE_51__*, %struct.TYPE_51__** %2, align 8
  %736 = call i32 (...) @sdsempty()
  %737 = load i32, i32* %16, align 4
  %738 = icmp ne i32 %737, 0
  %739 = zext i1 %738 to i64
  %740 = select i1 %738, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)
  %741 = call i32 @sdscatprintf(i32 %736, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %740)
  %742 = call i32 @addReplySds(%struct.TYPE_51__* %735, i32 %741)
  br label %743

743:                                              ; preds = %730, %688, %261, %236, %171, %141, %129, %91
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_51__*, i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_51__*, i8*) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_51__*, %struct.TYPE_48__*, i64*, i32*) #1

declare dso_local %struct.TYPE_48__** @zrealloc(%struct.TYPE_48__**, i32) #1

declare dso_local %struct.TYPE_48__* @lookupKeyRead(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @zfree(%struct.TYPE_48__**) #1

declare dso_local i32 @addReplySds(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local %struct.TYPE_50__* @migrateGetSocket(%struct.TYPE_51__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i64) #1

declare dso_local i32 @rioInitWithBuffer(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_51__*, i32*, i32) #1

declare dso_local i32 @rioWriteBulkCount(%struct.TYPE_49__*, i8 signext, i32) #1

declare dso_local i32 @rioWriteBulkString(%struct.TYPE_49__*, i8*, i32) #1

declare dso_local i32 @rioWriteBulkLongLong(%struct.TYPE_49__*, i64) #1

declare dso_local i64 @getExpire(i32, %struct.TYPE_48__*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_48__*) #1

declare dso_local i32 @createDumpPayload(%struct.TYPE_49__*, %struct.TYPE_48__*, %struct.TYPE_48__*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @connSyncWrite(i32, i8*, i64, i64) #1

declare dso_local i64 @connSyncReadLine(i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_48__** @zmalloc(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_51__*, i8*, i8*) #1

declare dso_local i32 @dbDelete(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @signalModifiedKey(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_48__*) #1

declare dso_local i32 @migrateCloseSocket(%struct.TYPE_48__*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_48__* @createStringObject(i8*, i32) #1

declare dso_local i32 @replaceClientCommandVector(%struct.TYPE_51__*, i32, %struct.TYPE_48__**) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
