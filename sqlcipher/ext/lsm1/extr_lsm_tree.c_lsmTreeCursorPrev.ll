; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorPrev.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32*, %struct.TYPE_19__, %struct.TYPE_16__**, %struct.TYPE_15__*, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmTreeCursorPrev(%struct.TYPE_18__* %0) #0 {
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
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @LSM_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %230

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
  br label %230

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call i32 @lsmTreeCursorValid(%struct.TYPE_18__* %42)
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %46, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %47, i64 %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %11, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 3
  br label %66

66:                                               ; preds = %63, %41
  %67 = phi i1 [ false, %41 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %148

76:                                               ; preds = %66
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @getChildPtr(%struct.TYPE_16__* %77, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %148

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %140, %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @getChildPtr(%struct.TYPE_16__* %90, i32 %93, i32 %94)
  store i64 %95, i64* %13, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @treeShmptr(i32* %96, i64 %97)
  %99 = inttoptr i64 %98 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @LSM_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  br label %147

104:                                              ; preds = %85
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %107, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %108, i64 %111
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = add nsw i32 1, %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %123, %125
  %127 = zext i1 %126 to i32
  %128 = add nsw i32 %120, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %132, i32* %139, align 4
  br label %140

140:                                              ; preds = %104
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %143, %145
  br i1 %146, label %85, label %147

147:                                              ; preds = %140, %103
  br label %197

148:                                              ; preds = %76, %66
  br label %149

149:                                              ; preds = %179, %148
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %149
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %164, i64 %167
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %161
  br label %185

178:                                              ; preds = %161, %149
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, -1
  store i64 %183, i64* %181, align 8
  %184 = icmp uge i64 %183, 0
  br i1 %184, label %149, label %185

185:                                              ; preds = %179, %177
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %189, i32* %196, align 4
  br label %197

197:                                              ; preds = %185, %147
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp uge i64 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %197
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 2
  %206 = call %struct.TYPE_17__* @csrGetKey(%struct.TYPE_18__* %203, %struct.TYPE_19__* %205, i32* %10)
  store %struct.TYPE_17__* %206, %struct.TYPE_17__** %14, align 8
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %202
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %211 = call i32 @TKV_KEY(%struct.TYPE_17__* %210)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %216 = call i32 @TKV_KEY(%struct.TYPE_17__* %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @treeKeycmp(i32 %211, i32 %214, i32 %216, i32 %219)
  %221 = icmp slt i64 %220, 0
  br label %222

222:                                              ; preds = %209, %202
  %223 = phi i1 [ true, %202 ], [ %221, %209 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  br label %226

226:                                              ; preds = %222, %197
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @tblobFree(i32* %227, %struct.TYPE_19__* %5)
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %226, %39, %31
  %231 = load i32, i32* %2, align 4
  ret i32 %231
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
