; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_convert_gray_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_convert_gray_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"ERROR -> opj_decompress: failed to allocate memory for RGB image!\0A\00", align 1
@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @convert_gray_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @convert_gray_to_rgb(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 36
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @opj_image_destroy(%struct.TYPE_11__* %21)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %583

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  store i32 %29, i32* %35, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 8
  store i32 %29, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 7
  store i32 %44, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 7
  store i32 %44, i32* %53, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 6
  store i32 %59, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  store i32 %59, i32* %68, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 %74, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i32 %89, i32* %95, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %89, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  store i32 %104, i32* %113, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  store i32 %119, i32* %125, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  store i32 %119, i32* %128, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store i32 %134, i32* %140, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  store i32 %134, i32* %143, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store i32 %149, i32* %155, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  store i32 %149, i32* %158, align 4
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %292, %23
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %295

165:                                              ; preds = %159
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = load i32, i32* %4, align 4
  %176 = add i32 %175, 2
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 8
  store i32 %173, i32* %179, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = load i32, i32* %4, align 4
  %190 = add i32 %189, 2
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 7
  store i32 %187, i32* %193, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = load i32, i32* %4, align 4
  %204 = add i32 %203, 2
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 6
  store i32 %201, i32* %207, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = load i32, i32* %4, align 4
  %218 = add i32 %217, 2
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  store i32 %215, i32* %221, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = load i32, i32* %4, align 4
  %232 = add i32 %231, 2
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  store i32 %229, i32* %235, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 9
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = load i32, i32* %4, align 4
  %246 = add i32 %245, 2
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 5
  store i32 %243, i32* %249, align 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %259 = load i32, i32* %4, align 4
  %260 = add i32 %259, 2
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 4
  store i32 %257, i32* %263, align 4
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = load i32, i32* %4, align 4
  %274 = add i32 %273, 2
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  store i32 %271, i32* %277, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = load i32, i32* %4, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %287 = load i32, i32* %4, align 4
  %288 = add i32 %287, 2
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 2
  store i32 %285, i32* %291, align 4
  br label %292

292:                                              ; preds = %165
  %293 = load i32, i32* %4, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %4, align 4
  br label %159

295:                                              ; preds = %159
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = add i32 %298, 2
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %301 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  %302 = call %struct.TYPE_11__* @opj_image_create(i32 %299, %struct.TYPE_12__* %300, i32 %301)
  store %struct.TYPE_11__* %302, %struct.TYPE_11__** %5, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %304 = call i32 @free(%struct.TYPE_12__* %303)
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %306 = icmp eq %struct.TYPE_11__* %305, null
  br i1 %306, label %307, label %312

307:                                              ; preds = %295
  %308 = load i32, i32* @stderr, align 4
  %309 = call i32 @fprintf(i32 %308, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %311 = call i32 @opj_image_destroy(%struct.TYPE_11__* %310)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %583

312:                                              ; preds = %295
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 4
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i64 2
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 5
  store i32 %338, i32* %343, align 4
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i64 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 5
  store i32 %338, i32* %348, align 4
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 5
  store i32 %338, i32* %353, align 4
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i64 2
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 4
  store i32 %359, i32* %364, align 4
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i64 1
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 4
  store i32 %359, i32* %369, align 4
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 4
  store i32 %359, i32* %374, align 4
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i64 2
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 3
  store i32 %380, i32* %385, align 4
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i64 1
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 3
  store i32 %380, i32* %390, align 4
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i64 0
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 3
  store i32 %380, i32* %395, align 4
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i64 0
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i64 0
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i64 0
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = mul nsw i32 %413, %419
  %421 = sext i32 %420 to i64
  %422 = mul i64 %421, 4
  %423 = trunc i64 %422 to i32
  %424 = call i32 @memcpy(i32 %401, i32 %407, i32 %423)
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i64 1
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i64 0
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i64 0
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i64 0
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = mul nsw i32 %442, %448
  %450 = sext i32 %449 to i64
  %451 = mul i64 %450, 4
  %452 = trunc i64 %451 to i32
  %453 = call i32 @memcpy(i32 %430, i32 %436, i32 %452)
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i64 2
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i64 0
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_10__*, %struct.TYPE_10__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i64 0
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i64 0
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = mul nsw i32 %471, %477
  %479 = sext i32 %478 to i64
  %480 = mul i64 %479, 4
  %481 = trunc i64 %480 to i32
  %482 = call i32 @memcpy(i32 %459, i32 %465, i32 %481)
  store i32 1, i32* %4, align 4
  br label %483

483:                                              ; preds = %576, %312
  %484 = load i32, i32* %4, align 4
  %485 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = icmp ult i32 %484, %487
  br i1 %488, label %489, label %579

489:                                              ; preds = %483
  %490 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %491, align 8
  %493 = load i32, i32* %4, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 5
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_10__*, %struct.TYPE_10__** %499, align 8
  %501 = load i32, i32* %4, align 4
  %502 = add i32 %501, 2
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 5
  store i32 %497, i32* %505, align 4
  %506 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_10__*, %struct.TYPE_10__** %507, align 8
  %509 = load i32, i32* %4, align 4
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 4
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 1
  %516 = load %struct.TYPE_10__*, %struct.TYPE_10__** %515, align 8
  %517 = load i32, i32* %4, align 4
  %518 = add i32 %517, 2
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 4
  store i32 %513, i32* %521, align 4
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 1
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %523, align 8
  %525 = load i32, i32* %4, align 4
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 1
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %531, align 8
  %533 = load i32, i32* %4, align 4
  %534 = add i32 %533, 2
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 3
  store i32 %529, i32* %537, align 4
  %538 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %538, i32 0, i32 1
  %540 = load %struct.TYPE_10__*, %struct.TYPE_10__** %539, align 8
  %541 = load i32, i32* %4, align 4
  %542 = add i32 %541, 2
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 1
  %549 = load %struct.TYPE_10__*, %struct.TYPE_10__** %548, align 8
  %550 = load i32, i32* %4, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %555, i32 0, i32 1
  %557 = load %struct.TYPE_10__*, %struct.TYPE_10__** %556, align 8
  %558 = load i32, i32* %4, align 4
  %559 = zext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 1
  %565 = load %struct.TYPE_10__*, %struct.TYPE_10__** %564, align 8
  %566 = load i32, i32* %4, align 4
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = mul nsw i32 %562, %570
  %572 = sext i32 %571 to i64
  %573 = mul i64 %572, 4
  %574 = trunc i64 %573 to i32
  %575 = call i32 @memcpy(i32 %546, i32 %554, i32 %574)
  br label %576

576:                                              ; preds = %489
  %577 = load i32, i32* %4, align 4
  %578 = add i32 %577, 1
  store i32 %578, i32* %4, align 4
  br label %483

579:                                              ; preds = %483
  %580 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %581 = call i32 @opj_image_destroy(%struct.TYPE_11__* %580)
  %582 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %582, %struct.TYPE_11__** %2, align 8
  br label %583

583:                                              ; preds = %579, %307, %18
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %584
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @opj_image_create(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
