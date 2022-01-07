; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QuotedContentList.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QuotedContentList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*)* }
%struct.TYPE_23__ = type { i16, i32, i32, i32, i32, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8* }

@CFSTR_FILEDESCRIPTOR = common dso_local global i32 0, align 4
@CFSTR_FILECONTENTS = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@TYMED_ISTREAM = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@LMEM_FIXED = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @QuotedContentList(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca %struct.TYPE_21__, align 4
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i8* null, i8** %7, align 8
  %22 = load i32, i32* @CFSTR_FILEDESCRIPTOR, align 4
  %23 = call zeroext i16 @RegisterClipboardFormat(i32 %22)
  store i16 %23, i16* %8, align 2
  %24 = load i32, i32* @CFSTR_FILECONTENTS, align 4
  %25 = call zeroext i16 @RegisterClipboardFormat(i32 %24)
  store i16 %25, i16* %9, align 2
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %27 = load i16, i16* %8, align 2
  store i16 %27, i16* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %30 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 3
  store i32 -1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 4
  %33 = load i32, i32* @TYMED_HGLOBAL, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %36 = load i16, i16* %9, align 2
  store i16 %36, i16* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %39 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 3
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 4
  %42 = load i32, i32* @TYMED_ISTREAM, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %47, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = call i64 %48(%struct.TYPE_22__* %49, %struct.TYPE_23__* %10)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %218

54:                                               ; preds = %1
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %58, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = call i64 %59(%struct.TYPE_22__* %60, %struct.TYPE_23__* %11)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %217

65:                                               ; preds = %54
  %66 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 20, i1 false)
  %67 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %67, i8 0, i64 20, i1 false)
  %68 = load i32, i32* @MAX_PATH, align 4
  %69 = add nsw i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %17, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %18, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*)** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call i64 %77(%struct.TYPE_22__* %78, %struct.TYPE_23__* %10, %struct.TYPE_21__* %12)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  store i8* null, i8** %2, align 8
  store i32 1, i32* %19, align 4
  br label %213

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @GlobalLock(i32 %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %4, align 8
  %89 = load i32, i32* @MAX_PATH, align 4
  %90 = call i32 @GetTempPath(i32 %89, i8* %72)
  %91 = call i32 @wcslen(i8* %72)
  store i32 %91, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %117, %84
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i64 %103
  %105 = bitcast %struct.TYPE_25__* %5 to i8*
  %106 = bitcast %struct.TYPE_25__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  %107 = load i32, i32* %15, align 4
  %108 = add i32 1, %107
  %109 = add i32 %108, 1
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @wcslen(i8* %111)
  %113 = add i32 %109, %112
  %114 = add i32 %113, 2
  %115 = load i32, i32* %16, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %98
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %92

120:                                              ; preds = %92
  %121 = load i32, i32* @LMEM_FIXED, align 4
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = mul i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = call i64 @LocalAlloc(i32 %121, i32 %125)
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 0, i8* %129, align 1
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %194, %120
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %197

136:                                              ; preds = %130
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i64 %141
  %143 = bitcast %struct.TYPE_25__* %5 to i8*
  %144 = bitcast %struct.TYPE_25__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 8, i1 false)
  %145 = load i32, i32* %14, align 4
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  %147 = call i32 @memset(%struct.TYPE_21__* %13, i32 0, i32 20)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i64 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*)** %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = call i64 %152(%struct.TYPE_22__* %153, %struct.TYPE_23__* %11, %struct.TYPE_21__* %13)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %136
  %159 = load i32, i32* @MAXPATHLEN, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 %160, 1
  %162 = zext i32 %161 to i64
  %163 = call i8* @llvm.stacksave()
  store i8* %163, i8** %20, align 8
  %164 = alloca i8, i64 %162, align 16
  store i64 %162, i64* %21, align 8
  %165 = call i32 @lstrcpy(i8* %164, i8* %72)
  %166 = call i32 @AddBackslash(i8* %164)
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @lstrcat(i8* %164, i8* %168)
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @StreamToFile(i32 %171, i8* %164)
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @S_OK, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %158
  %177 = call i32 @CheckEsc(i8* %164)
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i8*, i8** %7, align 8
  %185 = call i8* @TEXT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %186 = call i32 @lstrcat(i8* %184, i8* %185)
  br label %187

187:                                              ; preds = %183, %176
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @lstrcat(i8* %188, i8* %164)
  br label %190

190:                                              ; preds = %187, %158
  %191 = call i32 @ReleaseStgMedium(%struct.TYPE_21__* %13)
  %192 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %193

193:                                              ; preds = %190, %136
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %14, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %130

197:                                              ; preds = %130
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @GlobalUnlock(i32 %199)
  %201 = call i32 @ReleaseStgMedium(%struct.TYPE_21__* %12)
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %197
  %208 = call i32 @MessageBeep(i32 0)
  %209 = load i8*, i8** %7, align 8
  %210 = ptrtoint i8* %209 to i32
  %211 = call i32 @LocalFree(i32 %210)
  store i8* null, i8** %7, align 8
  br label %212

212:                                              ; preds = %207, %197
  store i32 0, i32* %19, align 4
  br label %213

213:                                              ; preds = %212, %83
  %214 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %19, align 4
  switch i32 %215, label %222 [
    i32 0, label %216
    i32 1, label %220
  ]

216:                                              ; preds = %213
  br label %217

217:                                              ; preds = %216, %54
  br label %218

218:                                              ; preds = %217, %1
  %219 = load i8*, i8** %7, align 8
  store i8* %219, i8** %2, align 8
  br label %220

220:                                              ; preds = %218, %213
  %221 = load i8*, i8** %2, align 8
  ret i8* %221

222:                                              ; preds = %213
  unreachable
}

declare dso_local zeroext i16 @RegisterClipboardFormat(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @GlobalLock(i32) #1

declare dso_local i32 @GetTempPath(i32, i8*) #1

declare dso_local i32 @wcslen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @lstrcpy(i8*, i8*) #1

declare dso_local i32 @AddBackslash(i8*) #1

declare dso_local i32 @lstrcat(i8*, i8*) #1

declare dso_local i64 @StreamToFile(i32, i8*) #1

declare dso_local i32 @CheckEsc(i8*) #1

declare dso_local i8* @TEXT(i8*) #1

declare dso_local i32 @ReleaseStgMedium(%struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @MessageBeep(i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
