; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_InSymbol.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_InSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8, i8*, i32, i32, i8*, i8*, i32, %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { i8, i32* }

@MAXID = common dso_local global i32 0, align 4
@SUNDEFINED = common dso_local global i64 0, align 8
@SIDENT = common dso_local global i8* null, align 8
@SINUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid hexadecimal number\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid binary number\00", align 1
@SDNUM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SEOF = common dso_local global i64 0, align 8
@SEOLN = common dso_local global i8* null, align 8
@SCOMMENT = common dso_local global i64 0, align 8
@MAXSTR = common dso_local global i32 0, align 4
@SSTRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Unrecognized character: 0x%x\00", align 1
@SINCLUDE = common dso_local global i64 0, align 8
@MAXINCLUDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Too many recursion levels\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Filename expected\00", align 1
@cmsMAX_PATH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"File path too long\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"File %s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @InSymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InSymbol(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  br label %14

14:                                               ; preds = %533, %2
  br label %15

15:                                               ; preds = %21, %14
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = call i64 @isseparator(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i32 @NextCh(%struct.TYPE_9__* %22)
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = call i64 @isfirstidchar(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MAXID, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 %42, i8* %43, align 1
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @NextCh(%struct.TYPE_9__* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 8
  %52 = call i64 @isidchar(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %34, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  store i8 0, i8* %55, align 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @BinSrchKey(i8* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @SUNDEFINED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i8*, i8** @SIDENT, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %72

68:                                               ; preds = %54
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %63
  br label %532

73:                                               ; preds = %24
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 8
  %77 = call i64 @isdigit(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 8
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i8, i8* %93, align 8
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 43
  br i1 %96, label %97, label %392

97:                                               ; preds = %91, %85, %79, %73
  store i32 1, i32* %9, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i8, i8* %99, align 8
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 45
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  store i32 -1, i32* %9, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = call i32 @NextCh(%struct.TYPE_9__* %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  store i32 0, i32* %108, align 8
  %109 = load i64, i64* @SINUM, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 8
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 48
  br i1 %116, label %117, label %248

117:                                              ; preds = %106
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = call i32 @NextCh(%struct.TYPE_9__* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i8, i8* %121, align 8
  %123 = call signext i8 @toupper(i8 signext %122)
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 88
  br i1 %125, label %126, label %192

126:                                              ; preds = %117
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = call i32 @NextCh(%struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %180, %126
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i8, i8* %131, align 8
  %133 = call i64 @isxdigit(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %191

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i8, i8* %137, align 8
  %139 = call signext i8 @toupper(i8 signext %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i8 %139, i8* %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i8, i8* %143, align 8
  %145 = sext i8 %144 to i32
  %146 = icmp sge i32 %145, 65
  br i1 %146, label %147, label %160

147:                                              ; preds = %135
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i8, i8* %149, align 8
  %151 = sext i8 %150 to i32
  %152 = icmp sle i32 %151, 70
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i8, i8* %155, align 8
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, 65
  %159 = add nsw i32 %158, 10
  store i32 %159, i32* %10, align 4
  br label %166

160:                                              ; preds = %147, %135
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i8, i8* %162, align 8
  %164 = sext i8 %163 to i32
  %165 = sub nsw i32 %164, 48
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = sitofp i32 %169 to double
  %171 = fmul double %170, 1.600000e+01
  %172 = load i32, i32* %10, align 4
  %173 = sitofp i32 %172 to double
  %174 = fadd double %171, %173
  %175 = fcmp ogt double %174, 0x41DFFFFFFFC00000
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load i32, i32* %3, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %177, %struct.TYPE_9__* %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %647

180:                                              ; preds = %166
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %183, 16
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %184, %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = call i32 @NextCh(%struct.TYPE_9__* %189)
  br label %129

191:                                              ; preds = %129
  br label %647

192:                                              ; preds = %117
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i8, i8* %194, align 8
  %196 = call signext i8 @toupper(i8 signext %195)
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 66
  br i1 %198, label %199, label %247

199:                                              ; preds = %192
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %201 = call i32 @NextCh(%struct.TYPE_9__* %200)
  br label %202

202:                                              ; preds = %235, %199
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i8, i8* %204, align 8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 48
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i8, i8* %210, align 8
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 49
  br label %214

214:                                              ; preds = %208, %202
  %215 = phi i1 [ true, %202 ], [ %213, %208 ]
  br i1 %215, label %216, label %246

216:                                              ; preds = %214
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i8, i8* %218, align 8
  %220 = sext i8 %219 to i32
  %221 = sub nsw i32 %220, 48
  store i32 %221, i32* %11, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = sitofp i32 %224 to double
  %226 = fmul double %225, 2.000000e+00
  %227 = load i32, i32* %11, align 4
  %228 = sitofp i32 %227 to double
  %229 = fadd double %226, %228
  %230 = fcmp ogt double %229, 0x41DFFFFFFFC00000
  br i1 %230, label %231, label %235

231:                                              ; preds = %216
  %232 = load i32, i32* %3, align 4
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %234 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %232, %struct.TYPE_9__* %233, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %647

235:                                              ; preds = %216
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %238, 2
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %239, %240
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = call i32 @NextCh(%struct.TYPE_9__* %244)
  br label %202

246:                                              ; preds = %214
  br label %647

247:                                              ; preds = %192
  br label %248

248:                                              ; preds = %247, %106
  br label %249

249:                                              ; preds = %285, %248
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i8, i8* %251, align 8
  %253 = call i64 @isdigit(i8 signext %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %296

255:                                              ; preds = %249
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i8, i8* %257, align 8
  %259 = sext i8 %258 to i32
  %260 = sub nsw i32 %259, 48
  store i32 %260, i32* %12, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = sitofp i32 %263 to double
  %265 = fmul double %264, 1.000000e+01
  %266 = load i32, i32* %12, align 4
  %267 = sitofp i32 %266 to double
  %268 = fadd double %265, %267
  %269 = fcmp ogt double %268, 0x41DFFFFFFFC00000
  br i1 %269, label %270, label %285

270:                                              ; preds = %255
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @ReadReal(%struct.TYPE_9__* %271, i32 %274)
  %276 = load i8*, i8** @SDNUM, align 8
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %647

285:                                              ; preds = %255
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %288, 10
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %289, %290
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %295 = call i32 @NextCh(%struct.TYPE_9__* %294)
  br label %249

296:                                              ; preds = %249
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load i8, i8* %298, align 8
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 46
  br i1 %301, label %302, label %317

302:                                              ; preds = %296
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @ReadReal(%struct.TYPE_9__* %303, i32 %306)
  %308 = load i8*, i8** @SDNUM, align 8
  %309 = ptrtoint i8* %308 to i64
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = mul nsw i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %647

317:                                              ; preds = %296
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i8, i8* %324, align 8
  %326 = call i64 @isidchar(i8 signext %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %391

328:                                              ; preds = %317
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @SINUM, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %328
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 2
  %337 = load i8*, i8** %336, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @snprintf(i8* %337, i32 127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %340)
  br label %353

342:                                              ; preds = %328
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 5
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @snprintf(i8* %345, i32 127, i8* %348, i32 %351)
  br label %353

353:                                              ; preds = %342, %334
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 2
  %356 = load i8*, i8** %355, align 8
  %357 = call i64 @strlen(i8* %356)
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %6, align 4
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 2
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  store i8* %364, i8** %5, align 8
  br label %365

365:                                              ; preds = %379, %353
  %366 = load i32, i32* %6, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %6, align 4
  %368 = load i32, i32* @MAXID, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %365
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 1
  %373 = load i8, i8* %372, align 8
  %374 = load i8*, i8** %5, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %5, align 8
  store i8 %373, i8* %374, align 1
  br label %376

376:                                              ; preds = %370, %365
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %378 = call i32 @NextCh(%struct.TYPE_9__* %377)
  br label %379

379:                                              ; preds = %376
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load i8, i8* %381, align 8
  %383 = call i64 @isidchar(i8 signext %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %365, label %385

385:                                              ; preds = %379
  %386 = load i8*, i8** %5, align 8
  store i8 0, i8* %386, align 1
  %387 = load i8*, i8** @SIDENT, align 8
  %388 = ptrtoint i8* %387 to i64
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  br label %391

391:                                              ; preds = %385, %317
  br label %647

392:                                              ; preds = %91
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 1
  %395 = load i8, i8* %394, align 8
  %396 = sext i8 %395 to i32
  switch i32 %396, label %522 [
    i32 26, label %397
    i32 0, label %400
    i32 -1, label %400
    i32 13, label %404
    i32 10, label %424
    i32 35, label %435
    i32 39, label %465
    i32 34, label %465
  ]

397:                                              ; preds = %392
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %399 = call i32 @NextCh(%struct.TYPE_9__* %398)
  br label %530

400:                                              ; preds = %392, %392
  %401 = load i64, i64* @SEOF, align 8
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  store i64 %401, i64* %403, align 8
  br label %530

404:                                              ; preds = %392
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %406 = call i32 @NextCh(%struct.TYPE_9__* %405)
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 1
  %409 = load i8, i8* %408, align 8
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 10
  br i1 %411, label %412, label %415

412:                                              ; preds = %404
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %414 = call i32 @NextCh(%struct.TYPE_9__* %413)
  br label %415

415:                                              ; preds = %412, %404
  %416 = load i8*, i8** @SEOLN, align 8
  %417 = ptrtoint i8* %416 to i64
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 0
  store i64 %417, i64* %419, align 8
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 9
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 8
  br label %530

424:                                              ; preds = %392
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %426 = call i32 @NextCh(%struct.TYPE_9__* %425)
  %427 = load i8*, i8** @SEOLN, align 8
  %428 = ptrtoint i8* %427 to i64
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 0
  store i64 %428, i64* %430, align 8
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 9
  %433 = load i32, i32* %432, align 8
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 8
  br label %530

435:                                              ; preds = %392
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %437 = call i32 @NextCh(%struct.TYPE_9__* %436)
  br label %438

438:                                              ; preds = %458, %435
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 1
  %441 = load i8, i8* %440, align 8
  %442 = sext i8 %441 to i32
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %456

444:                                              ; preds = %438
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 1
  %447 = load i8, i8* %446, align 8
  %448 = sext i8 %447 to i32
  %449 = icmp ne i32 %448, 10
  br i1 %449, label %450, label %456

450:                                              ; preds = %444
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 1
  %453 = load i8, i8* %452, align 8
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 13
  br label %456

456:                                              ; preds = %450, %444, %438
  %457 = phi i1 [ false, %444 ], [ false, %438 ], [ %455, %450 ]
  br i1 %457, label %458, label %461

458:                                              ; preds = %456
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %460 = call i32 @NextCh(%struct.TYPE_9__* %459)
  br label %438

461:                                              ; preds = %456
  %462 = load i64, i64* @SCOMMENT, align 8
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 0
  store i64 %462, i64* %464, align 8
  br label %530

465:                                              ; preds = %392, %392
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 6
  %468 = load i8*, i8** %467, align 8
  store i8* %468, i8** %5, align 8
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 1
  %471 = load i8, i8* %470, align 8
  %472 = sext i8 %471 to i32
  store i32 %472, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %473 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %474 = call i32 @NextCh(%struct.TYPE_9__* %473)
  br label %475

475:                                              ; preds = %514, %465
  %476 = load i32, i32* %6, align 4
  %477 = load i32, i32* @MAXSTR, align 4
  %478 = sub nsw i32 %477, 1
  %479 = icmp slt i32 %476, %478
  br i1 %479, label %480, label %487

480:                                              ; preds = %475
  %481 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %481, i32 0, i32 1
  %483 = load i8, i8* %482, align 8
  %484 = sext i8 %483 to i32
  %485 = load i32, i32* %8, align 4
  %486 = icmp ne i32 %484, %485
  br label %487

487:                                              ; preds = %480, %475
  %488 = phi i1 [ false, %475 ], [ %486, %480 ]
  br i1 %488, label %489, label %515

489:                                              ; preds = %487
  %490 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i32 0, i32 1
  %492 = load i8, i8* %491, align 8
  %493 = sext i8 %492 to i32
  %494 = icmp eq i32 %493, 10
  br i1 %494, label %501, label %495

495:                                              ; preds = %489
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 1
  %498 = load i8, i8* %497, align 8
  %499 = sext i8 %498 to i32
  %500 = icmp eq i32 %499, 13
  br i1 %500, label %501, label %504

501:                                              ; preds = %495, %489
  %502 = load i32, i32* @MAXSTR, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %6, align 4
  br label %514

504:                                              ; preds = %495
  %505 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i8, i8* %506, align 8
  %508 = load i8*, i8** %5, align 8
  %509 = getelementptr inbounds i8, i8* %508, i32 1
  store i8* %509, i8** %5, align 8
  store i8 %507, i8* %508, align 1
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %511 = call i32 @NextCh(%struct.TYPE_9__* %510)
  %512 = load i32, i32* %6, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %6, align 4
  br label %514

514:                                              ; preds = %504, %501
  br label %475

515:                                              ; preds = %487
  %516 = load i64, i64* @SSTRING, align 8
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 0
  store i64 %516, i64* %518, align 8
  %519 = load i8*, i8** %5, align 8
  store i8 0, i8* %519, align 1
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %521 = call i32 @NextCh(%struct.TYPE_9__* %520)
  br label %530

522:                                              ; preds = %392
  %523 = load i32, i32* %3, align 4
  %524 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 1
  %527 = load i8, i8* %526, align 8
  %528 = sext i8 %527 to i32
  %529 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %523, %struct.TYPE_9__* %524, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %528)
  br label %647

530:                                              ; preds = %515, %461, %424, %415, %400, %397
  br label %531

531:                                              ; preds = %530
  br label %532

532:                                              ; preds = %531, %72
  br label %533

533:                                              ; preds = %532
  %534 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @SCOMMENT, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %14, label %539

539:                                              ; preds = %533
  %540 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @SINCLUDE, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %545, label %647

545:                                              ; preds = %539
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 7
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @MAXINCLUDE, align 4
  %550 = sub nsw i32 %549, 1
  %551 = icmp sge i32 %548, %550
  br i1 %551, label %552, label %556

552:                                              ; preds = %545
  %553 = load i32, i32* %3, align 4
  %554 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %555 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %553, %struct.TYPE_9__* %554, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %647

556:                                              ; preds = %545
  %557 = load i32, i32* %3, align 4
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  call void @InSymbol(i32 %557, %struct.TYPE_9__* %558)
  %559 = load i32, i32* %3, align 4
  %560 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %561 = load i64, i64* @SSTRING, align 8
  %562 = call i32 @Check(i32 %559, %struct.TYPE_9__* %560, i64 %561, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %565, label %564

564:                                              ; preds = %556
  br label %647

565:                                              ; preds = %556
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 8
  %568 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %567, align 8
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 7
  %571 = load i32, i32* %570, align 8
  %572 = add nsw i32 %571, 1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %568, i64 %573
  %575 = load %struct.TYPE_10__*, %struct.TYPE_10__** %574, align 8
  store %struct.TYPE_10__* %575, %struct.TYPE_10__** %13, align 8
  %576 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %577 = icmp eq %struct.TYPE_10__* %576, null
  br i1 %577, label %578, label %592

578:                                              ; preds = %565
  %579 = load i32, i32* %3, align 4
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %581 = call i64 @AllocChunk(i32 %579, %struct.TYPE_9__* %580, i32 16)
  %582 = inttoptr i64 %581 to %struct.TYPE_10__*
  %583 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 8
  %585 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %584, align 8
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %587 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %586, i32 0, i32 7
  %588 = load i32, i32* %587, align 8
  %589 = add nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %585, i64 %590
  store %struct.TYPE_10__* %582, %struct.TYPE_10__** %591, align 8
  store %struct.TYPE_10__* %582, %struct.TYPE_10__** %13, align 8
  br label %592

592:                                              ; preds = %578, %565
  %593 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %593, i32 0, i32 6
  %595 = load i8*, i8** %594, align 8
  %596 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 8
  %598 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %597, align 8
  %599 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %599, i32 0, i32 7
  %601 = load i32, i32* %600, align 8
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %598, i64 %602
  %604 = load %struct.TYPE_10__*, %struct.TYPE_10__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 0
  %606 = load i8, i8* %605, align 8
  %607 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %608 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %607, i32 0, i32 0
  %609 = load i8, i8* %608, align 8
  %610 = load i64, i64* @cmsMAX_PATH, align 8
  %611 = sub nsw i64 %610, 1
  %612 = call i64 @BuildAbsolutePath(i8* %595, i8 signext %606, i8 signext %609, i64 %611)
  %613 = load i64, i64* @FALSE, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %592
  %616 = load i32, i32* %3, align 4
  %617 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %618 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %616, %struct.TYPE_9__* %617, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %647

619:                                              ; preds = %592
  %620 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %621 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %620, i32 0, i32 0
  %622 = load i8, i8* %621, align 8
  %623 = call i32* @fopen(i8 signext %622, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %624 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %624, i32 0, i32 1
  store i32* %623, i32** %625, align 8
  %626 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %626, i32 0, i32 1
  %628 = load i32*, i32** %627, align 8
  %629 = icmp eq i32* %628, null
  br i1 %629, label %630, label %638

630:                                              ; preds = %619
  %631 = load i32, i32* %3, align 4
  %632 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %633 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %634 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %633, i32 0, i32 0
  %635 = load i8, i8* %634, align 8
  %636 = sext i8 %635 to i32
  %637 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @SynError(i32 %631, %struct.TYPE_9__* %632, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %636)
  br label %647

638:                                              ; preds = %619
  %639 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %639, i32 0, i32 7
  %641 = load i32, i32* %640, align 8
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %640, align 8
  %643 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %644 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %643, i32 0, i32 1
  store i8 32, i8* %644, align 8
  %645 = load i32, i32* %3, align 4
  %646 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  call void @InSymbol(i32 %645, %struct.TYPE_9__* %646)
  br label %647

647:                                              ; preds = %176, %191, %231, %246, %270, %302, %391, %522, %552, %564, %615, %630, %638, %539
  ret void
}

declare dso_local i64 @isseparator(i8 signext) #1

declare dso_local i32 @NextCh(%struct.TYPE_9__*) #1

declare dso_local i64 @isfirstidchar(i8 signext) #1

declare dso_local i64 @isidchar(i8 signext) #1

declare dso_local i64 @BinSrchKey(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @SynError(i32, %struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @ReadReal(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Check(i32, %struct.TYPE_9__*, i64, i8*) #1

declare dso_local i64 @AllocChunk(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @BuildAbsolutePath(i8*, i8 signext, i8 signext, i64) #1

declare dso_local i32* @fopen(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
