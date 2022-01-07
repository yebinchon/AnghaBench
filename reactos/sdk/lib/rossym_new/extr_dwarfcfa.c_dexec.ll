; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfcfa.c_dexec.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfcfa.c_dexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_25__**, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"end dexec\00", align 1
@nil = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"ran out of instructions during cfa program\00", align 1
@trace = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%r\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"+ loc=0x%x op 0x%x \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"loc += %ld\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"r%ld += %ld\00", align 1
@RuleCfaOffset = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"r%ld = init\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"loc = 0x%lx\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"r%ld = undef\00", align 1
@RuleUndef = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"r%ld = same\00", align 1
@RuleSame = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"r%ld = r%ld\00", align 1
@RuleRegister = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"restore state underflow\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"cfa %ld(r%ld)\00", align 1
@RuleRegOff = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"cfa reg r%ld\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"change CFA register but CFA not in register+offset form\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"cfa off %ld\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"change CFA offset but CFA not in register+offset form\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"cfa expr\00", align 1
@RuleLocation = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"reg expr r%ld\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"unknown opcode 0x%x in cfa program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i32)* @dexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dexec(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %13

13:                                               ; preds = %557, %516, %505, %479, %438, %390, %356, %278, %246, %223, %186, %169, %149, %114, %89, %3
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %609

34:                                               ; preds = %13
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = call i8* @dwarfget1(%struct.TYPE_26__* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @nil, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @trace, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  store i32 -1, i32* %4, align 4
  br label %609

50:                                               ; preds = %34
  %51 = load i64, i64* @trace, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 6
  switch i32 %61, label %162 [
    i32 1, label %62
    i32 2, label %90
    i32 3, label %133
  ]

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %194, %191, %187, %62
  %67 = load i64, i64* @trace, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = mul nsw i64 %70, %73
  %75 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %77, %80
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %609

89:                                               ; preds = %76
  br label %13

90:                                               ; preds = %59
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 63
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %9, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %95 = call i8* @dwarfget128(%struct.TYPE_26__* %94)
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %591, %197, %90
  %98 = load i64, i64* @trace, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = mul nsw i64 %102, %105
  %107 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %101, i64 %106)
  br label %108

108:                                              ; preds = %100, %97
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @checkreg(%struct.TYPE_24__* %109, i64 %110)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 -1, i32* %4, align 4
  br label %609

114:                                              ; preds = %108
  %115 = load i8*, i8** @RuleCfaOffset, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 3
  store i8* %115, i8** %121, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = mul nsw i64 %122, %125
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  store i64 %126, i64* %132, align 8
  br label %13

133:                                              ; preds = %59
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 63
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %204, %133
  %138 = load i64, i64* @trace, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i64, i64* %9, align 8
  %142 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @checkreg(%struct.TYPE_24__* %144, i64 %145)
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %609

149:                                              ; preds = %143
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i64 %153
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 9
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i64 %158
  %160 = bitcast %struct.TYPE_25__* %154 to i8*
  %161 = bitcast %struct.TYPE_25__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 40, i1 false)
  br label %13

162:                                              ; preds = %59
  %163 = load i32, i32* %8, align 4
  switch i32 %163, label %606 [
    i32 0, label %164
    i32 1, label %170
    i32 2, label %187
    i32 3, label %191
    i32 4, label %194
    i32 5, label %197
    i32 6, label %204
    i32 7, label %208
    i32 8, label %231
    i32 9, label %254
    i32 10, label %293
    i32 11, label %378
    i32 12, label %418
    i32 13, label %454
    i32 14, label %485
    i32 15, label %511
    i32 16, label %542
    i32 17, label %591
    i32 18, label %597
    i32 19, label %603
  ]

164:                                              ; preds = %162
  %165 = load i64, i64* @trace, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  br label %13

170:                                              ; preds = %162
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %172 = call i64 @dwarfgetaddr(%struct.TYPE_26__* %171)
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* @trace, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %180)
  br label %182

