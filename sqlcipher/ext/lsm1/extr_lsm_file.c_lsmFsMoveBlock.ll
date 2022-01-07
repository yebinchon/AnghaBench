; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsMoveBlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsMoveBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_APPLIST_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsMoveBlock(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = load i32, i32* @LSM_OK, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %30, %33
  store i64 %34, i64* %13, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 %37, %40
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = mul nsw i64 %55, %58
  %60 = call i64 @LSM_MIN(i64 %53, i64 %59)
  store i64 %60, i64* %12, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @fsGrowMapping(%struct.TYPE_13__* %61, i64 %62, i32* %10)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @LSM_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %193

67:                                               ; preds = %4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sdiv i64 %70, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %182, %67
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @LSM_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %185

90:                                               ; preds = %88
  %91 = load i64, i64* %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %19, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sle i64 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %90
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %20, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = load i64, i64* %19, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %18, align 8
  br label %139

113:                                              ; preds = %90
  %114 = load i32*, i32** %17, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i64 @lsmMallocRc(i32 %119, i32 %120, i32* %10)
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %17, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %185

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32*, i32** %17, align 8
  store i32* %128, i32** %18, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @lsmEnvRead(i32 %131, i32 %134, i64 %135, i32* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %127, %105
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @LSM_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %181

143:                                              ; preds = %139
  %144 = load i64, i64* %14, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %16, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  store i64 %149, i64* %19, align 8
  %150 = load i64, i64* %19, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sle i64 %153, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %143
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  store i32* %162, i32** %21, align 8
  %163 = load i32*, i32** %21, align 8
  %164 = load i64, i64* %19, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @memcpy(i32* %165, i32* %166, i32 %167)
  br label %180

169:                                              ; preds = %143
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @lsmEnvWrite(i32 %172, i32 %175, i64 %176, i32* %177, i32 %178)
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %169, %158
  br label %181

181:                                              ; preds = %180, %139
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %80

185:                                              ; preds = %125, %88
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @lsmFree(i32 %188, i32* %189)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = call i32 @lsmFsPurgeCache(%struct.TYPE_13__* %191)
  br label %193

193:                                              ; preds = %185, %4
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %209, %193
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @LSM_APPLIST_SZ, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = call i32 @fsMovePage(%struct.TYPE_13__* %199, i32 %200, i32 %201, i32* %207)
  br label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %194

212:                                              ; preds = %194
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = call i32 @fsMovePage(%struct.TYPE_13__* %213, i32 %214, i32 %215, i32* %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = call i32 @fsMovePage(%struct.TYPE_13__* %219, i32 %220, i32 %221, i32* %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = call i32 @fsMovePage(%struct.TYPE_13__* %225, i32 %226, i32 %227, i32* %229)
  %231 = load i32, i32* %10, align 4
  ret i32 %231
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @LSM_MIN(i64, i64) #1

declare dso_local i32 @fsGrowMapping(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i64 @lsmMallocRc(i32, i32, i32*) #1

declare dso_local i32 @lsmEnvRead(i32, i32, i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lsmEnvWrite(i32, i32, i64, i32*, i32) #1

declare dso_local i32 @lsmFree(i32, i32*) #1

declare dso_local i32 @lsmFsPurgeCache(%struct.TYPE_13__*) #1

declare dso_local i32 @fsMovePage(%struct.TYPE_13__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
