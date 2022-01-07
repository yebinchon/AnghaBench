; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfcfa.c_dexec.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfcfa.c_dexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_25__**, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { i8*, i8* }

@nil = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"ran out of instructions during cfa program\00", align 1
@trace = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%r\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"+ loc=0x%lux op 0x%ux \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"loc += %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"r%ld += %ld\0A\00", align 1
@RuleCfaOffset = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"r%ld = init\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"nop\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"loc = 0x%lux\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"r%ld = undef\0A\00", align 1
@RuleUndef = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"r%ld = same\0A\00", align 1
@RuleSame = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"r%ld = r%ld\0A\00", align 1
@RuleRegister = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"push\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pop\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"restore state underflow\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"cfa %ld(r%ld)\0A\00", align 1
@RuleRegOff = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"cfa reg r%ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"change CFA register but CFA not in register+offset form\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cfa off %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"change CFA offset but CFA not in register+offset form\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"cfa expr\0A\00", align 1
@RuleLocation = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"reg expr r%ld\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"unknown opcode 0x%ux in cfa program\00", align 1
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

13:                                               ; preds = %556, %515, %504, %478, %437, %389, %355, %277, %245, %222, %185, %168, %148, %113, %88, %3
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %33

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
  store i32 0, i32* %4, align 4
  br label %608

33:                                               ; preds = %13
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = call i8* @dwarfget1(%struct.TYPE_26__* %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @nil, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* @trace, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  store i32 -1, i32* %4, align 4
  br label %608

49:                                               ; preds = %33
  %50 = load i64, i64* @trace, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 6
  switch i32 %60, label %161 [
    i32 1, label %61
    i32 2, label %89
    i32 3, label %132
  ]

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 63
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %193, %190, %186, %61
  %66 = load i64, i64* @trace, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = mul nsw i64 %69, %72
  %74 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = mul nsw i64 %76, %79
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %608

88:                                               ; preds = %75
  br label %13

89:                                               ; preds = %58
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 63
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %9, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %94 = call i8* @dwarfget128(%struct.TYPE_26__* %93)
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %590, %196, %89
  %97 = load i64, i64* @trace, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = mul nsw i64 %101, %104
  %106 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %100, i64 %105)
  br label %107

107:                                              ; preds = %99, %96
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @checkreg(%struct.TYPE_24__* %108, i64 %109)
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  br label %608

113:                                              ; preds = %107
  %114 = load i8*, i8** @RuleCfaOffset, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 3
  store i8* %114, i8** %120, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = mul nsw i64 %121, %124
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  store i64 %125, i64* %131, align 8
  br label %13

132:                                              ; preds = %58
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 63
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %203, %132
  %137 = load i64, i64* @trace, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i64, i64* %9, align 8
  %141 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @checkreg(%struct.TYPE_24__* %143, i64 %144)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %608

148:                                              ; preds = %142
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i64 %152
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 9
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i64 %157
  %159 = bitcast %struct.TYPE_25__* %153 to i8*
  %160 = bitcast %struct.TYPE_25__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 40, i1 false)
  br label %13

161:                                              ; preds = %58
  %162 = load i32, i32* %8, align 4
  switch i32 %162, label %605 [
    i32 0, label %163
    i32 1, label %169
    i32 2, label %186
    i32 3, label %190
    i32 4, label %193
    i32 5, label %196
    i32 6, label %203
    i32 7, label %207
    i32 8, label %230
    i32 9, label %253
    i32 10, label %292
    i32 11, label %377
    i32 12, label %417
    i32 13, label %453
    i32 14, label %484
    i32 15, label %510
    i32 16, label %541
    i32 17, label %590
    i32 18, label %596
    i32 19, label %602
  ]

163:                                              ; preds = %161
  %164 = load i64, i64* @trace, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %163
  br label %13

169:                                              ; preds = %161
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = call i64 @dwarfgetaddr(%struct.TYPE_26__* %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* @trace, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %179)
  br label %181

181:                                              ; preds = %176, %169
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %608

185:                                              ; preds = %181
  br label %13

186:                                              ; preds = %161
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %188 = call i8* @dwarfget1(%struct.TYPE_26__* %187)
  %189 = ptrtoint i8* %188 to i64
  store i64 %189, i64* %9, align 8
  br label %65

190:                                              ; preds = %161
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %192 = call i64 @dwarfget2(%struct.TYPE_26__* %191)
  store i64 %192, i64* %9, align 8
  br label %65

193:                                              ; preds = %161
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %195 = call i64 @dwarfget4(%struct.TYPE_26__* %194)
  store i64 %195, i64* %9, align 8
  br label %65

