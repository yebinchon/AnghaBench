; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ConvertPathCase.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ConvertPathCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c":\\\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConvertPathCase(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %27, %17
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isalpha(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @toupper(i8 signext %47)
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %3, align 8
  br label %134

57:                                               ; preds = %39, %34
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %131

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 92
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %128

79:                                               ; preds = %73, %67
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 92
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 47
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  store i8 92, i8* %98, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  store i8 92, i8* %100, align 1
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %121, %97
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 92
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 47
  br label %119

119:                                              ; preds = %114, %109, %104
  %120 = phi i1 [ false, %109 ], [ false, %104 ], [ %118, %114 ]
  br i1 %120, label %121, label %127

121:                                              ; preds = %119
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %3, align 8
  %124 = load i8, i8* %122, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  store i8 %124, i8* %125, align 1
  br label %104

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %91, %85, %79, %73
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @strcpy(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %133

131:                                              ; preds = %62
  %132 = load i8*, i8** %7, align 8
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133, %45
  br label %135

135:                                              ; preds = %147, %134
  %136 = load i8*, i8** %3, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 92
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %3, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 47
  br label %145

145:                                              ; preds = %140, %135
  %146 = phi i1 [ true, %135 ], [ %144, %140 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %3, align 8
  br label %135

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %274, %150
  %152 = load i8*, i8** %3, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %276

155:                                              ; preds = %151
  %156 = load i8*, i8** %3, align 8
  store i8* %156, i8** %8, align 8
  br label %157

157:                                              ; preds = %174, %155
  %158 = load i8*, i8** %8, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load i8*, i8** %8, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 92
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i8*, i8** %8, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 47
  br label %172

172:                                              ; preds = %167, %162, %157
  %173 = phi i1 [ false, %162 ], [ false, %157 ], [ %171, %167 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %8, align 8
  br label %157

177:                                              ; preds = %172
  %178 = load i8*, i8** %8, align 8
  %179 = load i8*, i8** %3, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = icmp eq i64 %182, 2
  br i1 %183, label %184, label %200

184:                                              ; preds = %177
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @strncmp(i8* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %7, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = icmp ne i8* %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %7, align 8
  store i8 92, i8* %193, align 1
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @strcpy(i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 2
  store i8* %199, i8** %7, align 8
  br label %258

200:                                              ; preds = %184, %177
  %201 = load i8*, i8** %8, align 8
  %202 = load i8*, i8** %3, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = icmp sgt i64 %205, 1
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load i8*, i8** %3, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 46
  br i1 %211, label %212, label %257

212:                                              ; preds = %207, %200
  %213 = load i8*, i8** %7, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = icmp ne i8* %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %7, align 8
  store i8 92, i8* %217, align 1
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %7, align 8
  %221 = load i8*, i8** %3, align 8
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** %3, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 @strncpy(i8* %220, i8* %221, i32 %227)
  %229 = load i8*, i8** %7, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = load i8*, i8** %3, align 8
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  store i8 0, i8* %235, align 1
  %236 = load i8*, i8** %4, align 8
  %237 = call i64 @FindFirstFile(i8* %236, %struct.TYPE_3__* %6)
  store i64 %237, i64* %5, align 8
  %238 = load i64, i64* %5, align 8
  %239 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %219
  %242 = load i8*, i8** %7, align 8
  %243 = load i8*, i8** %3, align 8
  %244 = call i32 @strcpy(i8* %242, i8* %243)
  br label %276

245:                                              ; preds = %219
  %246 = load i64, i64* %5, align 8
  %247 = call i32 @FindClose(i64 %246)
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @strcpy(i8* %248, i8* %250)
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @strlen(i8* %252)
  %254 = load i8*, i8** %7, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %7, align 8
  br label %257

257:                                              ; preds = %245, %207
  br label %258

258:                                              ; preds = %257, %195
  br label %259

259:                                              ; preds = %271, %258
  %260 = load i8*, i8** %8, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 92
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load i8*, i8** %8, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 47
  br label %269

269:                                              ; preds = %264, %259
  %270 = phi i1 [ true, %259 ], [ %268, %264 ]
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = load i8*, i8** %8, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %8, align 8
  br label %259

274:                                              ; preds = %269
  %275 = load i8*, i8** %8, align 8
  store i8* %275, i8** %3, align 8
  br label %151

276:                                              ; preds = %241, %151
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @FindFirstFile(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @FindClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
