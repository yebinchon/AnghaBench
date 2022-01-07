; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_read_pnm_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_read_pnm_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnm_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\0AWARNING: fgets return a NULL value\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"read_pnm_header:PNM:magic P missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"read_pnm_header:magic format %d invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ENDHDR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"WIDTH\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"HEIGHT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"DEPTH\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MAXVAL\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"TUPLTYPE\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"BLACKANDWHITE\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"GRAYSCALE_ALPHA\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RGB_ALPHA\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"read_pnm_header:unknown P7 TUPLTYPE %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"read_pnm_header:unknown P7 idf %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"read_pnm_header:P7 without ENDHDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pnm_header*)* @read_pnm_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pnm_header(i32* %0, %struct.pnm_header* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pnm_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.pnm_header* %1, %struct.pnm_header** %4, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @fgets(i8* %13, i32 250, i32* %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %371

20:                                               ; preds = %2
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 80
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %371

28:                                               ; preds = %20
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %371

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %44 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %226, %197, %190, %183, %176, %169, %148, %130, %112, %94, %55, %41
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @fgets(i8* %46, i32 250, i32* %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %251

50:                                               ; preds = %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %45

56:                                               ; preds = %50
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8* %57, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %208

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %63 = call i8* @skip_idf(i8* %61, i8* %62)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %60
  br label %371

72:                                               ; preds = %66
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %251

77:                                               ; preds = %72
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %84 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %83, i32 0, i32 1
  %85 = call i8* @skip_int(i8* %82, i32* %84)
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %81
  br label %371

94:                                               ; preds = %88
  br label %45

95:                                               ; preds = %77
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  %101 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %102 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %101, i32 0, i32 2
  %103 = call i8* @skip_int(i8* %100, i32* %102)
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %99
  br label %371

112:                                              ; preds = %106
  br label %45

113:                                              ; preds = %95
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %120 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %119, i32 0, i32 3
  %121 = call i8* @skip_int(i8* %118, i32* %120)
  store i8* %121, i8** %5, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %117
  br label %371

130:                                              ; preds = %124
  br label %45

131:                                              ; preds = %113
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8*, i8** %5, align 8
  %137 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %138 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %137, i32 0, i32 4
  %139 = call i8* @skip_int(i8* %136, i32* %138)
  store i8* %139, i8** %5, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = load i8*, i8** %5, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %135
  br label %371

148:                                              ; preds = %142
  br label %45

149:                                              ; preds = %131
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %204

153:                                              ; preds = %149
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %156 = call i8* @skip_idf(i8* %154, i8* %155)
  store i8* %156, i8** %5, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %153
  br label %371

165:                                              ; preds = %159
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %171 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %170, i32 0, i32 5
  store i32 1, i32* %171, align 4
  store i32 1, i32* %9, align 4
  br label %45

172:                                              ; preds = %165
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %178 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %177, i32 0, i32 6
  store i32 1, i32* %178, align 4
  store i32 1, i32* %9, align 4
  br label %45

179:                                              ; preds = %172
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %185 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %184, i32 0, i32 7
  store i32 1, i32* %185, align 4
  store i32 1, i32* %9, align 4
  br label %45

186:                                              ; preds = %179
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %192 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %191, i32 0, i32 8
  store i32 1, i32* %192, align 4
  store i32 1, i32* %9, align 4
  br label %45

193:                                              ; preds = %186
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %199 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %198, i32 0, i32 9
  store i32 1, i32* %199, align 4
  store i32 1, i32* %9, align 4
  br label %45

200:                                              ; preds = %193
  %201 = load i32, i32* @stderr, align 4
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %202)
  br label %371

204:                                              ; preds = %149
  %205 = load i32, i32* @stderr, align 4
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %206)
  br label %371

208:                                              ; preds = %56
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %227, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %5, align 8
  %213 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %214 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %213, i32 0, i32 1
  %215 = call i8* @skip_int(i8* %212, i32* %214)
  store i8* %215, i8** %5, align 8
  %216 = load i8*, i8** %5, align 8
  %217 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %218 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %217, i32 0, i32 2
  %219 = call i8* @skip_int(i8* %216, i32* %218)
  store i8* %219, i8** %5, align 8
  store i32 1, i32* %7, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %225, label %222

222:                                              ; preds = %211
  %223 = load i32, i32* %6, align 4
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %211
  br label %251

226:                                              ; preds = %222
  br label %45

227:                                              ; preds = %208
  %228 = load i32, i32* %6, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %239, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 5
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %6, align 4
  %238 = icmp eq i32 %237, 6
  br i1 %238, label %239, label %250

239:                                              ; preds = %236, %233, %230, %227
  %240 = load i8*, i8** %5, align 8
  %241 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %242 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %241, i32 0, i32 4
  %243 = call i8* @skip_int(i8* %240, i32* %242)
  store i8* %243, i8** %5, align 8
  %244 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %245 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 65535
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  br label %371

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249, %236
  br label %251

251:                                              ; preds = %250, %225, %76, %45
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  %256 = icmp eq i32 %255, 3
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %6, align 4
  %259 = icmp sgt i32 %258, 4
  br i1 %259, label %260, label %272

260:                                              ; preds = %257, %254, %251
  %261 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %262 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %267 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %268, 65535
  br i1 %269, label %270, label %271

270:                                              ; preds = %265, %260
  br label %371

271:                                              ; preds = %265
  br label %272

272:                                              ; preds = %271, %257
  %273 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %274 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp slt i32 %275, 1
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %279 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 1
  br i1 %281, label %282, label %283

282:                                              ; preds = %277, %272
  br label %371

283:                                              ; preds = %277
  %284 = load i32, i32* %6, align 4
  %285 = icmp eq i32 %284, 7
  br i1 %285, label %286, label %329

286:                                              ; preds = %283
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* @stderr, align 4
  %291 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %371

292:                                              ; preds = %286
  %293 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %294 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %302, label %297

297:                                              ; preds = %292
  %298 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %299 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = icmp sgt i32 %300, 4
  br i1 %301, label %302, label %303

302:                                              ; preds = %297, %292
  br label %371

303:                                              ; preds = %297
  %304 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %305 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %328

308:                                              ; preds = %303
  %309 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %310 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %308
  %314 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %315 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %318 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %316, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %313
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %327 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %326, i32 0, i32 10
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %322, %313, %308, %303
  br label %371

329:                                              ; preds = %283
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %330, 1
  br i1 %331, label %332, label %354

332:                                              ; preds = %329
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, 4
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %337 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %335
  %341 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %342 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %340
  %346 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %347 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %352 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %351, i32 0, i32 10
  store i32 1, i32* %352, align 4
  br label %353

353:                                              ; preds = %350, %345, %340, %335
  br label %370

354:                                              ; preds = %332, %329
  %355 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %356 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %354
  %360 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %361 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %366 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %365, i32 0, i32 10
  store i32 1, i32* %366, align 4
  br label %367

367:                                              ; preds = %364, %359, %354
  %368 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %369 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %368, i32 0, i32 4
  store i32 255, i32* %369, align 4
  br label %370

370:                                              ; preds = %367, %353
  br label %371

371:                                              ; preds = %17, %25, %37, %71, %93, %111, %129, %147, %164, %200, %204, %248, %270, %282, %289, %302, %370, %328
  ret void
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @skip_idf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @skip_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
