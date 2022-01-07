; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_Ls.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_Ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }

@gRemoteCWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ls caching not used because of ls flags: %s\0A\00", align 1
@gConn = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"List failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"UnMlsD: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"UnLslR: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"List processing failed.\0A\00", align 1
@gLsCache = common dso_local global %struct.TYPE_25__* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"ls cache hit: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Remote listing contents {\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ls(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [32 x i8], align 16
  %25 = alloca [32 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %30 = call i32 @InitLineList(%struct.TYPE_23__* %14)
  %31 = call i32 @InitFileInfoList(%struct.TYPE_24__* %10)
  store i32 110, i32* %21, align 4
  store i32 97, i32* %22, align 4
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 67
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i32 0, i32 32)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  store i8 45, i8* %38, align 16
  store i32 0, i32* %26, align 4
  store i32 0, i32* %18, align 4
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %20, align 8
  br label %40

40:                                               ; preds = %73, %4
  %41 = load i8*, i8** %20, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load i8*, i8** %20, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  switch i32 %49, label %59 [
    i32 116, label %50
    i32 83, label %51
    i32 114, label %52
    i32 76, label %53
    i32 102, label %54
    i32 70, label %55
    i32 112, label %55
    i32 49, label %56
    i32 67, label %56
    i32 108, label %56
    i32 45, label %58
  ]

50:                                               ; preds = %45
  store i32 116, i32* %21, align 4
  br label %72

51:                                               ; preds = %45
  store i32 115, i32* %21, align 4
  br label %72

52:                                               ; preds = %45
  store i32 100, i32* %22, align 4
  br label %72

53:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %72

54:                                               ; preds = %45
  store i32 1, i32* %26, align 4
  br label %72

55:                                               ; preds = %45, %45
  store i32 1, i32* %17, align 4
  br label %72

56:                                               ; preds = %45, %45, %45
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %6, align 4
  br label %72

58:                                               ; preds = %45
  br label %72

59:                                               ; preds = %45
  %60 = load i32, i32* %23, align 4
  %61 = icmp slt i32 %60, 30
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %19, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* %23, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 %67
  store i8 %64, i8* %68, align 1
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %23, align 4
  br label %72

72:                                               ; preds = %69, %58, %56, %55, %54, %53, %52, %51, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %20, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %20, align 8
  br label %40

76:                                               ; preds = %40
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %78 = load i32, i32* @gRemoteCWD, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %84

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %81 ], [ %83, %82 ]
  %86 = call i32 @PathCat(i8* %77, i32 512, i32 %78, i8* %85)
  %87 = load i32, i32* %23, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %91 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  store i8 45, i8* %92, align 16
  %93 = load i32, i32* %6, align 4
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 1
  store i8 %94, i8* %95, align 1
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 2
  store i8 0, i8* %96, align 2
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @STRNCAT(i8* %97, i8* %98)
  %100 = load i8*, i8** %5, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %105

103:                                              ; preds = %89
  %104 = load i8*, i8** %5, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %102 ], [ %104, %103 ]
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %108 = call i64 @FTPListToMemory2(%struct.TYPE_26__* @gConn, i8* %106, %struct.TYPE_23__* %14, i8* %107, i32 1, i32* null)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load i32*, i32** %8, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @stderr, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %110
  br label %290

119:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %27, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  br label %198

120:                                              ; preds = %84
  %121 = load i32, i32* %26, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %125 = call i32 @LsCacheLookup(i8* %124)
  store i32 %125, i32* %29, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %189

127:                                              ; preds = %123, %120
  store i32 0, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %133

131:                                              ; preds = %127
  %132 = load i8*, i8** %5, align 8
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %130 ], [ %132, %131 ]
  %135 = call i64 @FTPListToMemory2(%struct.TYPE_26__* @gConn, i8* %134, %struct.TYPE_23__* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 1, i32* %28)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i32*, i32** %8, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %137
  br label %290

146:                                              ; preds = %133
  store i32 1, i32* %18, align 4
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %11, align 8
  %147 = load i32, i32* %28, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = call i32 @UnMlsD(%struct.TYPE_24__* %150, %struct.TYPE_23__* %14)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %15, align 4
  %156 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %154, %149
  br label %168

