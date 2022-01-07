; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_bitfieldCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_bitfieldCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_31__** }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_28__ = type { i8* }
%struct.bitfieldOp = type { i64, i64, i32, i32, i32, i32 }

@BFOVERFLOW_WRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@BITFIELDOP_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@BITFIELDOP_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"incrby\00", align 1
@BITFIELDOP_INCRBY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@BFOVERFLOW_SAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@BFOVERFLOW_FAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Invalid OVERFLOW type specified\00", align 1
@shared = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@C_OK = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i32 0, align 4
@LONG_STR_SIZE = common dso_local global i32 0, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"setbit\00", align 1
@server = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitfieldCommand(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitfieldOp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.bitfieldOp*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca [9 x i8], align 1
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.bitfieldOp* null, %struct.bitfieldOp** %8, align 8
  %39 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  store i32 %39, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 2, i32* %5, align 4
  br label %40

40:                                               ; preds = %262, %1
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %265

46:                                               ; preds = %40
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %55, i64 %57
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %12, align 4
  %67 = icmp sge i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @BITFIELDOP_GET, align 4
  store i32 %69, i32* %14, align 4
  br label %141

70:                                               ; preds = %65, %46
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @BITFIELDOP_SET, align 4
  store i32 %78, i32* %14, align 4
  br label %140

79:                                               ; preds = %74, %70
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp sge i32 %84, 3
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @BITFIELDOP_INCRBY, align 4
  store i32 %87, i32* %14, align 4
  br label %139

88:                                               ; preds = %83, %79
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @strcasecmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %133, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = icmp sge i32 %93, 1
  br i1 %94, label %95, label %133

95:                                               ; preds = %92
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %98, i64 %101
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %18, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %95
  %112 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  store i32 %112, i32* %9, align 4
  br label %132

113:                                              ; preds = %95
  %114 = load i8*, i8** %18, align 8
  %115 = call i32 @strcasecmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @BFOVERFLOW_SAT, align 4
  store i32 %118, i32* %9, align 4
  br label %131

119:                                              ; preds = %113
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @BFOVERFLOW_FAIL, align 4
  store i32 %124, i32* %9, align 4
  br label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %127 = call i32 @addReplyError(%struct.TYPE_29__* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %129 = call i32 @zfree(%struct.bitfieldOp* %128)
  br label %618

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %111
  br label %262

133:                                              ; preds = %92, %88
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @shared, i32 0, i32 0), align 4
  %136 = call i32 @addReply(%struct.TYPE_29__* %134, i32 %135)
  %137 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %138 = call i32 @zfree(%struct.bitfieldOp* %137)
  br label %618

139:                                              ; preds = %86
  br label %140

140:                                              ; preds = %139, %77
  br label %141

141:                                              ; preds = %140, %68
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %145, i64 %148
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %149, align 8
  %151 = call i64 @getBitfieldTypeFromArgument(%struct.TYPE_29__* %142, %struct.TYPE_31__* %150, i32* %16, i32* %17)
  %152 = load i64, i64* @C_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  %155 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %156 = call i32 @zfree(%struct.bitfieldOp* %155)
  br label %618

157:                                              ; preds = %141
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %161, i64 %164
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %165, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call i64 @getBitOffsetFromArgument(%struct.TYPE_29__* %158, %struct.TYPE_31__* %166, i64* %4, i32 1, i32 %167)
  %169 = load i64, i64* @C_OK, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %173 = call i32 @zfree(%struct.bitfieldOp* %172)
  br label %618

174:                                              ; preds = %157
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @BITFIELDOP_GET, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %174
  store i32 0, i32* %10, align 4
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %4, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %180, %182
  %184 = sub i64 %183, 1
  %185 = icmp ult i64 %179, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i64, i64* %4, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 %187, %189
  %191 = sub i64 %190, 1
  store i64 %191, i64* %11, align 8
  br label %192

192:                                              ; preds = %186, %178
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 3
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %196, i64 %199
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %200, align 8
  %202 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_29__* %193, %struct.TYPE_31__* %201, i64* %15, i32* null)
  %203 = load i64, i64* @C_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %192
  %206 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %207 = call i32 @zfree(%struct.bitfieldOp* %206)
  br label %618

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %208, %174
  %210 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = mul i64 32, %213
  %215 = trunc i64 %214 to i32
  %216 = call %struct.bitfieldOp* @zrealloc(%struct.bitfieldOp* %210, i32 %215)
  store %struct.bitfieldOp* %216, %struct.bitfieldOp** %8, align 8
  %217 = load i64, i64* %4, align 8
  %218 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %218, i64 %220
  %222 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %221, i32 0, i32 0
  store i64 %217, i64* %222, align 8
  %223 = load i64, i64* %15, align 8
  %224 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %224, i64 %226
  %228 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %227, i32 0, i32 1
  store i64 %223, i64* %228, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %230, i64 %232
  %234 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %233, i32 0, i32 2
  store i32 %229, i32* %234, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %236, i64 %238
  %240 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %239, i32 0, i32 3
  store i32 %235, i32* %240, align 4
  %241 = load i32, i32* %17, align 4
  %242 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %242, i64 %244
  %246 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %245, i32 0, i32 4
  store i32 %241, i32* %246, align 8
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %248, i64 %250
  %252 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %251, i32 0, i32 5
  store i32 %247, i32* %252, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @BITFIELDOP_GET, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = sub nsw i32 3, %258
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %209, %132
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %40

