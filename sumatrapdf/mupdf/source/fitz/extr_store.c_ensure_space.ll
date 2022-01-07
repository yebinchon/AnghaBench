; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_ensure_space.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_ensure_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_25__*, %struct.TYPE_23__*, i64, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32* }
%struct.TYPE_25__ = type { i32, {}* }

@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, i64)* @ensure_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ensure_space(%struct.TYPE_24__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %19 = call i32 @fz_assert_lock_held(%struct.TYPE_24__* %17, i32 %18)
  store i64 0, i64* %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %6, align 8
  br label %23

23:                                               ; preds = %45, %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = icmp ne %struct.TYPE_23__* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %49

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %6, align 8
  br label %23

49:                                               ; preds = %42, %23
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %51 = icmp eq %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64 0, i64* %3, align 8
  br label %243

53:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %6, align 8
  br label %57

57:                                               ; preds = %167, %53
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %59 = icmp ne %struct.TYPE_23__* %58, null
  br i1 %59, label %60, label %169

60:                                               ; preds = %57
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %7, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %167

71:                                               ; preds = %60
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = icmp ne %struct.TYPE_23__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %71
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 5
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %92, align 8
  br label %99

93:                                               ; preds = %71
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %98, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = icmp ne %struct.TYPE_23__* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %111, align 8
  br label %118

112:                                              ; preds = %99
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store %struct.TYPE_23__* %115, %struct.TYPE_23__** %117, align 8
  br label %118

118:                                              ; preds = %112, %104
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)** %122, align 8
  %124 = icmp ne i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)* %123, null
  br i1 %124, label %125, label %152

125:                                              ; preds = %118
  %126 = bitcast %struct.TYPE_21__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %126, i8 0, i64 16, i1 false)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = bitcast {}** %130 to i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)**
  %132 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* %132, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_21__*, i32)** %137, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 %138(%struct.TYPE_24__* %139, %struct.TYPE_21__* %11, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %125
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @fz_hash_remove(%struct.TYPE_24__* %146, i32 %149, %struct.TYPE_21__* %11)
  br label %151

151:                                              ; preds = %145, %125
  br label %152

152:                                              ; preds = %151, %118
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 3
  store %struct.TYPE_23__* %153, %struct.TYPE_23__** %155, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %156, %struct.TYPE_23__** %10, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %8, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp uge i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %169

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %70
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %6, align 8
  br label %57

169:                                              ; preds = %165, %57
  br label %170

170:                                              ; preds = %224, %169
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %172 = icmp ne %struct.TYPE_23__* %171, null
  br i1 %172, label %173, label %241

173:                                              ; preds = %170
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %12, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  store %struct.TYPE_23__* %177, %struct.TYPE_23__** %10, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = call i32 @Memento_dropRef(%struct.TYPE_25__* %187)
  br label %189

189:                                              ; preds = %184, %173
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %189
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 8
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %196, %189
  %205 = phi i1 [ false, %189 ], [ %203, %196 ]
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %13, align 4
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %209 = call i32 @fz_unlock(%struct.TYPE_24__* %207, i32 %208)
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 1
  %217 = bitcast {}** %216 to i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)**
  %218 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %217, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %221, align 8
  %223 = call i32 %218(%struct.TYPE_24__* %219, %struct.TYPE_25__* %222)
  br label %224

224:                                              ; preds = %212, %204
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %228, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 %229(%struct.TYPE_24__* %230, i32 %233)
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %237 = call i32 @fz_free(%struct.TYPE_24__* %235, %struct.TYPE_23__* %236)
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %239 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %240 = call i32 @fz_lock(%struct.TYPE_24__* %238, i32 %239)
  br label %170

241:                                              ; preds = %170
  %242 = load i64, i64* %8, align 8
  store i64 %242, i64* %3, align 8
  br label %243

243:                                              ; preds = %241, %52
  %244 = load i64, i64* %3, align 8
  ret i64 %244
}

declare dso_local i32 @fz_assert_lock_held(%struct.TYPE_24__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fz_hash_remove(%struct.TYPE_24__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @Memento_dropRef(%struct.TYPE_25__*) #1

declare dso_local i32 @fz_unlock(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @fz_free(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @fz_lock(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