182:                                              ; preds = %177, %170
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %609

186:                                              ; preds = %182
  br label %13

187:                                              ; preds = %162
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %189 = call i8* @dwarfget1(%struct.TYPE_26__* %188)
  %190 = ptrtoint i8* %189 to i64
  store i64 %190, i64* %9, align 8
  br label %66

191:                                              ; preds = %162
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %193 = call i64 @dwarfget2(%struct.TYPE_26__* %192)
  store i64 %193, i64* %9, align 8
  br label %66

194:                                              ; preds = %162
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %196 = call i64 @dwarfget4(%struct.TYPE_26__* %195)
  store i64 %196, i64* %9, align 8
  br label %66

197:                                              ; preds = %162
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %199 = call i8* @dwarfget128(%struct.TYPE_26__* %198)
  %200 = ptrtoint i8* %199 to i64
  store i64 %200, i64* %9, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %202 = call i8* @dwarfget128(%struct.TYPE_26__* %201)
  %203 = ptrtoint i8* %202 to i64
  store i64 %203, i64* %10, align 8
  br label %97

204:                                              ; preds = %162
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %206 = call i8* @dwarfget128(%struct.TYPE_26__* %205)
  %207 = ptrtoint i8* %206 to i64
  store i64 %207, i64* %9, align 8
  br label %137

208:                                              ; preds = %162
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %210 = call i8* @dwarfget128(%struct.TYPE_26__* %209)
  %211 = ptrtoint i8* %210 to i64
  store i64 %211, i64* %9, align 8
  %212 = load i64, i64* @trace, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load i64, i64* %9, align 8
  %216 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @checkreg(%struct.TYPE_24__* %218, i64 %219)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 -1, i32* %4, align 4
  br label %609

223:                                              ; preds = %217
  %224 = load i8*, i8** @RuleUndef, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 3
  store i8* %224, i8** %230, align 8
  br label %13

231:                                              ; preds = %162
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %233 = call i8* @dwarfget128(%struct.TYPE_26__* %232)
  %234 = ptrtoint i8* %233 to i64
  store i64 %234, i64* %9, align 8
  %235 = load i64, i64* @trace, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i64, i64* %9, align 8
  %239 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %238)
  br label %240

240:                                              ; preds = %237, %231
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %242 = load i64, i64* %9, align 8
  %243 = call i32 @checkreg(%struct.TYPE_24__* %241, i64 %242)
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 -1, i32* %4, align 4
  br label %609

246:                                              ; preds = %240
  %247 = load i8*, i8** @RuleSame, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %249, align 8
  %251 = load i64, i64* %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 3
  store i8* %247, i8** %253, align 8
  br label %13

254:                                              ; preds = %162
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %256 = call i8* @dwarfget128(%struct.TYPE_26__* %255)
  %257 = ptrtoint i8* %256 to i64
  store i64 %257, i64* %9, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %259 = call i8* @dwarfget128(%struct.TYPE_26__* %258)
  %260 = ptrtoint i8* %259 to i64
  store i64 %260, i64* %10, align 8
  %261 = load i64, i64* @trace, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %254
  %264 = load i64, i64* %9, align 8
  %265 = load i64, i64* %10, align 8
  %266 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %264, i64 %265)
  br label %267

267:                                              ; preds = %263, %254
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %269 = load i64, i64* %9, align 8
  %270 = call i32 @checkreg(%struct.TYPE_24__* %268, i64 %269)
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %274 = load i64, i64* %10, align 8
  %275 = call i32 @checkreg(%struct.TYPE_24__* %273, i64 %274)
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272, %267
  store i32 -1, i32* %4, align 4
  br label %609

278:                                              ; preds = %272
  %279 = load i8*, i8** @RuleRegister, align 8
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 6
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 3
  store i8* %279, i8** %285, align 8
  %286 = load i64, i64* %10, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 6
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %288, align 8
  %290 = load i64, i64* %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 1
  store i64 %286, i64* %292, align 8
  br label %13