265:                                              ; preds = %40
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %265
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %270, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %274, i64 1
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %275, align 8
  %277 = call %struct.TYPE_28__* @lookupKeyRead(%struct.TYPE_30__* %271, %struct.TYPE_31__* %276)
  store %struct.TYPE_28__* %277, %struct.TYPE_28__** %3, align 8
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %279 = icmp ne %struct.TYPE_28__* %278, null
  br i1 %279, label %280, label %289

280:                                              ; preds = %268
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %283 = load i32, i32* @OBJ_STRING, align 4
  %284 = call i64 @checkType(%struct.TYPE_29__* %281, %struct.TYPE_28__* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %288 = call i32 @zfree(%struct.bitfieldOp* %287)
  br label %618

289:                                              ; preds = %280, %268
  br label %299

290:                                              ; preds = %265
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %292 = load i64, i64* %11, align 8
  %293 = call %struct.TYPE_28__* @lookupStringForBitCommand(%struct.TYPE_29__* %291, i64 %292)
  store %struct.TYPE_28__* %293, %struct.TYPE_28__** %3, align 8
  %294 = icmp eq %struct.TYPE_28__* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %297 = call i32 @zfree(%struct.bitfieldOp* %296)
  br label %618

298:                                              ; preds = %290
  br label %299

299:                                              ; preds = %298, %289
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @addReplyArrayLen(%struct.TYPE_29__* %300, i32 %301)
  store i32 0, i32* %5, align 4
  br label %303

303:                                              ; preds = %584, %299
  %304 = load i32, i32* %5, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %587

307:                                              ; preds = %303
  %308 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %308, i64 %310
  store %struct.bitfieldOp* %311, %struct.bitfieldOp** %19, align 8
  %312 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %313 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @BITFIELDOP_SET, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %323, label %317

317:                                              ; preds = %307
  %318 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %319 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @BITFIELDOP_INCRBY, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %501

323:                                              ; preds = %317, %307
  %324 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %325 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %413

328:                                              ; preds = %323
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %333 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %336 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @getSignedBitfield(i8* %331, i64 %334, i32 %337)
  store i64 %338, i64* %20, align 8
  %339 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %340 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @BITFIELDOP_INCRBY, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %367

344:                                              ; preds = %328
  %345 = load i64, i64* %20, align 8
  %346 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %347 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %345, %348
  store i64 %349, i64* %21, align 8
  %350 = load i64, i64* %20, align 8
  %351 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %352 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %355 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %358 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @checkSignedBitfieldOverflow(i64 %350, i64 %353, i32 %356, i32 %359, i64* %22)
  store i32 %360, i32* %24, align 4
  %361 = load i32, i32* %24, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %344
  %364 = load i64, i64* %22, align 8
  store i64 %364, i64* %21, align 8
  br label %365

365:                                              ; preds = %363, %344
  %366 = load i64, i64* %21, align 8
  store i64 %366, i64* %23, align 8
  br label %385

367:                                              ; preds = %328
  %368 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %369 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %21, align 8
  %371 = load i64, i64* %21, align 8
  %372 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %373 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %376 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @checkSignedBitfieldOverflow(i64 %371, i64 0, i32 %374, i32 %377, i64* %22)
  store i32 %378, i32* %24, align 4
  %379 = load i32, i32* %24, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %367
  %382 = load i64, i64* %22, align 8
  store i64 %382, i64* %21, align 8
  br label %383

383:                                              ; preds = %381, %367
  %384 = load i64, i64* %20, align 8
  store i64 %384, i64* %23, align 8
  br label %385

385:                                              ; preds = %383, %365
  %386 = load i32, i32* %24, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %390 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @BFOVERFLOW_FAIL, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %409, label %394

394:                                              ; preds = %388, %385
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %396 = load i64, i64* %23, align 8
  %397 = call i32 @addReplyLongLong(%struct.TYPE_29__* %395, i64 %396)
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %402 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %405 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = load i64, i64* %21, align 8
  %408 = call i32 @setSignedBitfield(i8* %400, i64 %403, i32 %406, i64 %407)
  br label %412

409:                                              ; preds = %388
  %410 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %411 = call i32 @addReplyNull(%struct.TYPE_29__* %410)
  br label %412

412:                                              ; preds = %409, %394
  br label %498

413:                                              ; preds = %323
  %414 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8
  %417 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %418 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %421 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = call i64 @getUnsignedBitfield(i8* %416, i64 %419, i32 %422)
  store i64 %423, i64* %25, align 8
  %424 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %425 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @BITFIELDOP_INCRBY, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %452

429:                                              ; preds = %413
  %430 = load i64, i64* %25, align 8
  %431 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %432 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %430, %433
  store i64 %434, i64* %26, align 8
  %435 = load i64, i64* %25, align 8
  %436 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %437 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %440 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %443 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @checkUnsignedBitfieldOverflow(i64 %435, i64 %438, i32 %441, i32 %444, i64* %27)
  store i32 %445, i32* %29, align 4
  %446 = load i32, i32* %29, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %429
  %449 = load i64, i64* %27, align 8
  store i64 %449, i64* %26, align 8
  br label %450

450:                                              ; preds = %448, %429
  %451 = load i64, i64* %26, align 8
  store i64 %451, i64* %28, align 8
  br label %470

452:                                              ; preds = %413
  %453 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %454 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %26, align 8
  %456 = load i64, i64* %26, align 8
  %457 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %458 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %461 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @checkUnsignedBitfieldOverflow(i64 %456, i64 0, i32 %459, i32 %462, i64* %27)
  store i32 %463, i32* %29, align 4
  %464 = load i32, i32* %29, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %452
  %467 = load i64, i64* %27, align 8
  store i64 %467, i64* %26, align 8
  br label %468

468:                                              ; preds = %466, %452
  %469 = load i64, i64* %25, align 8
  store i64 %469, i64* %28, align 8
  br label %470

470:                                              ; preds = %468, %450
  %471 = load i32, i32* %29, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %470
  %474 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %475 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @BFOVERFLOW_FAIL, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %494, label %479

479:                                              ; preds = %473, %470
  %480 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %481 = load i64, i64* %28, align 8
  %482 = call i32 @addReplyLongLong(%struct.TYPE_29__* %480, i64 %481)
  %483 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 0
  %485 = load i8*, i8** %484, align 8
  %486 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %487 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %490 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 8
  %492 = load i64, i64* %26, align 8
  %493 = call i32 @setUnsignedBitfield(i8* %485, i64 %488, i32 %491, i64 %492)
  br label %497

494:                                              ; preds = %473
  %495 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %496 = call i32 @addReplyNull(%struct.TYPE_29__* %495)
  br label %497

497:                                              ; preds = %494, %479
  br label %498

498:                                              ; preds = %497, %412
  %499 = load i32, i32* %7, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %7, align 4
  br label %583

501:                                              ; preds = %317
  store i64 0, i64* %31, align 8
  store i8* null, i8** %32, align 8
  %502 = load i32, i32* @LONG_STR_SIZE, align 4
  %503 = zext i32 %502 to i64
  %504 = call i8* @llvm.stacksave()
  store i8* %504, i8** %33, align 8
  %505 = alloca i8, i64 %503, align 16
  store i64 %503, i64* %34, align 8
  %506 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %507 = icmp ne %struct.TYPE_28__* %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %501
  %509 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %510 = call i8* @getObjectReadOnlyString(%struct.TYPE_28__* %509, i64* %31, i8* %505)
  store i8* %510, i8** %32, align 8
  br label %511

511:                                              ; preds = %508, %501
  %512 = getelementptr inbounds [9 x i8], [9 x i8]* %30, i64 0, i64 0
  %513 = call i32 @memset(i8* %512, i32 0, i32 9)
  %514 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %515 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = lshr i64 %516, 3
  store i64 %517, i64* %36, align 8
  store i32 0, i32* %35, align 4
  br label %518

518:                                              ; preds = %543, %511
  %519 = load i32, i32* %35, align 4
  %520 = icmp slt i32 %519, 9
  br i1 %520, label %521, label %546

521:                                              ; preds = %518
  %522 = load i8*, i8** %32, align 8
  %523 = icmp eq i8* %522, null
  br i1 %523, label %531, label %524

524:                                              ; preds = %521
  %525 = load i32, i32* %35, align 4
  %526 = sext i32 %525 to i64
  %527 = load i64, i64* %36, align 8
  %528 = add i64 %526, %527
  %529 = load i64, i64* %31, align 8
  %530 = icmp uge i64 %528, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %524, %521
  br label %546

532:                                              ; preds = %524
  %533 = load i8*, i8** %32, align 8
  %534 = load i32, i32* %35, align 4
  %535 = sext i32 %534 to i64
  %536 = load i64, i64* %36, align 8
  %537 = add i64 %535, %536
  %538 = getelementptr inbounds i8, i8* %533, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = load i32, i32* %35, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [9 x i8], [9 x i8]* %30, i64 0, i64 %541
  store i8 %539, i8* %542, align 1
  br label %543

543:                                              ; preds = %532
  %544 = load i32, i32* %35, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %35, align 4
  br label %518

546:                                              ; preds = %531, %518
  %547 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %548 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %547, i32 0, i32 5
  %549 = load i32, i32* %548, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %566

551:                                              ; preds = %546
  %552 = getelementptr inbounds [9 x i8], [9 x i8]* %30, i64 0, i64 0
  %553 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %554 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* %36, align 8
  %557 = mul i64 %556, 8
  %558 = sub i64 %555, %557
  %559 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %560 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = call i64 @getSignedBitfield(i8* %552, i64 %558, i32 %561)
  store i64 %562, i64* %37, align 8
  %563 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %564 = load i64, i64* %37, align 8
  %565 = call i32 @addReplyLongLong(%struct.TYPE_29__* %563, i64 %564)
  br label %581

566:                                              ; preds = %546
  %567 = getelementptr inbounds [9 x i8], [9 x i8]* %30, i64 0, i64 0
  %568 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %569 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* %36, align 8
  %572 = mul i64 %571, 8
  %573 = sub i64 %570, %572
  %574 = load %struct.bitfieldOp*, %struct.bitfieldOp** %19, align 8
  %575 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 8
  %577 = call i64 @getUnsignedBitfield(i8* %567, i64 %573, i32 %576)
  store i64 %577, i64* %38, align 8
  %578 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %579 = load i64, i64* %38, align 8
  %580 = call i32 @addReplyLongLong(%struct.TYPE_29__* %578, i64 %579)
  br label %581

581:                                              ; preds = %566, %551
  %582 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %582)
  br label %583

