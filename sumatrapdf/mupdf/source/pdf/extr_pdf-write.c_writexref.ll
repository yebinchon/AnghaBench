; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_writexref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_writexref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"xref\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Size = common dso_local global i32 0, align 4
@Prev = common dso_local global i32 0, align 4
@Info = common dso_local global i32 0, align 4
@Root = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@Encrypt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"trailer\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"startxref\0A%lu\0A%%%%EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32)* @writexref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writexref(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %19, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fz_write_string(i32* %22, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fz_tell_output(i32* %27, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %8
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %20, align 4
  br label %40

40:                                               ; preds = %88, %38
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = load i32, i32* %20, align 4
  %53 = call i64 @pdf_xref_is_incremental(i32* %50, %struct.TYPE_11__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi i1 [ false, %45 ], [ %55, %49 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %45

61:                                               ; preds = %56
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %21, align 4
  br label %63

63:                                               ; preds = %75, %61
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i64 @pdf_xref_is_incremental(i32* %68, %struct.TYPE_11__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i1 [ false, %63 ], [ %72, %67 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %21, align 4
  br label %63

78:                                               ; preds = %73
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @writexrefsubsect(i32* %83, %struct.TYPE_10__* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %21, align 4
  store i32 %89, i32* %20, align 4
  br label %40

90:                                               ; preds = %40
  br label %97

91:                                               ; preds = %8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @writexrefsubsect(i32* %92, %struct.TYPE_10__* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @fz_write_string(i32* %98, i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %17, align 8
  %104 = call i32 @fz_var(i32* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %97
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = call i32 @pdf_trailer(i32* %111, %struct.TYPE_11__* %112)
  %114 = call i32* @pdf_keep_obj(i32* %110, i32 %113)
  store i32* %114, i32** %17, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* @Size, align 4
  %118 = call i32 @PDF_NAME(i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = call i32 @pdf_xref_len(i32* %119, %struct.TYPE_11__* %120)
  %122 = call i32 @pdf_dict_put_int(i32* %115, i32* %116, i32 %118, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* @Prev, align 4
  %126 = call i32 @PDF_NAME(i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pdf_dict_put_int(i32* %123, i32* %124, i32 %126, i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %232

134:                                              ; preds = %97
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %137 = call i32* @pdf_new_dict(i32* %135, %struct.TYPE_11__* %136, i32 5)
  store i32* %137, i32** %17, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32* @pdf_new_int(i32* %138, i32 %139)
  store i32* %140, i32** %19, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* @Size, align 4
  %144 = call i32 @PDF_NAME(i32 %143)
  %145 = load i32*, i32** %19, align 8
  %146 = call i32 @pdf_dict_put_drop(i32* %141, i32* %142, i32 %144, i32* %145)
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %218

149:                                              ; preds = %134
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = call i32 @pdf_trailer(i32* %151, %struct.TYPE_11__* %152)
  %154 = load i32, i32* @Info, align 4
  %155 = call i32 @PDF_NAME(i32 %154)
  %156 = call i32* @pdf_dict_get(i32* %150, i32 %153, i32 %155)
  store i32* %156, i32** %18, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load i32*, i32** %9, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = load i32, i32* @Info, align 4
  %163 = call i32 @PDF_NAME(i32 %162)
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @pdf_dict_put(i32* %160, i32* %161, i32 %163, i32* %164)
  br label %166

166:                                              ; preds = %159, %149
  %167 = load i32*, i32** %9, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = call i32 @pdf_trailer(i32* %168, %struct.TYPE_11__* %169)
  %171 = load i32, i32* @Root, align 4
  %172 = call i32 @PDF_NAME(i32 %171)
  %173 = call i32* @pdf_dict_get(i32* %167, i32 %170, i32 %172)
  store i32* %173, i32** %18, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = load i32, i32* @Root, align 4
  %180 = call i32 @PDF_NAME(i32 %179)
  %181 = load i32*, i32** %18, align 8
  %182 = call i32 @pdf_dict_put(i32* %177, i32* %178, i32 %180, i32* %181)
  br label %183

183:                                              ; preds = %176, %166
  %184 = load i32*, i32** %9, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = call i32 @pdf_trailer(i32* %185, %struct.TYPE_11__* %186)
  %188 = load i32, i32* @ID, align 4
  %189 = call i32 @PDF_NAME(i32 %188)
  %190 = call i32* @pdf_dict_get(i32* %184, i32 %187, i32 %189)
  store i32* %190, i32** %18, align 8
  %191 = load i32*, i32** %18, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %183
  %194 = load i32*, i32** %9, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = load i32, i32* @ID, align 4
  %197 = call i32 @PDF_NAME(i32 %196)
  %198 = load i32*, i32** %18, align 8
  %199 = call i32 @pdf_dict_put(i32* %194, i32* %195, i32 %197, i32* %198)
  br label %200

200:                                              ; preds = %193, %183
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %204 = call i32 @pdf_trailer(i32* %202, %struct.TYPE_11__* %203)
  %205 = load i32, i32* @Encrypt, align 4
  %206 = call i32 @PDF_NAME(i32 %205)
  %207 = call i32* @pdf_dict_get(i32* %201, i32 %204, i32 %206)
  store i32* %207, i32** %18, align 8
  %208 = load i32*, i32** %18, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %217

210:                                              ; preds = %200
  %211 = load i32*, i32** %9, align 8
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* @Encrypt, align 4
  %214 = call i32 @PDF_NAME(i32 %213)
  %215 = load i32*, i32** %18, align 8
  %216 = call i32 @pdf_dict_put(i32* %211, i32* %212, i32 %214, i32* %215)
  br label %217

217:                                              ; preds = %210, %200
  br label %218

218:                                              ; preds = %217, %134
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %218
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32* @pdf_new_int(i32* %222, i32 %223)
  store i32* %224, i32** %19, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = load i32*, i32** %17, align 8
  %227 = load i32, i32* @Prev, align 4
  %228 = call i32 @PDF_NAME(i32 %227)
  %229 = load i32*, i32** %19, align 8
  %230 = call i32 @pdf_dict_put_drop(i32* %225, i32* %226, i32 %228, i32* %229)
  br label %231

231:                                              ; preds = %221, %218
  br label %232

232:                                              ; preds = %231, %109
  %233 = load i32*, i32** %9, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @fz_write_string(i32* %233, i32 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %238 = load i32*, i32** %9, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @pdf_print_obj(i32* %238, i32 %241, i32* %242, i32 %245, i32 %248)
  %250 = load i32*, i32** %9, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @fz_write_string(i32* %250, i32 %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %255 = load i32*, i32** %9, align 8
  %256 = load i32*, i32** %17, align 8
  %257 = call i32 @pdf_drop_obj(i32* %255, i32* %256)
  %258 = load i32*, i32** %9, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @fz_write_printf(i32* %258, i32 %261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  store i64 0, i64* %265, align 8
  ret void
}

declare dso_local i32 @fz_write_string(i32*, i32, i8*) #1

declare dso_local i32 @fz_tell_output(i32*, i32) #1

declare dso_local i64 @pdf_xref_is_incremental(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @writexrefsubsect(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @fz_var(i32*) #1

declare dso_local i32* @pdf_keep_obj(i32*, i32) #1

declare dso_local i32 @pdf_trailer(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_xref_len(i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @pdf_new_dict(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32* @pdf_new_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_print_obj(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