293:                                              ; preds = %162
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = mul i64 %297, 40
  %299 = trunc i64 %298 to i32
  %300 = call i8* @malloc(i32 %299)
  %301 = bitcast i8* %300 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %301, %struct.TYPE_25__** %11, align 8
  %302 = load i64, i64* @trace, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %293
  %305 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %293
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %308 = load i64, i64* @nil, align 8
  %309 = inttoptr i64 %308 to %struct.TYPE_25__*
  %310 = icmp eq %struct.TYPE_25__* %307, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  store i32 -1, i32* %4, align 4
  br label %609

312:                                              ; preds = %306
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 8
  %318 = trunc i64 %317 to i32
  %319 = call i8* @malloc(i32 %318)
  store i8* %319, i8** %12, align 8
  %320 = load i8*, i8** %12, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 8
  %323 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %322, align 8
  %324 = bitcast %struct.TYPE_25__** %323 to %struct.TYPE_25__*
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 8
  %330 = trunc i64 %329 to i32
  %331 = call i32 @RtlMoveMemory(i8* %320, %struct.TYPE_25__* %324, i32 %330)
  %332 = load i8*, i8** %12, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %344

334:                                              ; preds = %312
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 8
  %337 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %336, align 8
  %338 = bitcast %struct.TYPE_25__** %337 to %struct.TYPE_25__*
  %339 = call i32 @free(%struct.TYPE_25__* %338)
  %340 = load i8*, i8** %12, align 8
  %341 = bitcast i8* %340 to %struct.TYPE_25__**
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 8
  store %struct.TYPE_25__** %341, %struct.TYPE_25__*** %343, align 8
  br label %347

344:                                              ; preds = %312
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %346 = call i32 @free(%struct.TYPE_25__* %345)
  store i32 -1, i32* %4, align 4
  br label %609

347:                                              ; preds = %334
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @nil, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %355 = call i32 @free(%struct.TYPE_25__* %354)
  store i32 -1, i32* %4, align 4
  br label %609

356:                                              ; preds = %347
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 8
  %360 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %359, align 8
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %360, i64 %365
  store %struct.TYPE_25__* %357, %struct.TYPE_25__** %366, align 8
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 40
  %376 = trunc i64 %375 to i32
  %377 = call i32 @memmove(%struct.TYPE_25__* %367, %struct.TYPE_25__* %370, i32 %376)
  br label %13

378:                                              ; preds = %162
  %379 = load i64, i64* @trace, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %383

383:                                              ; preds = %381, %378
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %609

390:                                              ; preds = %383
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 8
  %393 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %392, align 8
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %393, i64 %398
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %399, align 8
  store %struct.TYPE_25__* %400, %struct.TYPE_25__** %11, align 8
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 6
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %402, align 8
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = sext i32 %407 to i64
  %409 = mul i64 %408, 40
  %410 = trunc i64 %409 to i32
  %411 = call i32 @memmove(%struct.TYPE_25__* %403, %struct.TYPE_25__* %404, i32 %410)
  %412 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %413 = call i32 @free(%struct.TYPE_25__* %412)
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %414, i32 0, i32 5
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %415, align 4
  br label %13

418:                                              ; preds = %162
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %420 = call i8* @dwarfget128(%struct.TYPE_26__* %419)
  %421 = ptrtoint i8* %420 to i64
  store i64 %421, i64* %9, align 8
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %423 = call i8* @dwarfget128(%struct.TYPE_26__* %422)
  %424 = ptrtoint i8* %423 to i64
  store i64 %424, i64* %10, align 8
  br label %425

425:                                              ; preds = %597, %418
  %426 = load i64, i64* @trace, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load i64, i64* %10, align 8
  %430 = load i64, i64* %9, align 8
  %431 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %429, i64 %430)
  br label %432

