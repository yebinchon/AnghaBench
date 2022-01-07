; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_InitExtensions.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_InitExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i32*, i8*, i64, i64, i8*, i64 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32, i32, i64, i8* }
%struct.TYPE_4__ = type { i32, i32, i64, i8* }

@PROFILE_STRING_SIZ = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@bSecMenuDeleted = common dso_local global i32 0, align 4
@IDM_EXTENSIONS = common dso_local global i32 0, align 4
@szAddons = common dso_local global i32 0, align 4
@szNULL = common dso_local global i32 0, align 4
@szTheINIFile = common dso_local global i32 0, align 4
@iNumExtensions = common dso_local global i32 0, align 4
@MAX_EXTENSIONS = common dso_local global i32 0, align 4
@FM_EXT_PROC_ENTRYW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FM_EXT_PROC_ENTRYA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@FMEVENT_LOAD = common dso_local global i32 0, align 4
@extensions = common dso_local global %struct.TYPE_6__* null, align 8
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_POPUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitExtensions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64 (i32, i32, i32)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = load i32, i32* @PROFILE_STRING_SIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %2, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %4, align 8
  store i64 0, i64* %11, align 8
  %23 = load i32, i32* @hwndFrame, align 4
  %24 = call i64 @GetMenu(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* @bSecMenuDeleted, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32, i32* @IDM_EXTENSIONS, align 4
  %31 = call i64 @MapIDMToMenuPos(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @szAddons, align 4
  %33 = load i32, i32* @szNULL, align 4
  %34 = call i32 @COUNTOF(i64* %19)
  %35 = load i32, i32* @szTheINIFile, align 4
  %36 = call i32 @GetPrivateProfileString(i32 %32, i64* null, i32 %33, i64* %19, i32 %34, i32 %35)
  store i64* %19, i64** %5, align 8
  br label %37

37:                                               ; preds = %233, %0
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @iNumExtensions, align 4
  %43 = load i32, i32* @MAX_EXTENSIONS, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %239

47:                                               ; preds = %45
  %48 = load i32, i32* @szAddons, align 4
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* @szNULL, align 4
  %51 = call i32 @COUNTOF(i64* %22)
  %52 = load i32, i32* @szTheINIFile, align 4
  %53 = call i32 @GetPrivateProfileString(i32 %48, i64* %49, i32 %50, i64* %22, i32 %51, i32 %52)
  %54 = call i64 @LoadLibrary(i64* %22)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %232

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @FM_EXT_PROC_ENTRYW, align 4
  %60 = call i64 @GetProcAddress(i64 %58, i32 %59)
  %61 = inttoptr i64 %60 to i64 (i32, i32, i32)*
  store i64 (i32, i32, i32)* %61, i64 (i32, i32, i32)** %7, align 8
  %62 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %7, align 8
  %63 = icmp ne i64 (i32, i32, i32)* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** %12, align 8
  br label %72

66:                                               ; preds = %57
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @FM_EXT_PROC_ENTRYA, align 4
  %69 = call i64 @GetProcAddress(i64 %67, i32 %68)
  %70 = inttoptr i64 %69 to i64 (i32, i32, i32)*
  store i64 (i32, i32, i32)* %70, i64 (i32, i32, i32)** %7, align 8
  %71 = load i8*, i8** @FALSE, align 8
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %66, %64
  %73 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %7, align 8
  %74 = icmp ne i64 (i32, i32, i32)* %73, null
  br i1 %74, label %75, label %227

75:                                               ; preds = %72
  %76 = load i32, i32* @IDM_EXTENSIONS, align 4
  %77 = load i32, i32* @iNumExtensions, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %79, 100
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  br label %91

88:                                               ; preds = %75
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %7, align 8
  %93 = load i32, i32* @hwndFrame, align 4
  %94 = load i32, i32* @FMEVENT_LOAD, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = ptrtoint %struct.TYPE_4__* %15 to i32
  br label %101

99:                                               ; preds = %91
  %100 = ptrtoint %struct.TYPE_5__* %14 to i32
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i64 %92(i32 %93, i32 %94, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %225

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  br label %114

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i32 [ %110, %108 ], [ %113, %111 ]
  %116 = sext i32 %115 to i64
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i64 24, i64 24
  %121 = icmp ne i64 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %228

123:                                              ; preds = %114
  %124 = load i8*, i8** %12, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  br label %132

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i64 [ %128, %126 ], [ %131, %129 ]
  store i64 %133, i64* %8, align 8
  %134 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %7, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %136 = load i32, i32* @iNumExtensions, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 8
  store i64 (i32, i32, i32)* %134, i64 (i32, i32, i32)** %139, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %142 = load i32, i32* @iNumExtensions, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 7
  store i8* %140, i8** %145, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %148 = load i32, i32* @iNumExtensions, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 6
  store i64 %146, i64* %151, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %154 = load i32, i32* @iNumExtensions, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  store i64 %152, i64* %157, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %160 = load i32, i32* @iNumExtensions, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i8* %158, i8** %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %165 = load i32, i32* @iNumExtensions, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store i32* null, i32** %168, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %170 = load i32, i32* @iNumExtensions, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %175 = load i32, i32* @iNumExtensions, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load i8*, i8** @FALSE, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extensions, align 8
  %181 = load i32, i32* @iNumExtensions, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i8* %179, i8** %184, align 8
  %185 = load i64, i64* %8, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %222

187:                                              ; preds = %132
  %188 = load i64, i64* %8, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @BiasMenu(i64 %188, i8* %189)
  %191 = load i8*, i8** %12, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* %11, align 8
  %197 = add nsw i64 %195, %196
  %198 = load i32, i32* @MF_BYPOSITION, align 4
  %199 = load i32, i32* @MF_POPUP, align 4
  %200 = or i32 %198, %199
  %201 = load i64, i64* %8, align 8
  %202 = trunc i64 %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @InsertMenuW(i64 %194, i64 %197, i32 %200, i32 %202, i32 %204)
  br label %219

206:                                              ; preds = %187
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* %11, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i32, i32* @MF_BYPOSITION, align 4
  %212 = load i32, i32* @MF_POPUP, align 4
  %213 = or i32 %211, %212
  %214 = load i64, i64* %8, align 8
  %215 = trunc i64 %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @InsertMenuA(i64 %207, i64 %210, i32 %213, i32 %215, i32 %217)
  br label %219

219:                                              ; preds = %206, %193
  %220 = load i64, i64* %11, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %11, align 8
  br label %222

222:                                              ; preds = %219, %132
  %223 = load i32, i32* @iNumExtensions, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @iNumExtensions, align 4
  br label %226

225:                                              ; preds = %101
  br label %228

226:                                              ; preds = %222
  br label %231

227:                                              ; preds = %72
  br label %228

228:                                              ; preds = %227, %225, %122
  %229 = load i64, i64* %6, align 8
  %230 = call i32 @FreeLibrary(i64 %229)
  br label %231

231:                                              ; preds = %228, %226
  br label %232

232:                                              ; preds = %231, %47
  br label %233

233:                                              ; preds = %232
  %234 = load i64*, i64** %5, align 8
  %235 = call i64 @lstrlen(i64* %234)
  %236 = add nsw i64 %235, 1
  %237 = load i64*, i64** %5, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 %236
  store i64* %238, i64** %5, align 8
  br label %37

239:                                              ; preds = %45
  %240 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %1, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetMenu(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @MapIDMToMenuPos(i32) #2

declare dso_local i32 @GetPrivateProfileString(i32, i64*, i32, i64*, i32, i32) #2

declare dso_local i32 @COUNTOF(i64*) #2

declare dso_local i64 @LoadLibrary(i64*) #2

declare dso_local i64 @GetProcAddress(i64, i32) #2

declare dso_local i32 @BiasMenu(i64, i8*) #2

declare dso_local i32 @InsertMenuW(i64, i64, i32, i32, i32) #2

declare dso_local i32 @InsertMenuA(i64, i64, i32, i32, i32) #2

declare dso_local i32 @FreeLibrary(i64) #2

declare dso_local i64 @lstrlen(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
