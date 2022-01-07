; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c_MSVCRT_locale_to_LCID.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c_MSVCRT_locale_to_LCID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i8*, i32 }

@MAX_ELEM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"KERNEL32\00", align 1
@RT_STRING = common dso_local global i64 0, align 8
@LOCALE_ILANGUAGE = common dso_local global i64 0, align 8
@find_best_locale_proc = common dso_local global i32 0, align 4
@FOUND_COUNTRY = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@FOUND_CODEPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OCP\00", align 1
@LOCALE_IDEFAULTCODEPAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ACP\00", align 1
@LOCALE_IDEFAULTANSICODEPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSVCRT_locale_to_LCID(i8* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_3__* %7, i32 0, i32 48)
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 95)
  store i8* %14, i8** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @MAX_ELEM_LEN, align 4
  %19 = call i32 @lstrcpynA(i8* %16, i8* %17, i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i32, i32* @MAX_ELEM_LEN, align 4
  %28 = call i32 @lstrcpynA(i8* %24, i8* %26, i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i32, i32* @MAX_ELEM_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %37, %22
  br label %51

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i32, i32* @MAX_ELEM_LEN, align 4
  %60 = call i32 @lstrcpynA(i8* %56, i8* %58, i32 %59)
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sub nsw i64 %68, 1
  %70 = load i32, i32* @MAX_ELEM_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sub nsw i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %75, i64 %81
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %73, %63, %54
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load i32, i32* @MAX_ELEM_LEN, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %92, %83
  br label %106

102:                                              ; preds = %51
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %102, %101
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @remap_synonym(i8* %120)
  br label %122

122:                                              ; preds = %118, %112, %106
  %123 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %124 = load i64, i64* @RT_STRING, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* @LOCALE_ILANGUAGE, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @find_best_locale_proc, align 4
  %129 = ptrtoint %struct.TYPE_3__* %7 to i32
  %130 = call i32 @EnumResourceLanguagesA(i32 %123, i32 %125, i32 %127, i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %248

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @FOUND_COUNTRY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %248

149:                                              ; preds = %142, %135
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SORT_DEFAULT, align 4
  %153 = call i32 @MAKELCID(i32 %151, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FOUND_CODEPAGE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %238, label %159

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %212

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call zeroext i16 @atoi(i8* %167)
  %169 = call i64 @IsValidCodePage(i16 zeroext %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* @MAX_ELEM_LEN, align 4
  %177 = call i32 @memcpy(i8* %173, i8* %175, i32 %176)
  br label %211

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strcasecmp(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @LOCALE_IDEFAULTCODEPAGE, align 4
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* @MAX_ELEM_LEN, align 4
  %189 = call i32 @GetLocaleInfoA(i32 %184, i32 %185, i8* %187, i32 %188)
  br label %204

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcasecmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @LOCALE_IDEFAULTANSICODEPAGE, align 4
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* @MAX_ELEM_LEN, align 4
  %201 = call i32 @GetLocaleInfoA(i32 %196, i32 %197, i8* %199, i32 %200)
  br label %203

202:                                              ; preds = %190
  store i32 -1, i32* %3, align 4
  br label %248

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %183
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = call zeroext i16 @atoi(i8* %206)
  %208 = icmp ne i16 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  store i32 -1, i32* %3, align 4
  br label %248

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %171
  br label %237

212:                                              ; preds = %159
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @LOCALE_IDEFAULTANSICODEPAGE, align 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* @MAX_ELEM_LEN, align 4
  %218 = call i32 @GetLocaleInfoA(i32 %213, i32 %214, i8* %216, i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %212
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = call zeroext i16 @atoi(i8* %226)
  %228 = icmp ne i16 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %224, %212
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @LOCALE_IDEFAULTCODEPAGE, align 4
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* @MAX_ELEM_LEN, align 4
  %235 = call i32 @GetLocaleInfoA(i32 %230, i32 %231, i8* %233, i32 %234)
  br label %236

236:                                              ; preds = %229, %224
  br label %237

237:                                              ; preds = %236, %211
  br label %238

238:                                              ; preds = %237, %149
  %239 = load i16*, i16** %5, align 8
  %240 = icmp ne i16* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = call zeroext i16 @atoi(i8* %243)
  %245 = load i16*, i16** %5, align 8
  store i16 %244, i16* %245, align 2
  br label %246

246:                                              ; preds = %241, %238
  %247 = load i32, i32* %6, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %209, %202, %148, %134
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lstrcpynA(i8*, i8*, i32) #1

declare dso_local i32 @remap_synonym(i8*) #1

declare dso_local i32 @EnumResourceLanguagesA(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i64 @IsValidCodePage(i16 zeroext) #1

declare dso_local zeroext i16 @atoi(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