583:                                              ; preds = %581, %498
  br label %584

584:                                              ; preds = %583
  %585 = load i32, i32* %5, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %5, align 4
  br label %303

587:                                              ; preds = %303
  %588 = load i32, i32* %7, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %615

590:                                              ; preds = %587
  %591 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %592 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %591, i32 0, i32 1
  %593 = load %struct.TYPE_30__*, %struct.TYPE_30__** %592, align 8
  %594 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %595 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %594, i32 0, i32 2
  %596 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %596, i64 1
  %598 = load %struct.TYPE_31__*, %struct.TYPE_31__** %597, align 8
  %599 = call i32 @signalModifiedKey(%struct.TYPE_30__* %593, %struct.TYPE_31__* %598)
  %600 = load i32, i32* @NOTIFY_STRING, align 4
  %601 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %602 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %601, i32 0, i32 2
  %603 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %603, i64 1
  %605 = load %struct.TYPE_31__*, %struct.TYPE_31__** %604, align 8
  %606 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %607 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_30__*, %struct.TYPE_30__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @notifyKeyspaceEvent(i32 %600, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_31__* %605, i32 %610)
  %612 = load i32, i32* %7, align 4
  %613 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @server, i32 0, i32 0), align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @server, i32 0, i32 0), align 4
  br label %615

