; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i64, %struct.TYPE_19__, %struct.TYPE_16__**, %struct.TYPE_15__*, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmTreeCursorNext(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %15 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @LSM_OK, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = call i32 @treeCursorRestore(%struct.TYPE_18__* %27, i32* %12)
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @LSM_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %216

33:                                               ; preds = %1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = call %struct.TYPE_17__* @csrGetKey(%struct.TYPE_18__* %34, %struct.TYPE_19__* %5, i32* %10)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @LSM_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %2, align 4
  br label %216

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call i32 @lsmTreeCursorValid(%struct.TYPE_18__* %42)
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 3
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %58, i64 %61
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %11, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %133

79:                                               ; preds = %41
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @getChildPtr(%struct.TYPE_16__* %80, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %133

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %125, %87
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @getChildPtr(%struct.TYPE_16__* %93, i32 %96, i32 %97)
  store i64 %98, i64* %13, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @treeShmptr(i32* %99, i64 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %11, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %106, i64 %109
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  store i32 %117, i32* %9, align 4
  br label %125

125:                                              ; preds = %88
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %88, label %132

132:                                              ; preds = %125
  br label %183

133:                                              ; preds = %79, %41
  %134 = load i32, i32* %9, align 4
  %135 = icmp sge i32 %134, 3
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %182

145:                                              ; preds = %136, %133
  br label %146

146:                                              ; preds = %180, %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, -1
  store i64 %150, i64* %148, align 8
  %151 = icmp uge i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %146
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %180

163:                                              ; preds = %152
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %166, i64 %169
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %163
  br label %181

180:                                              ; preds = %163, %152
  br label %146

181:                                              ; preds = %179, %146
  br label %182

182:                                              ; preds = %181, %136
  br label %183

183:                                              ; preds = %182, %132
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp uge i64 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %183
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = call %struct.TYPE_17__* @csrGetKey(%struct.TYPE_18__* %189, %struct.TYPE_19__* %191, i32* %10)
  store %struct.TYPE_17__* %192, %struct.TYPE_17__** %14, align 8
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %197 = call i32 @TKV_KEY(%struct.TYPE_17__* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %202 = call i32 @TKV_KEY(%struct.TYPE_17__* %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @treeKeycmp(i32 %197, i32 %200, i32 %202, i32 %205)
  %207 = icmp sge i64 %206, 0
  br label %208

208:                                              ; preds = %195, %188
  %209 = phi i1 [ true, %188 ], [ %207, %195 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  br label %212

212:                                              ; preds = %208, %183
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @tblobFree(i32* %213, %struct.TYPE_19__* %5)
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %39, %31
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @treeCursorRestore(%struct.TYPE_18__*, i32*) #2

declare dso_local %struct.TYPE_17__* @csrGetKey(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @lsmTreeCursorValid(%struct.TYPE_18__*) #2

declare dso_local i64 @getChildPtr(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i64 @treeShmptr(i32*, i64) #2

declare dso_local i64 @treeKeycmp(i32, i32, i32, i32) #2

declare dso_local i32 @TKV_KEY(%struct.TYPE_17__*) #2

declare dso_local i32 @tblobFree(i32*, %struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