158:                                              ; preds = %146
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @gConn, i32 0, i32 0), align 4
  %161 = call i32 @UnLslR(%struct.TYPE_24__* %159, %struct.TYPE_23__* %14, i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %15, align 4
  %166 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %164, %158
  br label %168

168:                                              ; preds = %167, %157
  %169 = load i32, i32* %15, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %173 = call i32 @VectorizeFileInfoList(%struct.TYPE_24__* %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %171
  %179 = load i32*, i32** %8, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* @stderr, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i32*
  %185 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %186

186:                                              ; preds = %181, %178
  br label %290

187:                                              ; preds = %171
  br label %188

188:                                              ; preds = %187, %168
  br label %197

189:                                              ; preds = %123
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** @gLsCache, align 8
  %191 = load i32, i32* %29, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  store %struct.TYPE_24__* %194, %struct.TYPE_24__** %11, align 8
  store i32 1, i32* %27, align 4
  store i32 1, i32* %15, align 4
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %196 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %189, %188
  br label %198

198:                                              ; preds = %197, %119
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %203, align 8
  store %struct.TYPE_22__* %204, %struct.TYPE_22__** %12, align 8
  br label %205

205:                                              ; preds = %216, %201
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %207 = icmp ne %struct.TYPE_22__* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  store %struct.TYPE_22__* %211, %struct.TYPE_22__** %13, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %208
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %217, %struct.TYPE_22__** %12, align 8
  br label %205

218:                                              ; preds = %205
  %219 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %198
  %221 = load i32, i32* %15, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %262

223:                                              ; preds = %220
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @SortFileInfoList(%struct.TYPE_24__* %224, i32 %225, i32 %226)
  %228 = load i32*, i32** %8, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %254

230:                                              ; preds = %223
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 108
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %16, align 4
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 @LsL(%struct.TYPE_24__* %234, i32 %235, i32 %236, i32* %237)
  br label %253

239:                                              ; preds = %230
  %240 = load i32, i32* %6, align 4
  %241 = icmp eq i32 %240, 49
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %244 = load i32, i32* %17, align 4
  %245 = load i32*, i32** %8, align 8
  %246 = call i32 @Ls1(%struct.TYPE_24__* %243, i32 %244, i32* %245)
  br label %252

247:                                              ; preds = %239
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %249 = load i32, i32* %17, align 4
  %250 = load i32*, i32** %8, align 8
  %251 = call i32 @LsC(%struct.TYPE_24__* %248, i32 %249, i32* %250)
  br label %252

252:                                              ; preds = %247, %242
  br label %253

253:                                              ; preds = %252, %233
  br label %254

254:                                              ; preds = %253, %223
  %255 = load i32, i32* %27, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %260 = call i32 @LsCacheAdd(i8* %258, %struct.TYPE_24__* %259)
  br label %261

261:                                              ; preds = %257, %254
  br label %288

262:                                              ; preds = %220
  %263 = load i32*, i32** %8, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %287

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %266, align 8
  store %struct.TYPE_22__* %267, %struct.TYPE_22__** %12, align 8
  br label %268

268:                                              ; preds = %284, %265
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %270 = icmp ne %struct.TYPE_22__* %269, null
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %273, align 8
  store %struct.TYPE_22__* %274, %struct.TYPE_22__** %13, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 (i32*, i8*, ...) @fprintf(i32* %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (i32, i8*, ...) @Trace(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %282)
  br label %284

284:                                              ; preds = %271
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %285, %struct.TYPE_22__** %12, align 8
  br label %268

286:                                              ; preds = %268
  br label %287

287:                                              ; preds = %286, %262
  br label %288

288:                                              ; preds = %287, %261
  %289 = call i32 @DisposeLineListContents(%struct.TYPE_23__* %14)
  br label %290

290:                                              ; preds = %288, %186, %145, %118
  ret void
}

declare dso_local i32 @InitLineList(%struct.TYPE_23__*) #1

declare dso_local i32 @InitFileInfoList(%struct.TYPE_24__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @PathCat(i8*, i32, i32, i8*) #1

declare dso_local i32 @Trace(i32, i8*, ...) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i64 @FTPListToMemory2(%struct.TYPE_26__*, i8*, %struct.TYPE_23__*, i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @LsCacheLookup(i8*) #1

declare dso_local i32 @UnMlsD(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @UnLslR(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @VectorizeFileInfoList(%struct.TYPE_24__*) #1

declare dso_local i32 @SortFileInfoList(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @LsL(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @Ls1(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @LsC(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @LsCacheAdd(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
