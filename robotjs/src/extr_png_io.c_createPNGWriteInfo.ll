; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_png_io.c_createPNGWriteInfo.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_png_io.c_createPNGWriteInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32**, i32*, i32* }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_INTERLACE_NONE = common dso_local global i32 0, align 4
@PNG_COMPRESSION_TYPE_DEFAULT = common dso_local global i32 0, align 4
@PNG_FILTER_TYPE_DEFAULT = common dso_local global i32 0, align 4
@MMRGB_IS_BGR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_12__*)* @createPNGWriteInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @createPNGWriteInfo(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = call %struct.TYPE_10__* @malloc(i32 4)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %223

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i32** null, i32*** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %27 = call i32* @png_create_write_struct(i32 %26, i32* null, i32* null, i32* null)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %216

35:                                               ; preds = %15
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @png_jmpbuf(i32* %38)
  %40 = call i64 @setjmp(i32 %39) #3
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = call i32 @png_destroy_write_struct(i32** %44, i32** %46)
  br label %216

48:                                               ; preds = %35
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32* @png_create_info_struct(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = call i32 @png_destroy_write_struct(i32** %61, i32** null)
  br label %216

63:                                               ; preds = %48
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %78 = load i32, i32* @PNG_INTERLACE_NONE, align 4
  %79 = load i32, i32* @PNG_COMPRESSION_TYPE_DEFAULT, align 4
  %80 = load i32, i32* @PNG_FILTER_TYPE_DEFAULT, align 4
  %81 = call i32 @png_set_IHDR(i32* %66, i32* %69, i64 %72, i64 %76, i32 8, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = call i8* @png_malloc(i32* %89, i64 %94)
  %96 = bitcast i8* %95 to i32**
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32** %96, i32*** %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %140

103:                                              ; preds = %63
  store i64 0, i64* %5, align 8
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = mul i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  store i32* %120, i32** %125, align 8
  br label %126

126:                                              ; preds = %111
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %5, align 8
  br label %104

129:                                              ; preds = %104
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load i64, i64* @MMRGB_IS_BGR, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @png_set_bgr(i32* %137)
  br label %139

139:                                              ; preds = %134, %129
  br label %204

140:                                              ; preds = %63
  store i64 3, i64* %6, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = mul i64 %143, 3
  %145 = call i64 @ADD_PADDING(i64 %144)
  store i64 %145, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %146

146:                                              ; preds = %198, %140
  %147 = load i64, i64* %5, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %147, %151
  br i1 %152, label %153, label %201

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i8* @png_malloc(i32* %156, i64 %157)
  %159 = bitcast i8* %158 to i32*
  store i32* %159, i32** %9, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load i32**, i32*** %162, align 8
  %164 = load i64, i64* %5, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  store i32* %160, i32** %165, align 8
  store i64 0, i64* %8, align 8
  br label %166

166:                                              ; preds = %194, %153
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %197

172:                                              ; preds = %166
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %5, align 8
  %176 = call %struct.TYPE_11__* @MMRGBColorRefAtPoint(%struct.TYPE_12__* %173, i64 %174, i64 %175)
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %10, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %189, i32* %191, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  store i32* %193, i32** %9, align 8
  br label %194

194:                                              ; preds = %172
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %166

197:                                              ; preds = %166
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %5, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %5, align 8
  br label %146

201:                                              ; preds = %146
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %139
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = call i32 @png_set_rows(i32* %207, i32* %210, i32** %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %2, align 8
  br label %223

216:                                              ; preds = %59, %42, %34
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %218 = icmp ne %struct.TYPE_10__* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = call i32 @free(%struct.TYPE_10__* %220)
  br label %222

222:                                              ; preds = %219, %216
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %223

223:                                              ; preds = %222, %204, %14
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %224
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @png_create_write_struct(i32, i32*, i32*, i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_destroy_write_struct(i32**, i32**) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_set_IHDR(i32*, i32*, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i8* @png_malloc(i32*, i64) #1

declare dso_local i32 @png_set_bgr(i32*) #1

declare dso_local i64 @ADD_PADDING(i64) #1

declare dso_local %struct.TYPE_11__* @MMRGBColorRefAtPoint(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @png_set_rows(i32*, i32*, i32**) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
