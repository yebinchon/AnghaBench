; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_ParseOptArgs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_ParseOptArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"args=%s offset=%d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@MCIERR_BAD_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad rect %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Optarg %s not found\0A\00", align 1
@MCIERR_UNRECOGNIZED_COMMAND = common dso_local global i32 0, align 4
@MCI_DATA_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Internal data[] buffer overflow\0A\00", align 1
@MCIERR_PARSER_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*, i32*)* @MCI_ParseOptArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCI_ParseOptArgs(i32* %0, i32 %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %18, align 4
  br label %22

22:                                               ; preds = %270, %5
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %271

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %14, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %20, align 8
  store i64 %29, i64* %21, align 8
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %36, %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @debugstr_w(i8* %40)
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %252, %39
  %45 = load i8*, i8** %14, align 8
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i32 @strlenW(i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  store i8* %62, i8** %14, align 8
  %63 = load i32, i32* %19, align 4
  switch i32 %63, label %84 [
    i32 136, label %64
    i32 133, label %67
  ]

64:                                               ; preds = %44
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %20, align 8
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %18, align 4
  br label %84

67:                                               ; preds = %44
  %68 = load i64, i64* %20, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @MCI_GetDWord(i32* %74, i8** %10)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %70, %67
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %20, align 8
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %44, %82, %64
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @strncmpiW(i8* %85, i64 %86, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %232

90:                                               ; preds = %84
  %91 = load i32, i32* %19, align 4
  %92 = icmp eq i32 %91, 128
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %93, %90
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %232

112:                                              ; preds = %104, %96, %93
  %113 = load i32, i32* %12, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %10, align 8
  br label %117

117:                                              ; preds = %122, %112
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  br label %117

125:                                              ; preds = %117
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %21, align 8
  %127 = load i32, i32* %19, align 4
  switch i32 %127, label %222 [
    i32 137, label %128
    i32 129, label %128
    i32 135, label %128
    i32 134, label %128
    i32 136, label %128
    i32 133, label %128
    i32 132, label %129
    i32 131, label %134
    i32 130, label %165
    i32 128, label %207
  ]

128:                                              ; preds = %125, %125, %125, %125, %125, %125
  br label %224

129:                                              ; preds = %125
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %224

134:                                              ; preds = %125
  %135 = load i64, i64* %20, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  %149 = load i64, i64* @FALSE, align 8
  store i64 %149, i64* %20, align 8
  br label %164

150:                                              ; preds = %134
  %151 = load i32, i32* %17, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @MCI_GetDWord(i32* %158, i8** %10)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  %162 = load i32, i32* @MCIERR_BAD_INTEGER, align 4
  store i32 %162, i32* %6, align 4
  br label %272

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %137
  br label %224

165:                                              ; preds = %125
  %166 = load i32, i32* %17, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 0
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = call i32 @MCI_GetDWord(i32* %174, i8** %10)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %165
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = call i32 @MCI_GetDWord(i32* %182, i8** %10)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %177
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = call i32 @MCI_GetDWord(i32* %190, i8** %10)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %185
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = call i32 @MCI_GetDWord(i32* %198, i8** %10)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %193, %185, %177, %165
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @debugstr_w(i8* %202)
  %204 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @MCIERR_BAD_INTEGER, align 4
  store i32 %205, i32* %6, align 4
  br label %272

206:                                              ; preds = %193
  br label %224

207:                                              ; preds = %125
  %208 = load i32, i32* %17, align 4
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %208
  store i32 %211, i32* %209, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = bitcast i32* %215 to i8**
  %217 = call i32 @MCI_GetString(i8** %216, i8** %10)
  store i32 %217, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %207
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %6, align 4
  br label %272

221:                                              ; preds = %207
  br label %224

222:                                              ; preds = %125
  %223 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %221, %206, %164, %129, %128
  %225 = load i64, i64* %20, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %228, 136
  br i1 %229, label %230, label %231

230:                                              ; preds = %227, %224
  store i32 135, i32* %19, align 4
  br label %231

231:                                              ; preds = %230, %227
  br label %251

232:                                              ; preds = %104, %84
  %233 = load i32, i32* %19, align 4
  switch i32 %233, label %248 [
    i32 137, label %234
    i32 129, label %234
    i32 135, label %234
    i32 134, label %234
    i32 136, label %234
    i32 132, label %234
    i32 131, label %235
    i32 133, label %242
    i32 128, label %242
    i32 130, label %245
  ]

234:                                              ; preds = %232, %232, %232, %232, %232, %232
  br label %250

235:                                              ; preds = %232
  %236 = load i64, i64* %20, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %238, %235
  br label %250

242:                                              ; preds = %232, %232
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %250

245:                                              ; preds = %232
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 4
  store i32 %247, i32* %13, align 4
  br label %250

248:                                              ; preds = %232
  %249 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %245, %242, %241, %234
  br label %251

251:                                              ; preds = %250, %231
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %19, align 4
  %254 = icmp ne i32 %253, 135
  br i1 %254, label %44, label %255

255:                                              ; preds = %252
  %256 = load i64, i64* %21, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load i8*, i8** %10, align 8
  %260 = call i32 @debugstr_w(i8* %259)
  %261 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* @MCIERR_UNRECOGNIZED_COMMAND, align 4
  store i32 %262, i32* %6, align 4
  br label %272

263:                                              ; preds = %255
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* @MCI_DATA_SIZE, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %269 = load i32, i32* @MCIERR_PARSER_INTERNAL, align 4
  store i32 %269, i32* %6, align 4
  br label %272

270:                                              ; preds = %263
  br label %22

271:                                              ; preds = %22
  store i32 0, i32* %6, align 4
  br label %272

272:                                              ; preds = %271, %267, %258, %219, %201, %161
  %273 = load i32, i32* %6, align 4
  ret i32 %273
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strlenW(i64) #1

declare dso_local i32 @MCI_GetDWord(i32*, i8**) #1

declare dso_local i64 @strncmpiW(i8*, i64, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @MCI_GetString(i8**, i8**) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
