; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_print.c_PrintCode.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_print.c_PrintCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32, i64* }

@.str = private unnamed_addr constant [5 x i8] c"\09%d\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%d]\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[-]\09\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-9s\09\00", align 1
@luaP_opnames = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OpArgN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@OpArgK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09; \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\09; %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\09; to %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\09; %p\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\09; %d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @PrintCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintCode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %242, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %245

24:                                               ; preds = %20
  %25 = load i64*, i64** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @GET_OPCODE(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @GETARG_A(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @GETARG_B(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @GETARG_C(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @GETARG_Bx(i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @GETARG_sBx(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @getline(%struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %24
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %55

53:                                               ; preds = %24
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i8**, i8*** @luaP_opnames, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @getOpMode(i64 %61)
  switch i32 %62, label %128 [
    i32 130, label %63
    i32 129, label %102
    i32 128, label %117
  ]

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @getBMode(i64 %66)
  %68 = load i32, i32* @OpArgN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ISK(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @INDEXK(i32 %75)
  %77 = sub nsw i32 -1, %76
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %77, %74 ], [ %79, %78 ]
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %63
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @getCMode(i64 %84)
  %86 = load i32, i32* @OpArgN, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ISK(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @INDEXK(i32 %93)
  %95 = sub nsw i32 -1, %94
  br label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %95, %92 ], [ %97, %96 ]
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %83
  br label %128

102:                                              ; preds = %55
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @getBMode(i64 %103)
  %105 = load i32, i32* @OpArgK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 -1, %109
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %108, i32 %110)
  br label %116

112:                                              ; preds = %102
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107
  br label %128

117:                                              ; preds = %55
  %118 = load i64, i64* %7, align 8
  %119 = icmp eq i64 %118, 142
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  br label %128

128:                                              ; preds = %55, %127, %116, %101
  %129 = load i64, i64* %7, align 8
  switch i64 %129, label %239 [
    i64 140, label %130
    i64 143, label %135
    i64 132, label %135
    i64 145, label %153
    i64 135, label %153
    i64 144, label %162
    i64 136, label %162
    i64 133, label %173
    i64 151, label %173
    i64 131, label %173
    i64 138, label %173
    i64 149, label %173
    i64 137, label %173
    i64 148, label %173
    i64 139, label %173
    i64 141, label %173
    i64 142, label %207
    i64 147, label %207
    i64 146, label %207
    i64 150, label %213
    i64 134, label %223
  ]

130:                                              ; preds = %128
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @PrintConstant(%struct.TYPE_5__* %132, i32 %133)
  br label %240

135:                                              ; preds = %128, %128
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @getstr(i32 %147)
  br label %150

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %140
  %151 = phi i8* [ %148, %140 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %149 ]
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %151)
  br label %240

153:                                              ; preds = %128, %128
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i8* @svalue(i32* %159)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %160)
  br label %240

162:                                              ; preds = %128, %128
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ISK(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @INDEXK(i32 %169)
  %171 = call i32 @PrintConstant(%struct.TYPE_5__* %168, i32 %170)
  br label %172

172:                                              ; preds = %166, %162
  br label %240

173:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128, %128
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @ISK(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @ISK(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %177, %173
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @ISK(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @INDEXK(i32 %188)
  %190 = call i32 @PrintConstant(%struct.TYPE_5__* %187, i32 %189)
  br label %193

191:                                              ; preds = %181
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %186
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @ISK(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @INDEXK(i32 %200)
  %202 = call i32 @PrintConstant(%struct.TYPE_5__* %199, i32 %201)
  br label %205

203:                                              ; preds = %193
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %198
  br label %206

206:                                              ; preds = %205, %177
  br label %240

207:                                              ; preds = %128, %128, %128
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %208, %209
  %211 = add nsw i32 %210, 2
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %211)
  br label %240

213:                                              ; preds = %128
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @VOID(i32 %220)
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %221)
  br label %240

223:                                              ; preds = %128
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i64*, i64** %3, align 8
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %227, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  br label %238

235:                                              ; preds = %223
  %236 = load i32, i32* %10, align 4
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %235, %226
  br label %240

239:                                              ; preds = %128
  br label %240

240:                                              ; preds = %239, %238, %213, %207, %206, %172, %153, %150, %130
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 4
  br label %20

245:                                              ; preds = %20
  ret void
}

declare dso_local i64 @GET_OPCODE(i64) #1

declare dso_local i32 @GETARG_A(i64) #1

declare dso_local i32 @GETARG_B(i64) #1

declare dso_local i32 @GETARG_C(i64) #1

declare dso_local i32 @GETARG_Bx(i64) #1

declare dso_local i32 @GETARG_sBx(i64) #1

declare dso_local i32 @getline(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getOpMode(i64) #1

declare dso_local i32 @getBMode(i64) #1

declare dso_local i32 @ISK(i32) #1

declare dso_local i32 @INDEXK(i32) #1

declare dso_local i32 @getCMode(i64) #1

declare dso_local i32 @PrintConstant(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @getstr(i32) #1

declare dso_local i8* @svalue(i32*) #1

declare dso_local i32 @VOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
