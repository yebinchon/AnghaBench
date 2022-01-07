; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_options.c_parse_config_file_option.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_options.c_parse_config_file_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_8__, %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64, i8**, i8* }
%struct.TYPE_7__ = type { i64, i8**, i8* }

@.str = private unnamed_addr constant [9 x i8] c"temp-day\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"temp-night\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"transition\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fade\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"brightness-day\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"brightness-night\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"elevation-high\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"elevation-low\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Malformed gamma setting.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"gamma-day\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gamma-night\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"adjustment-method\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Unknown adjustment method `%s'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"location-provider\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Unknown location provider `%s'.\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"dawn-time\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Malformed dawn-time setting `%s'.\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"dusk-time\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Malformed dusk-time setting `%s'.\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Unknown configuration setting `%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_10__*, i32*, i32*)* @parse_config_file_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config_file_option(i8* %0, i8* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @atoi(i8* %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %20
  br label %398

36:                                               ; preds = %5
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = call i8* @atoi(i8* %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %40
  br label %397

56:                                               ; preds = %36
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strcasecmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60, %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @atoi(i8* %70)
  %72 = icmp ne i8* %71, null
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %69, %64
  br label %396

79:                                               ; preds = %60
  %80 = load i8*, i8** %7, align 8
  %81 = call i64 @strcasecmp(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @isnan(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @atof(i8* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i8* %93, i8** %97, align 8
  br label %98

98:                                               ; preds = %91, %83
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @isnan(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = call i8* @atof(i8* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %98
  br label %395

114:                                              ; preds = %79
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @strcasecmp(i8* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @isnan(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load i8*, i8** %8, align 8
  %128 = call i8* @atof(i8* %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store i8* %128, i8** %132, align 8
  br label %133

133:                                              ; preds = %126, %118
  br label %394

134:                                              ; preds = %114
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @strcasecmp(i8* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @isnan(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  %148 = call i8* @atof(i8* %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %146, %138
  br label %393

154:                                              ; preds = %134
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @strcasecmp(i8* %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i8*, i8** %8, align 8
  %160 = call i8* @atof(i8* %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  store i8* %160, i8** %163, align 8
  br label %392

164:                                              ; preds = %154
  %165 = load i8*, i8** %7, align 8
  %166 = call i64 @strcasecmp(i8* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = call i8* @atof(i8* %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  store i8* %170, i8** %173, align 8
  br label %391

174:                                              ; preds = %164
  %175 = load i8*, i8** %7, align 8
  %176 = call i64 @strcasecmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %215

178:                                              ; preds = %174
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @isnan(i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %178
  %189 = load i8*, i8** %8, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i8**, i8*** %193, align 8
  %195 = call i32 @parse_gamma_string(i8* %189, i8** %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %188
  %199 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 @fputs(i8* %199, i32 %200)
  store i32 -1, i32* %6, align 4
  br label %399

202:                                              ; preds = %188
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i8**, i8*** %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i8**, i8*** %211, align 8
  %213 = call i32 @memcpy(i8** %207, i8** %212, i32 8)
  br label %214

214:                                              ; preds = %202, %178
  br label %390

215:                                              ; preds = %174
  %216 = load i8*, i8** %7, align 8
  %217 = call i64 @strcasecmp(i8* %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %245

219:                                              ; preds = %215
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @isnan(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %219
  %230 = load i8*, i8** %8, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i8**, i8*** %234, align 8
  %236 = call i32 @parse_gamma_string(i8* %230, i8** %235)
  store i32 %236, i32* %13, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %229
  %240 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %241 = load i32, i32* @stderr, align 4
  %242 = call i32 @fputs(i8* %240, i32 %241)
  store i32 -1, i32* %6, align 4
  br label %399

243:                                              ; preds = %229
  br label %244

244:                                              ; preds = %243, %219
  br label %389

245:                                              ; preds = %215
  %246 = load i8*, i8** %7, align 8
  %247 = call i64 @strcasecmp(i8* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %245
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i64 @isnan(i8* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %249
  %260 = load i8*, i8** %8, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = call i32 @parse_gamma_string(i8* %260, i8** %265)
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %271 = load i32, i32* @stderr, align 4
  %272 = call i32 @fputs(i8* %270, i32 %271)
  store i32 -1, i32* %6, align 4
  br label %399

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %249
  br label %388

275:                                              ; preds = %245
  %276 = load i8*, i8** %7, align 8
  %277 = call i64 @strcasecmp(i8* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %301

279:                                              ; preds = %275
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %300

284:                                              ; preds = %279
  %285 = load i32*, i32** %10, align 8
  %286 = load i8*, i8** %8, align 8
  %287 = call i32* @find_gamma_method(i32* %285, i8* %286)
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 3
  store i32* %287, i32** %289, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = icmp eq i32* %292, null
  br i1 %293, label %294, label %299

294:                                              ; preds = %284
  %295 = load i32, i32* @stderr, align 4
  %296 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %297 = load i8*, i8** %8, align 8
  %298 = call i32 @fprintf(i32 %295, i8* %296, i8* %297)
  store i32 -1, i32* %6, align 4
  br label %399

299:                                              ; preds = %284
  br label %300

300:                                              ; preds = %299, %279
  br label %387

301:                                              ; preds = %275
  %302 = load i8*, i8** %7, align 8
  %303 = call i64 @strcasecmp(i8* %302, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %327

305:                                              ; preds = %301
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = load i32*, i32** %11, align 8
  %312 = load i8*, i8** %8, align 8
  %313 = call i32* @find_location_provider(i32* %311, i8* %312)
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 2
  store i32* %313, i32** %315, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 2
  %318 = load i32*, i32** %317, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %325

320:                                              ; preds = %310
  %321 = load i32, i32* @stderr, align 4
  %322 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @fprintf(i32 %321, i8* %322, i8* %323)
  store i32 -1, i32* %6, align 4
  br label %399

325:                                              ; preds = %310
  br label %326

326:                                              ; preds = %325, %305
  br label %386

327:                                              ; preds = %301
  %328 = load i8*, i8** %7, align 8
  %329 = call i64 @strcasecmp(i8* %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %353

331:                                              ; preds = %327
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp slt i64 %336, 0
  br i1 %337, label %338, label %352

338:                                              ; preds = %331
  %339 = load i8*, i8** %8, align 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 1
  %343 = call i32 @parse_transition_range(i8* %339, %struct.TYPE_11__* %342)
  store i32 %343, i32* %15, align 4
  %344 = load i32, i32* %15, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %338
  %347 = load i32, i32* @stderr, align 4
  %348 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %349 = load i8*, i8** %8, align 8
  %350 = call i32 @fprintf(i32 %347, i8* %348, i8* %349)
  store i32 -1, i32* %6, align 4
  br label %399

351:                                              ; preds = %338
  br label %352

352:                                              ; preds = %351, %331
  br label %385

353:                                              ; preds = %327
  %354 = load i8*, i8** %7, align 8
  %355 = call i64 @strcasecmp(i8* %354, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %379

357:                                              ; preds = %353
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp slt i64 %362, 0
  br i1 %363, label %364, label %378

364:                                              ; preds = %357
  %365 = load i8*, i8** %8, align 8
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = call i32 @parse_transition_range(i8* %365, %struct.TYPE_11__* %368)
  store i32 %369, i32* %16, align 4
  %370 = load i32, i32* %16, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %364
  %373 = load i32, i32* @stderr, align 4
  %374 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %375 = load i8*, i8** %8, align 8
  %376 = call i32 @fprintf(i32 %373, i8* %374, i8* %375)
  store i32 -1, i32* %6, align 4
  br label %399

377:                                              ; preds = %364
  br label %378

378:                                              ; preds = %377, %357
  br label %384

379:                                              ; preds = %353
  %380 = load i32, i32* @stderr, align 4
  %381 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %382 = load i8*, i8** %7, align 8
  %383 = call i32 @fprintf(i32 %380, i8* %381, i8* %382)
  br label %384

384:                                              ; preds = %379, %378
  br label %385

385:                                              ; preds = %384, %352
  br label %386

386:                                              ; preds = %385, %326
  br label %387

387:                                              ; preds = %386, %300
  br label %388

388:                                              ; preds = %387, %274
  br label %389

389:                                              ; preds = %388, %244
  br label %390

390:                                              ; preds = %389, %214
  br label %391

391:                                              ; preds = %390, %168
  br label %392

392:                                              ; preds = %391, %158
  br label %393

393:                                              ; preds = %392, %153
  br label %394

394:                                              ; preds = %393, %133
  br label %395

395:                                              ; preds = %394, %113
  br label %396

396:                                              ; preds = %395, %78
  br label %397

397:                                              ; preds = %396, %55
  br label %398

398:                                              ; preds = %397, %35
  store i32 0, i32* %6, align 4
  br label %399

399:                                              ; preds = %398, %372, %346, %320, %294, %269, %239, %198
  %400 = load i32, i32* %6, align 4
  ret i32 %400
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @isnan(i8*) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @parse_gamma_string(i8*, i8**) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32* @find_gamma_method(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @find_location_provider(i32*, i8*) #1

declare dso_local i32 @parse_transition_range(i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