432:                                              ; preds = %428, %425
  %433 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %434 = load i64, i64* %9, align 8
  %435 = call i32 @checkreg(%struct.TYPE_24__* %433, i64 %434)
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  store i32 -1, i32* %4, align 4
  br label %609

438:                                              ; preds = %432
  %439 = load i8*, i8** @RuleRegOff, align 8
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 7
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 3
  store i8* %439, i8** %443, align 8
  %444 = load i64, i64* %9, align 8
  %445 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %445, i32 0, i32 7
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 0
  store i64 %444, i64* %448, align 8
  %449 = load i64, i64* %10, align 8
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 7
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 1
  store i64 %449, i64* %453, align 8
  br label %13

454:                                              ; preds = %162
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %456 = call i8* @dwarfget128(%struct.TYPE_26__* %455)
  %457 = ptrtoint i8* %456 to i64
  store i64 %457, i64* %9, align 8
  %458 = load i64, i64* @trace, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %454
  %461 = load i64, i64* %9, align 8
  %462 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 %461)
  br label %463

463:                                              ; preds = %460, %454
  %464 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 7
  %466 = load %struct.TYPE_22__*, %struct.TYPE_22__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = load i8*, i8** @RuleRegOff, align 8
  %470 = icmp ne i8* %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %463
  %472 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %609

473:                                              ; preds = %463
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %475 = load i64, i64* %9, align 8
  %476 = call i32 @checkreg(%struct.TYPE_24__* %474, i64 %475)
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %473
  store i32 -1, i32* %4, align 4
  br label %609

479:                                              ; preds = %473
  %480 = load i64, i64* %9, align 8
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 7
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 0
  store i64 %480, i64* %484, align 8
  br label %13

485:                                              ; preds = %162
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %487 = call i8* @dwarfget128(%struct.TYPE_26__* %486)
  %488 = ptrtoint i8* %487 to i64
  store i64 %488, i64* %9, align 8
  br label %489

489:                                              ; preds = %603, %485
  %490 = load i64, i64* @trace, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load i64, i64* %9, align 8
  %494 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i64 %493)
  br label %495

495:                                              ; preds = %492, %489
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 7
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 3
  %500 = load i8*, i8** %499, align 8
  %501 = load i8*, i8** @RuleRegOff, align 8
  %502 = icmp ne i8* %500, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %495
  %504 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %609

505:                                              ; preds = %495
  %506 = load i64, i64* %9, align 8
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i32 0, i32 7
  %509 = load %struct.TYPE_22__*, %struct.TYPE_22__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %509, i32 0, i32 1
  store i64 %506, i64* %510, align 8
  br label %13

511:                                              ; preds = %162
  %512 = load i64, i64* @trace, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %511
  %515 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  br label %516

516:                                              ; preds = %514, %511
  %517 = load i8*, i8** @RuleLocation, align 8
  %518 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %518, i32 0, i32 7
  %520 = load %struct.TYPE_22__*, %struct.TYPE_22__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %520, i32 0, i32 3
  store i8* %517, i8** %521, align 8
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %523 = call i8* @dwarfget128(%struct.TYPE_26__* %522)
  %524 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %524, i32 0, i32 7
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %527, i32 0, i32 0
  store i8* %523, i8** %528, align 8
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %530 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %531 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %530, i32 0, i32 7
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 0
  %535 = load i8*, i8** %534, align 8
  %536 = call i8* @dwarfgetnref(%struct.TYPE_26__* %529, i8* %535)
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 7
  %539 = load %struct.TYPE_22__*, %struct.TYPE_22__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %540, i32 0, i32 1
  store i8* %536, i8** %541, align 8
  br label %13

542:                                              ; preds = %162
  %543 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %544 = call i8* @dwarfget128(%struct.TYPE_26__* %543)
  %545 = ptrtoint i8* %544 to i64
  store i64 %545, i64* %9, align 8
  %546 = load i64, i64* @trace, align 8
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %551

