; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_do_reap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_do_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32* }
%struct.TYPE_25__ = type { i64, {}* }

@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @do_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reap(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = icmp eq %struct.TYPE_22__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %16 = call i32 @fz_unlock(%struct.TYPE_24__* %14, i32 %15)
  br label %219

17:                                               ; preds = %1
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %20 = call i32 @fz_assert_lock_held(%struct.TYPE_24__* %18, i32 %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %4, align 8
  br label %28

28:                                               ; preds = %173, %17
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = icmp ne %struct.TYPE_23__* %29, null
  br i1 %30, label %31, label %175

31:                                               ; preds = %28
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %5, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, i32)** %38, align 8
  %40 = icmp eq i64 (%struct.TYPE_24__*, i32)* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %31
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, i32)** %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 %46(%struct.TYPE_24__* %47, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41, %31
  br label %173

54:                                               ; preds = %41
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = icmp ne %struct.TYPE_23__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %75, align 8
  br label %82

76:                                               ; preds = %54
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %81, align 8
  br label %82

82:                                               ; preds = %76, %68
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = icmp ne %struct.TYPE_23__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 4
  store %struct.TYPE_23__* %90, %struct.TYPE_23__** %94, align 8
  br label %101

95:                                               ; preds = %82
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  store %struct.TYPE_23__* %98, %struct.TYPE_23__** %100, align 8
  br label %101

101:                                              ; preds = %95, %87
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)** %105, align 8
  %107 = icmp ne i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %109, i8 0, i64 16, i1 false)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = bitcast {}** %113 to i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)**
  %115 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* %115, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %116, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)** %120, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 %121(%struct.TYPE_24__* %122, %struct.TYPE_21__* %7, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %108
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @fz_hash_remove(%struct.TYPE_24__* %129, i32 %132, %struct.TYPE_21__* %7)
  br label %134

134:                                              ; preds = %128, %108
  br label %135

135:                                              ; preds = %134, %101
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = call i32 @Memento_dropRef(%struct.TYPE_25__* %145)
  br label %147

147:                                              ; preds = %142, %135
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %147
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, -1
  store i64 %160, i64* %158, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  br label %165

164:                                              ; preds = %154, %147
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi %struct.TYPE_23__* [ %163, %162 ], [ null, %164 ]
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 3
  store %struct.TYPE_23__* %166, %struct.TYPE_23__** %168, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 4
  store %struct.TYPE_23__* %169, %struct.TYPE_23__** %171, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %172, %struct.TYPE_23__** %6, align 8
  br label %173

173:                                              ; preds = %165, %53
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %4, align 8
  br label %28

175:                                              ; preds = %28
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %177 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %178 = call i32 @fz_unlock(%struct.TYPE_24__* %176, i32 %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %179, %struct.TYPE_23__** %4, align 8
  br label %180

180:                                              ; preds = %217, %175
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = icmp ne %struct.TYPE_23__* %181, null
  br i1 %182, label %183, label %219

183:                                              ; preds = %180
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  store %struct.TYPE_23__* %186, %struct.TYPE_23__** %6, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = icmp ne %struct.TYPE_23__* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %183
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 1
  %196 = bitcast {}** %195 to i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)**
  %197 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %196, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = call i32 %197(%struct.TYPE_24__* %198, %struct.TYPE_25__* %201)
  br label %203

203:                                              ; preds = %191, %183
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %207, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %208(%struct.TYPE_24__* %209, i32 %212)
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %216 = call i32 @fz_free(%struct.TYPE_24__* %214, %struct.TYPE_23__* %215)
  br label %217

217:                                              ; preds = %203
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %218, %struct.TYPE_23__** %4, align 8
  br label %180

219:                                              ; preds = %13, %180
  ret void
}

declare dso_local i32 @fz_unlock(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @fz_assert_lock_held(%struct.TYPE_24__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fz_hash_remove(%struct.TYPE_24__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @Memento_dropRef(%struct.TYPE_25__*) #1

declare dso_local i32 @fz_free(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
