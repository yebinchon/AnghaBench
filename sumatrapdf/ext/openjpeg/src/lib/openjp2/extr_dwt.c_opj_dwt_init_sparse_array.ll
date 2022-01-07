; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_init_sparse_array.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_init_sparse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i64, i64, i64, i64 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i64)* @opj_dwt_init_sparse_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @opj_dwt_init_sparse_array(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @opj_uint_min(i64 %46, i32 64)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @opj_uint_min(i64 %48, i32 64)
  %50 = call i32* @opj_sparse_array_int32_create(i64 %44, i64 %45, i32 %47, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %225

54:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %220, %54
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %223

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %216, %59
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %219

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %75
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %15, align 8
  store i64 0, i64* %11, align 8
  br label %77

77:                                               ; preds = %212, %71
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %81, %84
  %86 = icmp ult i64 %78, %85
  br i1 %86, label %87, label %215

87:                                               ; preds = %77
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %91
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %16, align 8
  store i64 0, i64* %12, align 8
  br label %93

93:                                               ; preds = %208, %87
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %97, %100
  %102 = icmp ult i64 %94, %101
  br i1 %102, label %103, label %211

103:                                              ; preds = %93
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %108
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %17, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %207

114:                                              ; preds = %103
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %18, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  store i64 %128, i64* %19, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  store i64 %135, i64* %20, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  store i64 %142, i64* %21, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %114
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = sub i64 %152, 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %153
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %22, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = load i64, i64* %18, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %18, align 8
  br label %164

164:                                              ; preds = %148, %114
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 2
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = sub i64 %174, 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %23, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load i64, i64* %19, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %19, align 8
  br label %186

186:                                              ; preds = %170, %164
  %187 = load i32*, i32** %13, align 8
  %188 = load i64, i64* %18, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load i64, i64* %20, align 8
  %192 = add i64 %190, %191
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %21, align 8
  %195 = add i64 %193, %194
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %20, align 8
  %200 = load i32, i32* @OPJ_TRUE, align 4
  %201 = call i32 @opj_sparse_array_int32_write(i32* %187, i64 %188, i64 %189, i64 %192, i64 %195, i32* %198, i32 1, i64 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %186
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 @opj_sparse_array_int32_free(i32* %204)
  store i32* null, i32** %3, align 8
  br label %225

206:                                              ; preds = %186
  br label %207

207:                                              ; preds = %206, %103
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %12, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %12, align 8
  br label %93

211:                                              ; preds = %93
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %11, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %11, align 8
  br label %77

215:                                              ; preds = %77
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %10, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %10, align 8
  br label %65

219:                                              ; preds = %65
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %9, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %9, align 8
  br label %55

223:                                              ; preds = %55
  %224 = load i32*, i32** %13, align 8
  store i32* %224, i32** %3, align 8
  br label %225

225:                                              ; preds = %223, %203, %53
  %226 = load i32*, i32** %3, align 8
  ret i32* %226
}

declare dso_local i32* @opj_sparse_array_int32_create(i64, i64, i32, i32) #1

declare dso_local i32 @opj_uint_min(i64, i32) #1

declare dso_local i32 @opj_sparse_array_int32_write(i32*, i64, i64, i64, i64, i32*, i32, i64, i32) #1

declare dso_local i32 @opj_sparse_array_int32_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