196:                                              ; preds = %161
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %198 = call i8* @dwarfget128(%struct.TYPE_26__* %197)
  %199 = ptrtoint i8* %198 to i64
  store i64 %199, i64* %9, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %201 = call i8* @dwarfget128(%struct.TYPE_26__* %200)
  %202 = ptrtoint i8* %201 to i64
  store i64 %202, i64* %10, align 8
  br label %96

203:                                              ; preds = %161
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %205 = call i8* @dwarfget128(%struct.TYPE_26__* %204)
  %206 = ptrtoint i8* %205 to i64
  store i64 %206, i64* %9, align 8
  br label %136

207:                                              ; preds = %161
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %209 = call i8* @dwarfget128(%struct.TYPE_26__* %208)
  %210 = ptrtoint i8* %209 to i64
  store i64 %210, i64* %9, align 8
  %211 = load i64, i64* @trace, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i64, i64* %9, align 8
  %215 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %214)
  br label %216

216:                                              ; preds = %213, %207
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %218 = load i64, i64* %9, align 8
  %219 = call i32 @checkreg(%struct.TYPE_24__* %217, i64 %218)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 -1, i32* %4, align 4
  br label %608

222:                                              ; preds = %216
  %223 = load i8*, i8** @RuleUndef, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 6
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = load i64, i64* %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 3
  store i8* %223, i8** %229, align 8
  br label %13

230:                                              ; preds = %161
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %232 = call i8* @dwarfget128(%struct.TYPE_26__* %231)
  %233 = ptrtoint i8* %232 to i64
  store i64 %233, i64* %9, align 8
  %234 = load i64, i64* @trace, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i64, i64* %9, align 8
  %238 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %237)
  br label %239

239:                                              ; preds = %236, %230
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @checkreg(%struct.TYPE_24__* %240, i64 %241)
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 -1, i32* %4, align 4
  br label %608

245:                                              ; preds = %239
  %246 = load i8*, i8** @RuleSame, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 3
  store i8* %246, i8** %252, align 8
  br label %13

253:                                              ; preds = %161
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %255 = call i8* @dwarfget128(%struct.TYPE_26__* %254)
  %256 = ptrtoint i8* %255 to i64
  store i64 %256, i64* %9, align 8
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %258 = call i8* @dwarfget128(%struct.TYPE_26__* %257)
  %259 = ptrtoint i8* %258 to i64
  store i64 %259, i64* %10, align 8
  %260 = load i64, i64* @trace, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %253
  %263 = load i64, i64* %9, align 8
  %264 = load i64, i64* %10, align 8
  %265 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %263, i64 %264)
  br label %266

266:                                              ; preds = %262, %253
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %268 = load i64, i64* %9, align 8
  %269 = call i32 @checkreg(%struct.TYPE_24__* %267, i64 %268)
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %273 = load i64, i64* %10, align 8
  %274 = call i32 @checkreg(%struct.TYPE_24__* %272, i64 %273)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271, %266
  store i32 -1, i32* %4, align 4
  br label %608

277:                                              ; preds = %271
  %278 = load i8*, i8** @RuleRegister, align 8
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 6
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %280, align 8
  %282 = load i64, i64* %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 3
  store i8* %278, i8** %284, align 8
  %285 = load i64, i64* %10, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 6
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %287, align 8
  %289 = load i64, i64* %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 1
  store i64 %285, i64* %291, align 8
  br label %13

292:                                              ; preds = %161
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 40
  %298 = trunc i64 %297 to i32
  %299 = call i8* @malloc(i32 %298)
  %300 = bitcast i8* %299 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %300, %struct.TYPE_25__** %11, align 8
  %301 = load i64, i64* @trace, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %292
  %304 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %292
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %307 = load i64, i64* @nil, align 8
  %308 = inttoptr i64 %307 to %struct.TYPE_25__*
  %309 = icmp eq %struct.TYPE_25__* %306, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  store i32 -1, i32* %4, align 4
  br label %608

311:                                              ; preds = %305
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = mul i64 %315, 8
  %317 = trunc i64 %316 to i32
  %318 = call i8* @malloc(i32 %317)
  store i8* %318, i8** %12, align 8
  %319 = load i8*, i8** %12, align 8
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 8
  %322 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %321, align 8
  %323 = bitcast %struct.TYPE_25__** %322 to %struct.TYPE_25__*
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 8
  %329 = trunc i64 %328 to i32
  %330 = call i32 @RtlMoveMemory(i8* %319, %struct.TYPE_25__* %323, i32 %329)
  %331 = load i8*, i8** %12, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %343

333:                                              ; preds = %311
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 8
  %336 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %335, align 8
  %337 = bitcast %struct.TYPE_25__** %336 to %struct.TYPE_25__*
  %338 = call i32 @free(%struct.TYPE_25__* %337)
  %339 = load i8*, i8** %12, align 8
  %340 = bitcast i8* %339 to %struct.TYPE_25__**
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 8
  store %struct.TYPE_25__** %340, %struct.TYPE_25__*** %342, align 8
  br label %346

