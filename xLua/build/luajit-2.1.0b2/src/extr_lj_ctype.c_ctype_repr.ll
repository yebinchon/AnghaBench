; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_ctype_repr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_ctype_repr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@CTF_BOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@CTF_FP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@CTF_UCHAR = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"_t\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@CTF_UNION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@CTID_CTYPEID = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@CTA_QUAL = common dso_local global i32 0, align 4
@CTF_REF = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"__ptr32\00", align 1
@CTSIZE_INVALID = common dso_local global i32 0, align 4
@CTF_VLA = common dso_local global i32 0, align 4
@CTF_COMPLEX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c")))\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"__attribute__((vector_size(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @ctype_repr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctype_repr(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_16__* @ctype_get(i32 %13, i32 %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %290, %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ctype_type(i32 %23)
  switch i32 %24, label %288 [
    i32 131, label %25
    i32 128, label %128
    i32 129, label %136
    i32 133, label %147
    i32 134, label %159
    i32 130, label %169
    i32 135, label %197
    i32 132, label %273
  ]

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CTF_BOOL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = call i32 @ctype_preplit(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %122

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @CTF_FP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = call i32 @ctype_preplit(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = call i32 @ctype_preplit(%struct.TYPE_17__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %55

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = call i32 @ctype_preplit(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %42
  br label %121

57:                                               ; preds = %33
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @CTF_UCHAR, align 4
  %63 = xor i32 %61, %62
  %64 = load i32, i32* @CTF_UNSIGNED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = call i32 @ctype_preplit(%struct.TYPE_17__* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %80

70:                                               ; preds = %60
  %71 = load i32, i32* @CTF_UCHAR, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = call i32 @ctype_preplit(%struct.TYPE_17__* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i32 @ctype_preplit(%struct.TYPE_17__* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %67
  br label %120

81:                                               ; preds = %57
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %89 = call i32 @ctype_preplit(%struct.TYPE_17__* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %93

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = call i32 @ctype_preplit(%struct.TYPE_17__* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @CTF_UNSIGNED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = call i32 @ctype_preplit(%struct.TYPE_17__* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  br label %119

102:                                              ; preds = %81
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = call i32 @ctype_preplit(%struct.TYPE_17__* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 8
  %108 = call i32 @ctype_prepnum(%struct.TYPE_17__* %105, i32 %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = call i32 @ctype_preplit(%struct.TYPE_17__* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @CTF_UNSIGNED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = call i32 @ctype_prepc(%struct.TYPE_17__* %116, i8 signext 117)
  br label %118

118:                                              ; preds = %115, %102
  br label %119

119:                                              ; preds = %118, %101
  br label %120

120:                                              ; preds = %119, %80
  br label %121

121:                                              ; preds = %120, %56
  br label %122

122:                                              ; preds = %121, %30
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @ctype_prepqual(%struct.TYPE_17__* %123, i32 %126)
  br label %297

128:                                              ; preds = %16
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %130 = call i32 @ctype_preplit(%struct.TYPE_17__* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @ctype_prepqual(%struct.TYPE_17__* %131, i32 %134)
  br label %297

136:                                              ; preds = %16
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @CTF_UNION, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  %146 = call i32 @ctype_preptype(%struct.TYPE_17__* %137, %struct.TYPE_16__* %138, i32 %139, i8* %145)
  br label %297

147:                                              ; preds = %16
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @CTID_CTYPEID, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %153 = call i32 @ctype_preplit(%struct.TYPE_17__* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %297

154:                                              ; preds = %147
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @ctype_preptype(%struct.TYPE_17__* %155, %struct.TYPE_16__* %156, i32 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %297

159:                                              ; preds = %16
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @ctype_attrib(i32 %160)
  %162 = load i32, i32* @CTA_QUAL, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %164, %159
  br label %290

169:                                              ; preds = %16
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @CTF_REF, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %176 = call i32 @ctype_prepc(%struct.TYPE_17__* %175, i8 signext 38)
  br label %194

177:                                              ; preds = %169
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @ctype_prepqual(%struct.TYPE_17__* %178, i32 %181)
  %183 = load i32, i32* @LJ_64, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 4
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = call i32 @ctype_preplit(%struct.TYPE_17__* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185, %177
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %193 = call i32 @ctype_prepc(%struct.TYPE_17__* %192, i8 signext 42)
  br label %194

194:                                              ; preds = %191, %174
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 4
  br label %290

197:                                              ; preds = %16
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @ctype_isrefarray(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %248

201:                                              ; preds = %197
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  store i32 0, i32* %7, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = call i32 @ctype_prepc(%struct.TYPE_17__* %207, i8 signext 40)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = call i32 @ctype_appc(%struct.TYPE_17__* %209, i8 signext 41)
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = call i32 @ctype_appc(%struct.TYPE_17__* %212, i8 signext 91)
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @CTSIZE_INVALID, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %211
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %222 = call %struct.TYPE_15__* @ctype_child(i32 %220, %struct.TYPE_16__* %221)
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %10, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %217
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sdiv i32 %229, %230
  br label %233

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232, %228
  %234 = phi i32 [ %231, %228 ], [ 0, %232 ]
  %235 = call i32 @ctype_appnum(%struct.TYPE_17__* %225, i32 %234)
  br label %245

236:                                              ; preds = %211
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @CTF_VLA, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %243 = call i32 @ctype_appc(%struct.TYPE_17__* %242, i8 signext 63)
  br label %244

244:                                              ; preds = %241, %236
  br label %245

245:                                              ; preds = %244, %233
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %247 = call i32 @ctype_appc(%struct.TYPE_17__* %246, i8 signext 93)
  br label %272

248:                                              ; preds = %197
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @CTF_COMPLEX, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp eq i64 %255, 8
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %259 = call i32 @ctype_preplit(%struct.TYPE_17__* %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %253
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %262 = call i32 @ctype_preplit(%struct.TYPE_17__* %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %297

263:                                              ; preds = %248
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %265 = call i32 @ctype_preplit(%struct.TYPE_17__* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @ctype_prepnum(%struct.TYPE_17__* %266, i32 %267)
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %270 = call i32 @ctype_preplit(%struct.TYPE_17__* %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %271

271:                                              ; preds = %263
  br label %272

272:                                              ; preds = %271, %245
  br label %290

273:                                              ; preds = %16
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 4
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  store i32 0, i32* %7, align 4
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %280 = call i32 @ctype_prepc(%struct.TYPE_17__* %279, i8 signext 40)
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %282 = call i32 @ctype_appc(%struct.TYPE_17__* %281, i8 signext 41)
  br label %283

283:                                              ; preds = %278, %273
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %285 = call i32 @ctype_appc(%struct.TYPE_17__* %284, i8 signext 40)
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %287 = call i32 @ctype_appc(%struct.TYPE_17__* %286, i8 signext 41)
  br label %290

288:                                              ; preds = %16
  %289 = call i32 @lua_assert(i32 0)
  br label %290

290:                                              ; preds = %288, %283, %272, %194, %168
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @ctype_cid(i32 %294)
  %296 = call %struct.TYPE_16__* @ctype_get(i32 %293, i32 %295)
  store %struct.TYPE_16__* %296, %struct.TYPE_16__** %5, align 8
  br label %16

297:                                              ; preds = %260, %154, %151, %136, %128, %122
  ret void
}

declare dso_local %struct.TYPE_16__* @ctype_get(i32, i32) #1

declare dso_local i32 @ctype_type(i32) #1

declare dso_local i32 @ctype_preplit(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @ctype_prepnum(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ctype_prepc(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @ctype_prepqual(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ctype_preptype(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @ctype_attrib(i32) #1

declare dso_local i32 @ctype_isrefarray(i32) #1

declare dso_local i32 @ctype_appc(%struct.TYPE_17__*, i8 signext) #1

declare dso_local %struct.TYPE_15__* @ctype_child(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ctype_appnum(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
