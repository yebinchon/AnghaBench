; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_subspace_store.c_ts_subspace_store_add.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_subspace_store.c_ts_subspace_store_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { void (i8*)*, %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_subspace_store_add(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i8* %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i8* %2, i8** %7, align 8
  store void (i8*)* %3, void (i8*)** %8, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %205, %4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %208

39:                                               ; preds = %33
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %42, i64 %44
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %13, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = icmp eq %struct.TYPE_23__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %54 = icmp eq %struct.TYPE_23__* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %39
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %57 = icmp ne %struct.TYPE_26__* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call %struct.TYPE_23__* @subspace_store_internal_node_create(i32 %66)
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %69, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  store void (i8*)* @subspace_store_internal_node_free, void (i8*)** %71, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %9, align 8
  br label %75

75:                                               ; preds = %55, %39
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ule i64 %83, %87
  br label %89

89:                                               ; preds = %80, %75
  %90 = phi i1 [ true, %75 ], [ %88, %80 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 0, %101
  br i1 %102, label %119, label %103

103:                                              ; preds = %89
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %108, i64 0
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br label %119

119:                                              ; preds = %103, %89
  %120 = phi i1 [ true, %89 ], [ %118, %103 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %119
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ugt i64 %130, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %127
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i64 @subspace_store_internal_node_descendants(%struct.TYPE_23__* %137, i32 %138)
  store i64 %139, i64* %15, align 8
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @Assert(i32 %142)
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @Assert(i32 %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @ts_dimension_vec_remove_slice(%struct.TYPE_19__** %156, i32 %157)
  %159 = load i64, i64* %15, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %162, %159
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %136, %127, %119
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.TYPE_26__* @ts_dimension_vec_find_slice(%struct.TYPE_19__* %167, i32 %171)
  store %struct.TYPE_26__* %172, %struct.TYPE_26__** %14, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %174 = icmp eq %struct.TYPE_26__* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %164
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %177 = call %struct.TYPE_26__* @ts_dimension_slice_copy(%struct.TYPE_26__* %176)
  store %struct.TYPE_26__* %177, %struct.TYPE_26__** %16, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %181 = call i32 @ts_dimension_vec_add_slice_sort(%struct.TYPE_19__** %179, %struct.TYPE_26__* %180)
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %182, %struct.TYPE_26__** %14, align 8
  br label %183

183:                                              ; preds = %175, %164
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ule i64 %191, %195
  br label %197

197:                                              ; preds = %188, %183
  %198 = phi i1 [ true, %183 ], [ %196, %188 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @Assert(i32 %199)
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %201, %struct.TYPE_26__** %10, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  store %struct.TYPE_23__* %204, %struct.TYPE_23__** %9, align 8
  br label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %33

208:                                              ; preds = %33
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %210 = icmp ne %struct.TYPE_26__* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = icmp eq %struct.TYPE_23__* %214, null
  br label %216

216:                                              ; preds = %211, %208
  %217 = phi i1 [ false, %208 ], [ %215, %211 ]
  %218 = zext i1 %217 to i32
  %219 = call i32 @Assert(i32 %218)
  %220 = load i8*, i8** %7, align 8
  %221 = bitcast i8* %220 to %struct.TYPE_23__*
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 1
  store %struct.TYPE_23__* %221, %struct.TYPE_23__** %223, align 8
  %224 = load void (i8*)*, void (i8*)** %8, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  store void (i8*)* %224, void (i8*)** %226, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @MemoryContextSwitchTo(i32 %227)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_23__* @subspace_store_internal_node_create(i32) #1

declare dso_local void @subspace_store_internal_node_free(i8*) #1

declare dso_local i64 @subspace_store_internal_node_descendants(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ts_dimension_vec_remove_slice(%struct.TYPE_19__**, i32) #1

declare dso_local %struct.TYPE_26__* @ts_dimension_vec_find_slice(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_26__* @ts_dimension_slice_copy(%struct.TYPE_26__*) #1

declare dso_local i32 @ts_dimension_vec_add_slice_sort(%struct.TYPE_19__**, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
