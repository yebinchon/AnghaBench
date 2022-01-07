; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_read_pnm_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_read_pnm_header.c"
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
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.pnm_header* %1, %struct.pnm_header** %4, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @fgets(i8* %13, i32 250, i32* %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %362

20:                                               ; preds = %2
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 80
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %362

28:                                               ; preds = %20
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 7
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %362

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %44 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %280, %247, %197, %190, %183, %176, %169, %148, %130, %112, %94, %55, %41
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @fgets(i8* %46, i32 250, i32* %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %291

50:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %45

56:                                               ; preds = %50
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %57, i8** %11, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %208

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %63 = call i8* @skip_idf(i8* %61, i8* %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %60
  br label %362

72:                                               ; preds = %66
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %291

77:                                               ; preds = %72
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %84 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %83, i32 0, i32 1
  %85 = call i8* @skip_int(i8* %82, i32* %84)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %81
  br label %362

94:                                               ; preds = %88
  br label %45

95:                                               ; preds = %77
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %102 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %101, i32 0, i32 2
  %103 = call i8* @skip_int(i8* %100, i32* %102)
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i8*, i8** %11, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %99
  br label %362

112:                                              ; preds = %106
  br label %45

113:                                              ; preds = %95
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %120 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %119, i32 0, i32 3
  %121 = call i8* @skip_int(i8* %118, i32* %120)
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %117
  br label %362

130:                                              ; preds = %124
  br label %45

131:                                              ; preds = %113
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8*, i8** %11, align 8
  %137 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %138 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %137, i32 0, i32 4
  %139 = call i8* @skip_int(i8* %136, i32* %138)
  store i8* %139, i8** %11, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = load i8*, i8** %11, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %135
  br label %362

148:                                              ; preds = %142
  br label %45

149:                                              ; preds = %131
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %204

153:                                              ; preds = %149
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %156 = call i8* @skip_idf(i8* %154, i8* %155)
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %153
  br label %362

165:                                              ; preds = %159
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %171 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %170, i32 0, i32 5
  store i32 1, i32* %171, align 4
  store i32 1, i32* %7, align 4
  br label %45

172:                                              ; preds = %165
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %178 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %177, i32 0, i32 6
  store i32 1, i32* %178, align 4
  store i32 1, i32* %7, align 4
  br label %45

179:                                              ; preds = %172
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %185 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %184, i32 0, i32 7
  store i32 1, i32* %185, align 4
  store i32 1, i32* %7, align 4
  br label %45

186:                                              ; preds = %179
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %192 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %191, i32 0, i32 8
  store i32 1, i32* %192, align 4
  store i32 1, i32* %7, align 4
  br label %45

193:                                              ; preds = %186
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %199 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %198, i32 0, i32 9
  store i32 1, i32* %199, align 4
  store i32 1, i32* %7, align 4
  br label %45

200:                                              ; preds = %193
  %201 = load i32, i32* @stderr, align 4
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %202)
  br label %362

204:                                              ; preds = %149
  %205 = load i32, i32* @stderr, align 4
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %206)
  br label %362

208:                                              ; preds = %56
  %209 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %210 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load i8*, i8** %11, align 8
  %215 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %216 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %215, i32 0, i32 1
  %217 = call i8* @skip_int(i8* %214, i32* %216)
  store i8* %217, i8** %11, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %230, label %220

220:                                              ; preds = %213
  %221 = load i8*, i8** %11, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %227 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %225, %220, %213
  br label %362

231:                                              ; preds = %225
  store i32 1, i32* %12, align 4
  br label %232

232:                                              ; preds = %231, %208
  %233 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %234 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %270

237:                                              ; preds = %232
  %238 = load i8*, i8** %11, align 8
  %239 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %240 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %239, i32 0, i32 2
  %241 = call i8* @skip_int(i8* %238, i32* %240)
  store i8* %241, i8** %11, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %45

248:                                              ; preds = %244, %237
  %249 = load i8*, i8** %11, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %261, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %11, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %258 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %256, %251, %248
  br label %362

262:                                              ; preds = %256
  %263 = load i32, i32* %5, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %5, align 4
  %267 = icmp eq i32 %266, 4
  br i1 %267, label %268, label %269

268:                                              ; preds = %265, %262
  br label %291

269:                                              ; preds = %265
  store i32 1, i32* %12, align 4
  br label %270

270:                                              ; preds = %269, %232
  %271 = load i8*, i8** %11, align 8
  %272 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %273 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %272, i32 0, i32 4
  %274 = call i8* @skip_int(i8* %271, i32* %273)
  store i8* %274, i8** %11, align 8
  %275 = load i8*, i8** %11, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  br label %45

281:                                              ; preds = %277, %270
  %282 = load i8*, i8** %11, align 8
  %283 = icmp eq i8* %282, null
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load i8*, i8** %11, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %284, %281
  br label %362

290:                                              ; preds = %284
  br label %291

291:                                              ; preds = %290, %268, %76, %45
  %292 = load i32, i32* %5, align 4
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %5, align 4
  %296 = icmp eq i32 %295, 3
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %5, align 4
  %299 = icmp sgt i32 %298, 4
  br i1 %299, label %300, label %312

300:                                              ; preds = %297, %294, %291
  %301 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %302 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %310, label %305

305:                                              ; preds = %300
  %306 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %307 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = icmp sgt i32 %308, 65535
  br i1 %309, label %310, label %311

310:                                              ; preds = %305, %300
  br label %362

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311, %297
  %313 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %314 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %315, 1
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %319 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %317, %312
  br label %362

323:                                              ; preds = %317
  %324 = load i32, i32* %5, align 4
  %325 = icmp eq i32 %324, 7
  br i1 %325, label %326, label %350

326:                                              ; preds = %323
  %327 = load i32, i32* %6, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* @stderr, align 4
  %331 = call i32 (i32, i8*, ...) @fprintf(i32 %330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %362

332:                                              ; preds = %326
  %333 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %334 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %335, 1
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %339 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = icmp sgt i32 %340, 4
  br i1 %341, label %342, label %343

342:                                              ; preds = %337, %332
  br label %362

343:                                              ; preds = %337
  %344 = load i32, i32* %7, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %348 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %347, i32 0, i32 10
  store i32 1, i32* %348, align 4
  br label %349

349:                                              ; preds = %346, %343
  br label %362

350:                                              ; preds = %323
  %351 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %352 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %351, i32 0, i32 10
  store i32 1, i32* %352, align 4
  %353 = load i32, i32* %5, align 4
  %354 = icmp eq i32 %353, 1
  br i1 %354, label %358, label %355

355:                                              ; preds = %350
  %356 = load i32, i32* %5, align 4
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %358, label %361

358:                                              ; preds = %355, %350
  %359 = load %struct.pnm_header*, %struct.pnm_header** %4, align 8
  %360 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %359, i32 0, i32 4
  store i32 255, i32* %360, align 4
  br label %361

361:                                              ; preds = %358, %355
  br label %362

362:                                              ; preds = %17, %25, %37, %71, %93, %111, %129, %147, %164, %200, %204, %230, %261, %289, %310, %322, %329, %342, %361, %349
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
