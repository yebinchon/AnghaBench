; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAppendData.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAppendData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i32*)* @fsAppendData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsAppendData(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @LSM_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %232

31:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = call i32 @findAppendPoint(%struct.TYPE_11__* %39, i32 0)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lsmBlockAllocate(i32 %48, i32 0, i32* %17)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @fsFirstPageOnBlock(%struct.TYPE_11__* %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %38
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @fsLastPageOnPagesBlock(%struct.TYPE_11__* %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @LSM_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %56
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @LSM_MIN(i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp sge i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %64
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @lsmEnvWrite(i32 %84, i32 %87, i32 %88, i32* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %81, %64
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %92, %56
  %97 = load i32, i32* %13, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %101, %102
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ true, %96 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @LSM_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %225

111:                                              ; preds = %104
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %225

116:                                              ; preds = %111
  %117 = load i32, i32* %14, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %181

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @lsmBlockAllocate(i32 %122, i32 0, i32* %20)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @LSM_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %119
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @fsPageToBlock(%struct.TYPE_11__* %129, i32 %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = sub nsw i32 %135, 4
  %137 = icmp eq i32 %128, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @lsmPutU32(i32* %140, i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %16, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %151 = call i32 @lsmEnvWrite(i32 %145, i32 %148, i32 %149, i32* %150, i32 16)
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %127, %119
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @LSM_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %180

156:                                              ; preds = %152
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @fsPageToBlock(%struct.TYPE_11__* %158, i32 %159)
  %161 = call i32 @lsmPutU32(i32* %157, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @fsFirstPageOnBlock(%struct.TYPE_11__* %162, i32 %163)
  store i32 %164, i32* %21, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %21, align 4
  %172 = sub nsw i32 %171, 4
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %174 = call i32 @lsmEnvWrite(i32 %167, i32 %170, i32 %172, i32* %173, i32 16)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %156
  %178 = load i32, i32* %21, align 4
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %177, %156
  br label %180

180:                                              ; preds = %179, %152
  br label %200

181:                                              ; preds = %116
  %182 = load i32, i32* %13, align 4
  %183 = icmp sgt i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @fsPageToBlock(%struct.TYPE_11__* %193, i32 %194)
  %196 = call i32 @fsBlockNext(%struct.TYPE_11__* %192, i32 0, i32 %195, i32* %20)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i32 @fsFirstPageOnBlock(%struct.TYPE_11__* %197, i32 %198)
  store i32 %199, i32* %16, align 4
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %181, %180
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @LSM_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %200
  %205 = load i32, i32* %13, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @lsmEnvWrite(i32 %210, i32 %213, i32 %214, i32* %218, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %207, %204, %200
  br label %225

225:                                              ; preds = %224, %111, %104
  %226 = load i32, i32* %16, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32*, i32** %10, align 8
  store i32 %230, i32* %231, align 4
  br label %232

232:                                              ; preds = %225, %5
  %233 = load i32, i32* %11, align 4
  ret i32 %233
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @findAppendPoint(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lsmBlockAllocate(i32, i32, i32*) #1

declare dso_local i32 @fsFirstPageOnBlock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fsLastPageOnPagesBlock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @LSM_MIN(i32, i32) #1

declare dso_local i32 @lsmEnvWrite(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fsPageToBlock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lsmPutU32(i32*, i32) #1

declare dso_local i32 @fsBlockNext(%struct.TYPE_11__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
