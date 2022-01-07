; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_RecurseSearchDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_RecurseSearchDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@ACTION_RecurseSearchDirectory.starDotStarW = internal constant [4 x i8] c"*.*\00", align 1
@.str = private unnamed_addr constant [46 x i8] c"Searching directory %s for file %s, depth %d\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"found file, returning %s\0A\00", align 1
@szDot = common dso_local global i32 0, align 4
@szDotDot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8**, %struct.TYPE_9__*, i8*, i32)* @ACTION_RecurseSearchDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_RecurseSearchDirectory(i32* %0, i8** %1, %struct.TYPE_9__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @lstrlenW(i8* %24)
  store i64 %25, i64* %15, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @lstrlenW(i8* %28)
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @debugstr_w(i8* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @debugstr_w(i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %45, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %219

46:                                               ; preds = %5
  %47 = load i8**, i8*** %8, align 8
  store i8* null, i8** %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = call i32 @strlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ACTION_RecurseSearchDirectory.starDotStarW, i64 0, i64 0))
  %51 = call i32 @max(i64 %49, i32 %50)
  %52 = sext i32 %51 to i64
  %53 = add i64 %48, %52
  %54 = add i64 %53, 2
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i8* @msi_alloc(i32 %59)
  store i8* %60, i8** %19, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %46
  %64 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %64, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %219

65:                                               ; preds = %46
  %66 = load i8*, i8** %19, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @lstrcpyW(i8* %66, i8* %67)
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @PathAddBackslashW(i8* %69)
  %71 = load i8*, i8** %19, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @lstrcatW(i8* %71, i8* %74)
  %76 = load i8*, i8** %19, align 8
  %77 = call i64 @FindFirstFileW(i8* %76, %struct.TYPE_8__* %13)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = load i8*, i8** %19, align 8
  %90 = call i64 @ACTION_FileMatchesSig(%struct.TYPE_9__* %88, %struct.TYPE_8__* %13, i8* %89, i64* %22)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load i64, i64* %22, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i8*, i8** %19, align 8
  %99 = call i32 @debugstr_w(i8* %98)
  %100 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %19, align 8
  %102 = load i8**, i8*** %8, align 8
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %97, %94, %87
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @FindClose(i64 %105)
  br label %107

107:                                              ; preds = %104, %65
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %209

111:                                              ; preds = %107
  %112 = load i8**, i8*** %8, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %209, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %19, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @lstrcpyW(i8* %116, i8* %117)
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @PathAddBackslashW(i8* %119)
  %121 = load i8*, i8** %19, align 8
  %122 = call i32 @lstrcatW(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ACTION_RecurseSearchDirectory.starDotStarW, i64 0, i64 0))
  %123 = load i8*, i8** %19, align 8
  %124 = call i64 @FindFirstFileW(i8* %123, %struct.TYPE_8__* %13)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %208

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @szDot, align 4
  %138 = call i64 @strcmpW(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @szDotDot, align 4
  %144 = call i64 @strcmpW(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @lstrcpyW(i8* %33, i8* %147)
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @PathAppendW(i8* %33, i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = load i8**, i8*** %8, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i64 @ACTION_RecurseSearchDirectory(i32* %152, i8** %153, %struct.TYPE_9__* %154, i8* %33, i32 %156)
  store i64 %157, i64* %14, align 8
  br label %158

158:                                              ; preds = %146, %140, %134, %128
  br label %159

159:                                              ; preds = %204, %185, %158
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* @ERROR_SUCCESS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i8**, i8*** %8, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %12, align 8
  %169 = call i64 @FindNextFileW(i64 %168, %struct.TYPE_8__* %13)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %167, %163, %159
  %172 = phi i1 [ false, %163 ], [ false, %159 ], [ %170, %167 ]
  br i1 %172, label %173, label %205

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @szDot, align 4
  %177 = call i64 @strcmpW(i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @szDotDot, align 4
  %183 = call i64 @strcmpW(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %179, %173
  br label %159

186:                                              ; preds = %179
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @lstrcpyW(i8* %33, i8* %187)
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @PathAppendW(i8* %33, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %186
  %198 = load i32*, i32** %7, align 8
  %199 = load i8**, i8*** %8, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %201, 1
  %203 = call i64 @ACTION_RecurseSearchDirectory(i32* %198, i8** %199, %struct.TYPE_9__* %200, i8* %33, i32 %202)
  store i64 %203, i64* %14, align 8
  br label %204

204:                                              ; preds = %197, %186
  br label %159

205:                                              ; preds = %171
  %206 = load i64, i64* %12, align 8
  %207 = call i32 @FindClose(i64 %206)
  br label %208

208:                                              ; preds = %205, %115
  br label %209

209:                                              ; preds = %208, %111, %107
  %210 = load i8**, i8*** %8, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = load i8*, i8** %19, align 8
  %213 = icmp ne i8* %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %19, align 8
  %216 = call i32 @msi_free(i8* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i64, i64* %14, align 8
  store i64 %218, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %219

219:                                              ; preds = %217, %63, %44
  %220 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i64, i64* %6, align 8
  ret i64 %221
}

declare dso_local i64 @lstrlenW(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @PathAddBackslashW(i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @FindFirstFileW(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @ACTION_FileMatchesSig(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i64*) #1

declare dso_local i32 @FindClose(i64) #1

declare dso_local i64 @strcmpW(i32, i32) #1

declare dso_local i32 @PathAppendW(i8*, i32) #1

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @msi_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