615:                                              ; preds = %590, %587
  %616 = load %struct.bitfieldOp*, %struct.bitfieldOp** %8, align 8
  %617 = call i32 @zfree(%struct.bitfieldOp* %616)
  br label %618

618:                                              ; preds = %615, %295, %286, %205, %171, %154, %133, %125
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @zfree(%struct.bitfieldOp*) #1

declare dso_local i32 @addReply(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @getBitfieldTypeFromArgument(%struct.TYPE_29__*, %struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i64 @getBitOffsetFromArgument(%struct.TYPE_29__*, %struct.TYPE_31__*, i64*, i32, i32) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_29__*, %struct.TYPE_31__*, i64*, i32*) #1

declare dso_local %struct.bitfieldOp* @zrealloc(%struct.bitfieldOp*, i32) #1

declare dso_local %struct.TYPE_28__* @lookupKeyRead(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i64 @checkType(%struct.TYPE_29__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @lookupStringForBitCommand(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @getSignedBitfield(i8*, i64, i32) #1

declare dso_local i32 @checkSignedBitfieldOverflow(i64, i64, i32, i32, i64*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @setSignedBitfield(i8*, i64, i32, i64) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_29__*) #1

declare dso_local i64 @getUnsignedBitfield(i8*, i64, i32) #1

declare dso_local i32 @checkUnsignedBitfieldOverflow(i64, i64, i32, i32, i64*) #1

declare dso_local i32 @setUnsignedBitfield(i8*, i64, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @getObjectReadOnlyString(%struct.TYPE_28__*, i64*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @signalModifiedKey(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
