; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeSearchPointPop.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeSearchPointPop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, i64*, i32*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@RTREE_CACHE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @rtreeSearchPointPop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtreeSearchPointPop(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 1, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 1
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i1 [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i32 @RTREE_OF_CURSOR(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nodeRelease(i32 %30, i64 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %28, %16
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %198

63:                                               ; preds = %45
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %197

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 4
  store i32 %84, i32* %6, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = bitcast %struct.TYPE_10__* %88 to i8*
  %96 = bitcast %struct.TYPE_10__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 8, i1 false)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @RTREE_CACHE_SZ, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %68
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  store i64 %109, i64* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %101, %68
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %195, %121
  %123 = load i32, i32* %3, align 4
  %124 = mul nsw i32 %123, 2
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %196

128:                                              ; preds = %122
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %172

134:                                              ; preds = %128
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = call i64 @rtreeSearchPointCompare(%struct.TYPE_10__* %140, %struct.TYPE_10__* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %134
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %154
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = call i64 @rtreeSearchPointCompare(%struct.TYPE_10__* %155, %struct.TYPE_10__* %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %149
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @rtreeSearchPointSwap(%struct.TYPE_9__* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %3, align 4
  br label %171

170:                                              ; preds = %149
  br label %196

171:                                              ; preds = %164
  br label %195

172:                                              ; preds = %134, %128
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %183
  %185 = call i64 @rtreeSearchPointCompare(%struct.TYPE_10__* %178, %struct.TYPE_10__* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %172
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @rtreeSearchPointSwap(%struct.TYPE_9__* %188, i32 %189, i32 %190)
  %192 = load i32, i32* %4, align 4
  store i32 %192, i32* %3, align 4
  br label %194

193:                                              ; preds = %172
  br label %196

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %171
  br label %122

196:                                              ; preds = %193, %170, %122
  br label %197

197:                                              ; preds = %196, %63
  br label %198

198:                                              ; preds = %197, %50
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeRelease(i32, i64) #1

declare dso_local i32 @RTREE_OF_CURSOR(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rtreeSearchPointCompare(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @rtreeSearchPointSwap(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