343:                                              ; preds = %311
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %345 = call i32 @free(%struct.TYPE_25__* %344)
  store i32 -1, i32* %4, align 4
  br label %608

346:                                              ; preds = %333
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @nil, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %354 = call i32 @free(%struct.TYPE_25__* %353)
  store i32 -1, i32* %4, align 4
  br label %608

355:                                              ; preds = %346
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 8
  %359 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %358, align 8
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %359, i64 %364
  store %struct.TYPE_25__* %356, %struct.TYPE_25__** %365, align 8
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 6
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %368, align 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = mul i64 %373, 40
  %375 = trunc i64 %374 to i32
  %376 = call i32 @memmove(%struct.TYPE_25__* %366, %struct.TYPE_25__* %369, i32 %375)
  br label %13

377:                                              ; preds = %161
  %378 = load i64, i64* @trace, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %377
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %608

389:                                              ; preds = %382
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 8
  %392 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %391, align 8
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 4
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %392, i64 %397
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %398, align 8
  store %struct.TYPE_25__* %399, %struct.TYPE_25__** %11, align 8
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 6
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %401, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = mul i64 %407, 40
  %409 = trunc i64 %408 to i32
  %410 = call i32 @memmove(%struct.TYPE_25__* %402, %struct.TYPE_25__* %403, i32 %409)
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %412 = call i32 @free(%struct.TYPE_25__* %411)
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %414, align 4
  br label %13

417:                                              ; preds = %161
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %419 = call i8* @dwarfget128(%struct.TYPE_26__* %418)
  %420 = ptrtoint i8* %419 to i64
  store i64 %420, i64* %9, align 8
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %422 = call i8* @dwarfget128(%struct.TYPE_26__* %421)
  %423 = ptrtoint i8* %422 to i64
  store i64 %423, i64* %10, align 8
  br label %424

424:                                              ; preds = %596, %417
  %425 = load i64, i64* @trace, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i64, i64* %10, align 8
  %429 = load i64, i64* %9, align 8
  %430 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64 %428, i64 %429)
  br label %431

431:                                              ; preds = %427, %424
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %433 = load i64, i64* %9, align 8
  %434 = call i32 @checkreg(%struct.TYPE_24__* %432, i64 %433)
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %431
  store i32 -1, i32* %4, align 4
  br label %608

437:                                              ; preds = %431
  %438 = load i8*, i8** @RuleRegOff, align 8
  %439 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %439, i32 0, i32 7
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 3
  store i8* %438, i8** %442, align 8
  %443 = load i64, i64* %9, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 7
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 0
  store i64 %443, i64* %447, align 8
  %448 = load i64, i64* %10, align 8
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %449, i32 0, i32 7
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 1
  store i64 %448, i64* %452, align 8
  br label %13

453:                                              ; preds = %161
  %454 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %455 = call i8* @dwarfget128(%struct.TYPE_26__* %454)
  %456 = ptrtoint i8* %455 to i64
  store i64 %456, i64* %9, align 8
  %457 = load i64, i64* @trace, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %453
  %460 = load i64, i64* %9, align 8
  %461 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %460)
  br label %462

462:                                              ; preds = %459, %453
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 7
  %465 = load %struct.TYPE_22__*, %struct.TYPE_22__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %465, i32 0, i32 3
  %467 = load i8*, i8** %466, align 8
  %468 = load i8*, i8** @RuleRegOff, align 8
  %469 = icmp ne i8* %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %462
  %471 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %608

472:                                              ; preds = %462
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %474 = load i64, i64* %9, align 8
  %475 = call i32 @checkreg(%struct.TYPE_24__* %473, i64 %474)
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  store i32 -1, i32* %4, align 4
  br label %608

478:                                              ; preds = %472
  %479 = load i64, i64* %9, align 8
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 7
  %482 = load %struct.TYPE_22__*, %struct.TYPE_22__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %482, i32 0, i32 0
  store i64 %479, i64* %483, align 8
  br label %13

484:                                              ; preds = %161
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %486 = call i8* @dwarfget128(%struct.TYPE_26__* %485)
  %487 = ptrtoint i8* %486 to i64
  store i64 %487, i64* %9, align 8
  br label %488

488:                                              ; preds = %602, %484
  %489 = load i64, i64* @trace, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load i64, i64* %9, align 8
  %493 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 %492)
  br label %494

494:                                              ; preds = %491, %488
  %495 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %495, i32 0, i32 7
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 3
  %499 = load i8*, i8** %498, align 8
  %500 = load i8*, i8** @RuleRegOff, align 8
  %501 = icmp ne i8* %499, %500
  br i1 %501, label %502, label %504

502:                                              ; preds = %494
  %503 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %608

