; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_pnmdec.c_ReadPAMFields.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_pnmdec.c_ReadPAMFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"WIDTH %d\00", align 1
@WIDTH_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"WIDTH\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"HEIGHT %d\00", align 1
@HEIGHT_FLAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"HEIGHT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DEPTH %d\00", align 1
@DEPTH_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"DEPTH\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"MAXVAL %d\00", align 1
@MAXVAL_FLAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"MAXVAL\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"TUPLTYPE RGB_ALPHA\00", align 1
@TUPLE_FLAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"TUPLTYPE RGB\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"TUPLTYPE GRAYSCALE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ENDHDR\00", align 1
@ReadPAMFields.kEllipsis = internal constant [5 x i8] c" ...\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"PAM header error: unrecognized entry [%s]\0A\00", align 1
@ALL_NEEDED_FLAGS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"PAM header error: missing tags%s%s%s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" WIDTH\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" HEIGHT\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" DEPTH\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" MAXVAL\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"PAM header error: expected DEPTH %d but got DEPTH %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64)* @ReadPAMFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadPAMFields(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @MAX_LINE_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 -1, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %190, %2
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ReadLine(i32 %26, i64 %27, i32 %30, i8* %17, i64* %8)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

35:                                               ; preds = %23
  %36 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WIDTH_FLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i64 @FlagError(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %46, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

47:                                               ; preds = %38
  %48 = load i32, i32* @WIDTH_FLAG, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %190

56:                                               ; preds = %35
  %57 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HEIGHT_FLAG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i64 @FlagError(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i64 %67, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

68:                                               ; preds = %59
  %69 = load i32, i32* @HEIGHT_FLAG, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %189

77:                                               ; preds = %56
  %78 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DEPTH_FLAG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i64 @FlagError(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i64 %88, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

89:                                               ; preds = %80
  %90 = load i32, i32* @DEPTH_FLAG, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %188

98:                                               ; preds = %77
  %99 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MAXVAL_FLAG, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i64 @FlagError(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i64 %109, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

110:                                              ; preds = %101
  %111 = load i32, i32* @MAXVAL_FLAG, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %187

119:                                              ; preds = %98
  %120 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  store i32 4, i32* %10, align 4
  %123 = load i32, i32* @TUPLE_FLAG, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %186

128:                                              ; preds = %119
  %129 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  store i32 3, i32* %10, align 4
  %132 = load i32, i32* @TUPLE_FLAG, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %185

137:                                              ; preds = %128
  %138 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  store i32 1, i32* %10, align 4
  %141 = load i32, i32* @TUPLE_FLAG, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %184

146:                                              ; preds = %137
  %147 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %191

150:                                              ; preds = %146
  %151 = load i64, i64* %8, align 8
  %152 = icmp ugt i64 %151, 20
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = getelementptr inbounds i8, i8* %17, i64 20
  %155 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ReadPAMFields.kEllipsis, i64 0, i64 0))
  %156 = sext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = call i32 @sprintf(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ReadPAMFields.kEllipsis, i64 0, i64 0))
  br label %160

160:                                              ; preds = %153, %150
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %178, %160
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @strlen(i8* %17)
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %17, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = call i32 @isprint(i32 %170) #4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %17, i64 %175
  store i8 32, i8* %176, align 1
  br label %177

177:                                              ; preds = %173, %165
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %161

181:                                              ; preds = %161
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %17)
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

184:                                              ; preds = %140
  br label %185

185:                                              ; preds = %184, %131
  br label %186

186:                                              ; preds = %185, %122
  br label %187

187:                                              ; preds = %186, %110
  br label %188

188:                                              ; preds = %187, %89
  br label %189

189:                                              ; preds = %188, %68
  br label %190

190:                                              ; preds = %189, %47
  br label %22

191:                                              ; preds = %149
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @ALL_NEEDED_FLAGS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %233, label %198

198:                                              ; preds = %191
  %199 = load i32, i32* @stderr, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @WIDTH_FLAG, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @HEIGHT_FLAG, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @DEPTH_FLAG, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MAXVAL_FLAG, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %207, i8* %215, i8* %223, i8* %231)
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

233:                                              ; preds = %191
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, -1
  br i1 %235, label %236, label %249

236:                                              ; preds = %233
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load i32, i32* @stderr, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 %244, i32 %247)
  store i64 0, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

249:                                              ; preds = %236, %233
  %250 = load i64, i64* %5, align 8
  store i64 %250, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %251

251:                                              ; preds = %249, %242, %198, %181, %108, %87, %66, %45, %34
  %252 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i64, i64* %3, align 8
  ret i64 %253
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ReadLine(i32, i64, i32, i8*, i64*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i64 @FlagError(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
