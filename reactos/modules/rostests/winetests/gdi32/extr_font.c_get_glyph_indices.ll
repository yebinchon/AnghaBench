; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_glyph_indices.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_glyph_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"CreateFontIndirectA error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"expected %d, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GetTextFaceA error %u\0A\00", align 1
@SYMBOL_CHARSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"face name should NOT be Arial\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"symbol encoding should be available\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"face name should be Arial, not %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"symbol encoding should NOT be available\0A\00", align 1
@TCI_SRCCHARSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Can't find codepage for charset %d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"Font code page %d, looking for code page %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"GetGlyphIndicesW expected %d got %d, error %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"GetGlyphIndicesA expected %d got %d, error %u\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32*, i32, i64)* @get_glyph_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_glyph_indices(i64 %0, i32 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [64 x i8], align 16
  %22 = alloca [128 x i8], align 16
  %23 = alloca [128 x i32], align 16
  %24 = alloca [128 x i8], align 16
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 128
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 16)
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 10, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lstrcpyA(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = call i64 @CreateFontIndirectA(%struct.TYPE_8__* %13)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @GetDC(i32 0)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @SelectObject(i32 %44, i64 %45)
  store i64 %46, i64* %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @GetTextCharsetInfo(i32 %47, %struct.TYPE_9__* %17, i32 0)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %59 = call i32 @GetTextFaceA(i32 %57, i32 64, i8* %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @SYMBOL_CHARSET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %5
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, -2147483648
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %93

76:                                               ; preds = %5
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, -2147483648
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %76, %66
  %94 = load i64, i64* %18, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* @TCI_SRCCHARSET, align 4
  %97 = call i32 @TranslateCharsetInfo(i32* %95, %struct.TYPE_10__* %16, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %18, align 8
  %101 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @ReleaseDC(i32 0, i32 %102)
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %6, align 8
  br label %205

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %8, align 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @pGdiGetCodePage(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %105
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @pGdiGetCodePage(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @ReleaseDC(i32 0, i32 %124)
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %6, align 8
  br label %205

127:                                              ; preds = %105
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %166

130:                                              ; preds = %127
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %142, %130
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 128
  %138 = trunc i32 %137 to i8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 %140
  store i8 %138, i8* %141, align 1
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load i32, i32* %8, align 4
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %148 = load i32, i32* %10, align 4
  %149 = getelementptr inbounds [128 x i32], [128 x i32]* %23, i64 0, i64 0
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @MultiByteToWideChar(i32 %146, i32 0, i8* %147, i32 %148, i32* %149, i32 %150)
  %152 = call i32 @SetLastError(i32 -559038737)
  %153 = load i32, i32* %12, align 4
  %154 = getelementptr inbounds [128 x i32], [128 x i32]* %23, i64 0, i64 0
  %155 = load i32, i32* %10, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @pGetGlyphIndicesW(i32 %153, i32* %154, i32 %155, i32* %156, i32 0)
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %20, align 4
  %164 = call i32 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  br label %196

166:                                              ; preds = %127
  store i32 0, i32* %19, align 4
  br label %167

167:                                              ; preds = %178, %166
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, 128
  %174 = trunc i32 %173 to i8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 %176
  store i8 %174, i8* %177, align 1
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %19, align 4
  br label %167

181:                                              ; preds = %167
  %182 = call i32 @SetLastError(i32 -559038737)
  %183 = load i32, i32* %12, align 4
  %184 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %185 = load i32, i32* %10, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @pGetGlyphIndicesA(i32 %183, i8* %184, i32 %185, i32* %186, i32 0)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %20, align 4
  %194 = call i32 (...) @GetLastError()
  %195 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %181, %145
  %197 = load i32, i32* %12, align 4
  %198 = load i64, i64* %15, align 8
  %199 = call i64 @SelectObject(i32 %197, i64 %198)
  %200 = load i64, i64* %14, align 8
  %201 = call i32 @DeleteObject(i64 %200)
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @ReleaseDC(i32 0, i32 %202)
  %204 = load i64, i64* @TRUE, align 8
  store i64 %204, i64* %6, align 8
  br label %205

205:                                              ; preds = %196, %119, %99
  %206 = load i64, i64* %6, align 8
  ret i64 %206
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lstrcpyA(i32, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFontIndirectA(%struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i64 @GetTextCharsetInfo(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @GetTextFaceA(i32, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @TranslateCharsetInfo(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @pGdiGetCodePage(i32) #1

declare dso_local i32 @skip(i8*, i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @pGetGlyphIndicesW(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @pGetGlyphIndicesA(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
