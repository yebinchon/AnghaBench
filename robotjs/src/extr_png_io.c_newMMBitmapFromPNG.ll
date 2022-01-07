; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_png_io.c_newMMBitmapFromPNG.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_png_io.c_newMMBitmapFromPNG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@kPNGAccessError = common dso_local global i32 0, align 4
@kPNGGenericError = common dso_local global i32 0, align 4
@kPNGReadError = common dso_local global i32 0, align 4
@kPNGInvalidHeaderError = common dso_local global i32 0, align 4
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @newMMBitmapFromPNG(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @kPNGAccessError, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  store i32* null, i32** %3, align 8
  br label %245

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @kPNGGenericError, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @fread(i32* %41, i32 1, i32 32, i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @kPNGReadError, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %241

52:                                               ; preds = %40
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %54 = call i64 @png_sig_cmp(i32* %53, i32 0, i32 32)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @kPNGInvalidHeaderError, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %241

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %66 = call i32* @png_create_read_struct(i32 %65, i32* null, i32* null, i32* null)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %241

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = call i32* @png_create_info_struct(i32* %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %241

76:                                               ; preds = %70
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @png_jmpbuf(i32* %77)
  %79 = call i64 @setjmp(i32 %78) #3
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %241

82:                                               ; preds = %76
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @png_init_io(i32* %83, i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @png_set_sig_bytes(i32* %86, i32 32)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @png_read_info(i32* %88, i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @png_get_bit_depth(i32* %91, i32* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @png_get_color_type(i32* %94, i32* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @png_set_palette_to_rgb(i32* %101)
  br label %103

103:                                              ; preds = %100, %82
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 8
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @png_set_expand_gray_1_2_4_to_8(i32* %111)
  br label %120

113:                                              ; preds = %107, %103
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 16
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @png_set_strip_16(i32* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %110
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* @PNG_INFO_tRNS, align 4
  %124 = call i64 @png_get_valid(i32* %121, i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @png_set_tRNS_to_alpha(i32* %127)
  br label %129

129:                                              ; preds = %126, %120
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %129
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @png_set_gray_to_rgb(i32* %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @png_set_strip_alpha(i32* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @png_get_image_width(i32* %149, i32* %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @png_get_image_height(i32* %152, i32* %153)
  store i32 %154, i32* %16, align 4
  store i32 3, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = mul nsw i32 %155, %156
  %158 = call i32 @ADD_PADDING(i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %159, %160
  %162 = call i32* @calloc(i32 1, i32 %161)
  store i32* %162, i32** %13, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @png_get_rowbytes(i32* %164, i32* %165)
  %167 = call i32* @png_malloc(i32* %163, i32 %166)
  store i32* %167, i32** %12, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %148
  %171 = load i32*, i32** %12, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %148
  br label %241

174:                                              ; preds = %170
  store i32 0, i32* %17, align 4
  br label %175

175:                                              ; preds = %222, %174
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %225

179:                                              ; preds = %175
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %20, align 4
  %183 = load i32*, i32** %12, align 8
  store i32* %183, i32** %21, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = call i32 @png_read_row(i32* %184, i32* %185, i32* null)
  store i32 0, i32* %19, align 4
  br label %187

187:                                              ; preds = %218, %179
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %14, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %22, align 4
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %22, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = bitcast i32* %201 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %202, %struct.TYPE_2__** %23, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %21, align 8
  %205 = load i32, i32* %203, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  %208 = load i32*, i32** %21, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %21, align 8
  %210 = load i32, i32* %208, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %21, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %21, align 8
  %215 = load i32, i32* %213, align 4
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %191
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %19, align 4
  br label %187

221:                                              ; preds = %187
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  br label %175

225:                                              ; preds = %175
  %226 = load i32*, i32** %12, align 8
  %227 = call i32 @free(i32* %226)
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 @png_read_end(i32* %228, i32* null)
  %230 = call i32 @png_destroy_read_struct(i32** %8, i32** %9, i32* null)
  %231 = load i32*, i32** %6, align 8
  %232 = call i32 @fclose(i32* %231)
  %233 = load i32*, i32** %13, align 8
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %14, align 4
  %238 = mul nsw i32 %237, 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32* @createMMBitmap(i32* %233, i32 %234, i32 %235, i32 %236, i32 %238, i32 %239)
  store i32* %240, i32** %3, align 8
  br label %245

241:                                              ; preds = %173, %81, %75, %69, %62, %51
  %242 = call i32 @png_destroy_read_struct(i32** %8, i32** %9, i32* null)
  %243 = load i32*, i32** %6, align 8
  %244 = call i32 @fclose(i32* %243)
  store i32* null, i32** %3, align 8
  br label %245

245:                                              ; preds = %241, %225, %33
  %246 = load i32*, i32** %3, align 8
  ret i32* %246
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @png_sig_cmp(i32*, i32, i32) #1

declare dso_local i32* @png_create_read_struct(i32, i32*, i32*, i32*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_init_io(i32*, i32*) #1

declare dso_local i32 @png_set_sig_bytes(i32*, i32) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_bit_depth(i32*, i32*) #1

declare dso_local i32 @png_get_color_type(i32*, i32*) #1

declare dso_local i32 @png_set_palette_to_rgb(i32*) #1

declare dso_local i32 @png_set_expand_gray_1_2_4_to_8(i32*) #1

declare dso_local i32 @png_set_strip_16(i32*) #1

declare dso_local i64 @png_get_valid(i32*, i32*, i32) #1

declare dso_local i32 @png_set_tRNS_to_alpha(i32*) #1

declare dso_local i32 @png_set_gray_to_rgb(i32*) #1

declare dso_local i32 @png_set_strip_alpha(i32*) #1

declare dso_local i32 @png_get_image_width(i32*, i32*) #1

declare dso_local i32 @png_get_image_height(i32*, i32*) #1

declare dso_local i32 @ADD_PADDING(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @png_malloc(i32*, i32) #1

declare dso_local i32 @png_get_rowbytes(i32*, i32*) #1

declare dso_local i32 @png_read_row(i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @png_read_end(i32*, i32*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @createMMBitmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
