; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_ifaceps_record.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_ifaceps_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guidsection_header = type { i32 }
%struct.entity_array = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.guid_index = type { i32, i32, i32, i32 }
%struct.ifacepsredirect_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.guidsection_header*, %struct.entity_array*, %struct.guid_index**, i32*, i32)* @add_ifaceps_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ifaceps_record(%struct.guidsection_header* %0, %struct.entity_array* %1, %struct.guid_index** %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.guidsection_header*, align 8
  %7 = alloca %struct.entity_array*, align 8
  %8 = alloca %struct.guid_index**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.entity*, align 8
  %13 = alloca %struct.ifacepsredirect_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.guidsection_header* %0, %struct.guidsection_header** %6, align 8
  store %struct.entity_array* %1, %struct.entity_array** %7, align 8
  store %struct.guid_index** %2, %struct.guid_index*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %246, %5
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.entity_array*, %struct.entity_array** %7, align 8
  %20 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %249

23:                                               ; preds = %17
  %24 = load %struct.entity_array*, %struct.entity_array** %7, align 8
  %25 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %24, i32 0, i32 1
  %26 = load %struct.entity*, %struct.entity** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.entity, %struct.entity* %26, i64 %28
  store %struct.entity* %29, %struct.entity** %12, align 8
  %30 = load %struct.entity*, %struct.entity** %12, align 8
  %31 = getelementptr inbounds %struct.entity, %struct.entity* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %245

35:                                               ; preds = %23
  %36 = load %struct.guidsection_header*, %struct.guidsection_header** %6, align 8
  %37 = bitcast %struct.guidsection_header* %36 to i32*
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = bitcast i32* %41 to %struct.ifacepsredirect_data*
  store %struct.ifacepsredirect_data* %42, %struct.ifacepsredirect_data** %13, align 8
  %43 = load %struct.entity*, %struct.entity** %12, align 8
  %44 = getelementptr inbounds %struct.entity, %struct.entity* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load %struct.entity*, %struct.entity** %12, align 8
  %51 = getelementptr inbounds %struct.entity, %struct.entity* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strlenW(i64 %54)
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  br label %60

59:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.entity*, %struct.entity** %12, align 8
  %62 = getelementptr inbounds %struct.entity, %struct.entity* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RtlInitUnicodeString(i32* %14, i32 %65)
  %67 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %68 = load %struct.guid_index*, %struct.guid_index** %67, align 8
  %69 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %68, i32 0, i32 3
  %70 = call i32 @RtlGUIDFromString(i32* %14, i32* %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %74 = load %struct.guid_index*, %struct.guid_index** %73, align 8
  %75 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 32, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %60
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @aligned_string_len(i32 %84)
  br label %87

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ %85, %80 ], [ 0, %86 ]
  %89 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %90 = load %struct.guid_index*, %struct.guid_index** %89, align 8
  %91 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %94 = load %struct.guid_index*, %struct.guid_index** %93, align 8
  %95 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 4
  %96 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %97 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %96, i32 0, i32 0
  store i32 32, i32* %97, align 4
  %98 = load %struct.entity*, %struct.entity** %12, align 8
  %99 = getelementptr inbounds %struct.entity, %struct.entity* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %104 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.entity*, %struct.entity** %12, align 8
  %106 = getelementptr inbounds %struct.entity, %struct.entity* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %87
  %112 = load %struct.entity*, %struct.entity** %12, align 8
  %113 = getelementptr inbounds %struct.entity, %struct.entity* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @RtlInitUnicodeString(i32* %14, i32 %116)
  %118 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %119 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %118, i32 0, i32 6
  %120 = call i32 @RtlGUIDFromString(i32* %14, i32* %119)
  br label %128

121:                                              ; preds = %87
  %122 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %123 = load %struct.guid_index*, %struct.guid_index** %122, align 8
  %124 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %127 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %111
  %129 = load %struct.entity*, %struct.entity** %12, align 8
  %130 = getelementptr inbounds %struct.entity, %struct.entity* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %135 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.entity*, %struct.entity** %12, align 8
  %137 = getelementptr inbounds %struct.entity, %struct.entity* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %128
  %143 = load %struct.entity*, %struct.entity** %12, align 8
  %144 = getelementptr inbounds %struct.entity, %struct.entity* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @RtlInitUnicodeString(i32* %14, i32 %147)
  %149 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %150 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %149, i32 0, i32 4
  %151 = call i32 @RtlGUIDFromString(i32* %14, i32* %150)
  br label %156

152:                                              ; preds = %128
  %153 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %154 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %153, i32 0, i32 4
  %155 = call i32 @memset(i32* %154, i32 0, i32 4)
  br label %156

156:                                              ; preds = %152, %142
  %157 = load %struct.entity*, %struct.entity** %12, align 8
  %158 = getelementptr inbounds %struct.entity, %struct.entity* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load %struct.entity*, %struct.entity** %12, align 8
  %165 = getelementptr inbounds %struct.entity, %struct.entity* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @RtlInitUnicodeString(i32* %14, i32 %168)
  %170 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %171 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %170, i32 0, i32 3
  %172 = call i32 @RtlGUIDFromString(i32* %14, i32* %171)
  br label %177

173:                                              ; preds = %156
  %174 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %175 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %174, i32 0, i32 3
  %176 = call i32 @memset(i32* %175, i32 0, i32 4)
  br label %177

177:                                              ; preds = %173, %163
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %180 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %182 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i64 32, i64 0
  %187 = trunc i64 %186 to i32
  %188 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %189 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %191 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %177
  %195 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %196 = bitcast %struct.ifacepsredirect_data* %195 to i32*
  %197 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %198 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = bitcast i32* %201 to i64*
  store i64* %202, i64** %16, align 8
  %203 = load i64*, i64** %16, align 8
  %204 = load %struct.entity*, %struct.entity** %12, align 8
  %205 = getelementptr inbounds %struct.entity, %struct.entity* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %210 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @memcpy(i64* %203, i64 %208, i32 %211)
  %213 = load i64*, i64** %16, align 8
  %214 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %215 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = udiv i64 %217, 8
  %219 = getelementptr inbounds i64, i64* %213, i64 %218
  store i64 0, i64* %219, align 8
  br label %220

220:                                              ; preds = %194, %177
  %221 = load %struct.guid_index**, %struct.guid_index*** %8, align 8
  %222 = load %struct.guid_index*, %struct.guid_index** %221, align 8
  %223 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %222, i64 1
  store %struct.guid_index* %223, %struct.guid_index** %221, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add i64 %226, 32
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %230 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %220
  %234 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %13, align 8
  %235 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add i64 %237, 8
  %239 = trunc i64 %238 to i32
  %240 = call i32 @aligned_string_len(i32 %239)
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %240
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %233, %220
  br label %245

245:                                              ; preds = %244, %23
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %11, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %17

249:                                              ; preds = %17
  ret void
}

declare dso_local i32 @strlenW(i64) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