548:                                              ; preds = %542
  %549 = load i64, i64* %9, align 8
  %550 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 %549)
  br label %551

551:                                              ; preds = %548, %542
  %552 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %553 = load i64, i64* %9, align 8
  %554 = call i32 @checkreg(%struct.TYPE_24__* %552, i64 %553)
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %551
  store i32 -1, i32* %4, align 4
  br label %609

557:                                              ; preds = %551
  %558 = load i8*, i8** @RuleLocation, align 8
  %559 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %559, i32 0, i32 6
  %561 = load %struct.TYPE_25__*, %struct.TYPE_25__** %560, align 8
  %562 = load i64, i64* %9, align 8
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %561, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %563, i32 0, i32 3
  store i8* %558, i8** %564, align 8
  %565 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %566 = call i8* @dwarfget128(%struct.TYPE_26__* %565)
  %567 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %567, i32 0, i32 6
  %569 = load %struct.TYPE_25__*, %struct.TYPE_25__** %568, align 8
  %570 = load i64, i64* %9, align 8
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %569, i64 %570
  %572 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %572, i32 0, i32 0
  store i8* %566, i8** %573, align 8
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %575 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %575, i32 0, i32 6
  %577 = load %struct.TYPE_25__*, %struct.TYPE_25__** %576, align 8
  %578 = load i64, i64* %9, align 8
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %577, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %579, i32 0, i32 2
  %581 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %580, i32 0, i32 0
  %582 = load i8*, i8** %581, align 8
  %583 = call i8* @dwarfgetnref(%struct.TYPE_26__* %574, i8* %582)
  %584 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %584, i32 0, i32 6
  %586 = load %struct.TYPE_25__*, %struct.TYPE_25__** %585, align 8
  %587 = load i64, i64* %9, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %586, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %588, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %589, i32 0, i32 1
  store i8* %583, i8** %590, align 8
  br label %13

591:                                              ; preds = %162
  %592 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %593 = call i8* @dwarfget128(%struct.TYPE_26__* %592)
  %594 = ptrtoint i8* %593 to i64
  store i64 %594, i64* %9, align 8
  %595 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %596 = call i64 @dwarfget128s(%struct.TYPE_26__* %595)
  store i64 %596, i64* %10, align 8
  br label %97

597:                                              ; preds = %162
  %598 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %599 = call i8* @dwarfget128(%struct.TYPE_26__* %598)
  %600 = ptrtoint i8* %599 to i64
  store i64 %600, i64* %9, align 8
  %601 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %602 = call i64 @dwarfget128s(%struct.TYPE_26__* %601)
  store i64 %602, i64* %10, align 8
  br label %425

603:                                              ; preds = %162
  %604 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %605 = call i64 @dwarfget128s(%struct.TYPE_26__* %604)
  store i64 %605, i64* %9, align 8
  br label %489

606:                                              ; preds = %162
  %607 = load i32, i32* %8, align 4
  %608 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 %607)
  store i32 -1, i32* %4, align 4
  br label %609

609:                                              ; preds = %606, %556, %503, %478, %471, %437, %388, %353, %344, %311, %277, %245, %222, %185, %148, %113, %88, %49, %32
  %610 = load i32, i32* %4, align 4
  ret i32 %610
}

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i8* @dwarfget1(%struct.TYPE_26__*) #1

declare dso_local i8* @dwarfget128(%struct.TYPE_26__*) #1

declare dso_local i32 @checkreg(%struct.TYPE_24__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @dwarfgetaddr(%struct.TYPE_26__*) #1

declare dso_local i64 @dwarfget2(%struct.TYPE_26__*) #1

declare dso_local i64 @dwarfget4(%struct.TYPE_26__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @RtlMoveMemory(i8*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_25__*) #1

declare dso_local i32 @memmove(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i8* @dwarfgetnref(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @dwarfget128s(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
