; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_char.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32*, i32, i32, i64 }

@FZ_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4
@FZ_BIDI_NEUTRAL = common dso_local global i32 0, align 4
@FZ_LANG_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32)* @pdf_show_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_show_char(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i64 %22
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pdf_tos_make_trm(i32* %28, %struct.TYPE_16__* %30, %struct.TYPE_17__* %32, %struct.TYPE_15__* %33, i32 %34, i32* %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fz_glyph_cacheable(i32* %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60, %50, %3
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = call %struct.TYPE_14__* @pdf_flush_text(i32* %64, %struct.TYPE_13__* %65)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %7, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pdf_tos_reset(i32* %67, %struct.TYPE_16__* %69, i32 %73)
  br label %75

75:                                               ; preds = %63, %60
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fz_concat(i32 %79, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @fz_render_t3_glyph_direct(i32* %84, i32 %87, i32 %90, i32 %91, i32 %92, %struct.TYPE_14__* %93, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 3, i32* %100, align 4
  br label %101

101:                                              ; preds = %78, %75
  store i32 0, i32* %12, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %112 = call i32 @pdf_lookup_cmap_full(i64 %109, i32 %110, i32* %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %130, i32* %131, align 16
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %123, %116, %113
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138, %132
  %143 = load i32, i32* @FZ_REPLACEMENT_CHARACTER, align 4
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %143, i32* %144, align 16
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %138, %135
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FZ_BIDI_NEUTRAL, align 4
  %162 = load i32, i32* @FZ_LANG_UNSET, align 4
  %163 = call i32 @fz_show_glyph(i32* %146, i32 %150, i32 %153, i32 %154, i32 %155, i32 %157, i32 %160, i32 0, i32 %161, i32 %162)
  store i32 1, i32* %13, align 4
  br label %164

164:                                              ; preds = %188, %145
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %164
  %169 = load i32*, i32** %4, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @FZ_BIDI_NEUTRAL, align 4
  %186 = load i32, i32* @FZ_LANG_UNSET, align 4
  %187 = call i32 @fz_show_glyph(i32* %169, i32 %173, i32 %176, i32 %177, i32 -1, i32 %181, i32 %184, i32 0, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %168
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %164

191:                                              ; preds = %164
  %192 = load i32*, i32** %4, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = call i32 @pdf_tos_move_after_char(i32* %192, %struct.TYPE_16__* %194)
  ret void
}

declare dso_local i32 @pdf_tos_make_trm(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @fz_glyph_cacheable(i32*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @pdf_flush_text(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pdf_tos_reset(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32 @fz_render_t3_glyph_direct(i32*, i32, i32, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @pdf_lookup_cmap_full(i64, i32, i32*) #1

declare dso_local i32 @fz_show_glyph(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pdf_tos_move_after_char(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
