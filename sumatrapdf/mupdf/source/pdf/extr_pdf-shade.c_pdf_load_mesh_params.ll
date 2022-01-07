; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_mesh_params.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_mesh_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32, i8**, i8*, i8* }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@VerticesPerRow = common dso_local global i32 0, align 4
@BitsPerFlag = common dso_local global i32 0, align 4
@BitsPerCoordinate = common dso_local global i32 0, align 4
@BitsPerComponent = common dso_local global i32 0, align 4
@Decode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Too few vertices per row (%d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid number of bits per flag (%d)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid number of bits per coordinate (%d)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid number of bits per component (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*, i32*)* @pdf_load_mesh_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_mesh_params(i32* %0, i32* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  store i8* null, i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %49, %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @FZ_MAX_COLORS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* null, i8** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @VerticesPerRow, align 4
  %56 = call i32 @PDF_NAME(i32 %55)
  %57 = call i8* @pdf_dict_get_int(i32* %53, i32* %54, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @BitsPerFlag, align 4
  %66 = call i32 @PDF_NAME(i32 %65)
  %67 = call i8* @pdf_dict_get_int(i32* %63, i32* %64, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @BitsPerCoordinate, align 4
  %76 = call i32 @PDF_NAME(i32 %75)
  %77 = call i8* @pdf_dict_get_int(i32* %73, i32* %74, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i32 %78, i32* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @BitsPerComponent, align 4
  %86 = call i32 @PDF_NAME(i32 %85)
  %87 = call i8* @pdf_dict_get_int(i32* %83, i32* %84, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  store i32 %88, i32* %92, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @Decode, align 4
  %96 = call i32 @PDF_NAME(i32 %95)
  %97 = call i32* @pdf_dict_get(i32* %93, i32* %94, i32 %96)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @pdf_array_len(i32* %98, i32* %99)
  %101 = icmp sge i32 %100, 6
  br i1 %101, label %102, label %178

102:                                              ; preds = %52
  %103 = load i32, i32* @FZ_MAX_COLORS, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @pdf_array_len(i32* %104, i32* %105)
  %107 = sub nsw i32 %106, 4
  %108 = sdiv i32 %107, 2
  %109 = call i32 @fz_mini(i32 %103, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i8* @pdf_array_get_real(i32* %110, i32* %111, i32 0)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  store i8* %112, i8** %116, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call i8* @pdf_array_get_real(i32* %117, i32* %118, i32 1)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i8* @pdf_array_get_real(i32* %125, i32* %126, i32 2)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  store i8* %127, i8** %131, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i8* @pdf_array_get_real(i32* %132, i32* %133, i32 3)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %174, %102
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 %147, 2
  %149 = add nsw i32 4, %148
  %150 = call i8* @pdf_array_get_real(i32* %145, i32* %146, i32 %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 7
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %150, i8** %158, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 5, %162
  %164 = call i8* @pdf_array_get_real(i32* %159, i32* %160, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %165, i32* %173, align 4
  br label %174

174:                                              ; preds = %144
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %140

177:                                              ; preds = %140
  br label %178

178:                                              ; preds = %177, %52
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %185, label %202

185:                                              ; preds = %178
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @fz_warn(i32* %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  store i32 2, i32* %201, align 8
  br label %202

202:                                              ; preds = %190, %185, %178
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 2
  br i1 %208, label %209, label %240

209:                                              ; preds = %202
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 4
  br i1 %215, label %216, label %240

216:                                              ; preds = %209
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 8
  br i1 %222, label %223, label %240

223:                                              ; preds = %216
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 5
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load i32*, i32** %5, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @fz_warn(i32* %229, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  store i32 8, i32* %239, align 4
  br label %240

240:                                              ; preds = %228, %223, %216, %209, %202
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 1
  br i1 %246, label %247, label %308

247:                                              ; preds = %240
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 2
  br i1 %253, label %254, label %308

254:                                              ; preds = %247
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 4
  br i1 %260, label %261, label %308

261:                                              ; preds = %254
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 8
  br i1 %267, label %268, label %308

268:                                              ; preds = %261
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 12
  br i1 %274, label %275, label %308

275:                                              ; preds = %268
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 16
  br i1 %281, label %282, label %308

282:                                              ; preds = %275
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 24
  br i1 %288, label %289, label %308

289:                                              ; preds = %282
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 32
  br i1 %295, label %296, label %308

296:                                              ; preds = %289
  %297 = load i32*, i32** %5, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @fz_warn(i32* %297, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %302)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 5
  store i32 8, i32* %307, align 8
  br label %308

308:                                              ; preds = %296, %289, %282, %275, %268, %261, %254, %247, %240
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 1
  br i1 %314, label %315, label %362

315:                                              ; preds = %308
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 2
  br i1 %321, label %322, label %362

322:                                              ; preds = %315
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 4
  br i1 %328, label %329, label %362

329:                                              ; preds = %322
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 8
  br i1 %335, label %336, label %362

336:                                              ; preds = %329
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 12
  br i1 %342, label %343, label %362

343:                                              ; preds = %336
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 16
  br i1 %349, label %350, label %362

350:                                              ; preds = %343
  %351 = load i32*, i32** %5, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @fz_warn(i32* %351, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %356)
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 6
  store i32 8, i32* %361, align 4
  br label %362

362:                                              ; preds = %350, %343, %336, %329, %322, %315, %308
  ret void
}

declare dso_local i8* @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