504:                                              ; preds = %494
  %505 = load i64, i64* %9, align 8
  %506 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %506, i32 0, i32 7
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 1
  store i64 %505, i64* %509, align 8
  br label %13

510:                                              ; preds = %161
  %511 = load i64, i64* @trace, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %510
  %514 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %515

515:                                              ; preds = %513, %510
  %516 = load i8*, i8** @RuleLocation, align 8
  %517 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 7
  %519 = load %struct.TYPE_22__*, %struct.TYPE_22__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %519, i32 0, i32 3
  store i8* %516, i8** %520, align 8
  %521 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %522 = call i8* @dwarfget128(%struct.TYPE_26__* %521)
  %523 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %523, i32 0, i32 7
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  store i8* %522, i8** %527, align 8
  %528 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i32 0, i32 7
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %532, i32 0, i32 0
  %534 = load i8*, i8** %533, align 8
  %535 = call i8* @dwarfgetnref(%struct.TYPE_26__* %528, i8* %534)
  %536 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %536, i32 0, i32 7
  %538 = load %struct.TYPE_22__*, %struct.TYPE_22__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %539, i32 0, i32 1
  store i8* %535, i8** %540, align 8
  br label %13

541:                                              ; preds = %161
  %542 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %543 = call i8* @dwarfget128(%struct.TYPE_26__* %542)
  %544 = ptrtoint i8* %543 to i64
  store i64 %544, i64* %9, align 8
  %545 = load i64, i64* @trace, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %541
  %548 = load i64, i64* %9, align 8
  %549 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 %548)
  br label %550

550:                                              ; preds = %547, %541
  %551 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %552 = load i64, i64* %9, align 8
  %553 = call i32 @checkreg(%struct.TYPE_24__* %551, i64 %552)
  %554 = icmp slt i32 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %550
  store i32 -1, i32* %4, align 4
  br label %608

556:                                              ; preds = %550
  %557 = load i8*, i8** @RuleLocation, align 8
  %558 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %558, i32 0, i32 6
  %560 = load %struct.TYPE_25__*, %struct.TYPE_25__** %559, align 8
  %561 = load i64, i64* %9, align 8
  %562 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %560, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 3
  store i8* %557, i8** %563, align 8
  %564 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %565 = call i8* @dwarfget128(%struct.TYPE_26__* %564)
  %566 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %567 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %566, i32 0, i32 6
  %568 = load %struct.TYPE_25__*, %struct.TYPE_25__** %567, align 8
  %569 = load i64, i64* %9, align 8
  %570 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %568, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %571, i32 0, i32 0
  store i8* %565, i8** %572, align 8
  %573 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %574 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %574, i32 0, i32 6
  %576 = load %struct.TYPE_25__*, %struct.TYPE_25__** %575, align 8
  %577 = load i64, i64* %9, align 8
  %578 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %576, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %579, i32 0, i32 0
  %581 = load i8*, i8** %580, align 8
  %582 = call i8* @dwarfgetnref(%struct.TYPE_26__* %573, i8* %581)
  %583 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %583, i32 0, i32 6
  %585 = load %struct.TYPE_25__*, %struct.TYPE_25__** %584, align 8
  %586 = load i64, i64* %9, align 8
  %587 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %585, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %588, i32 0, i32 1
  store i8* %582, i8** %589, align 8
  br label %13

590:                                              ; preds = %161
  %591 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %592 = call i8* @dwarfget128(%struct.TYPE_26__* %591)
  %593 = ptrtoint i8* %592 to i64
  store i64 %593, i64* %9, align 8
  %594 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %595 = call i64 @dwarfget128s(%struct.TYPE_26__* %594)
  store i64 %595, i64* %10, align 8
  br label %96

596:                                              ; preds = %161
  %597 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %598 = call i8* @dwarfget128(%struct.TYPE_26__* %597)
  %599 = ptrtoint i8* %598 to i64
  store i64 %599, i64* %9, align 8
  %600 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %601 = call i64 @dwarfget128s(%struct.TYPE_26__* %600)
  store i64 %601, i64* %10, align 8
  br label %424

602:                                              ; preds = %161
  %603 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %604 = call i64 @dwarfget128s(%struct.TYPE_26__* %603)
  store i64 %604, i64* %9, align 8
  br label %488

605:                                              ; preds = %161
  %606 = load i32, i32* %8, align 4
  %607 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %606)
  store i32 -1, i32* %4, align 4
  br label %608

608:                                              ; preds = %605, %555, %502, %477, %470, %436, %387, %352, %343, %310, %276, %244, %221, %184, %147, %112, %87, %48, %32
  %609 = load i32, i32* %4, align 4
  ret i32 %609
}

declare dso_local i8* @dwarfget1(%struct.TYPE_26__*) #1

declare dso_local i32 @werrstr(i8*, ...) #1

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
