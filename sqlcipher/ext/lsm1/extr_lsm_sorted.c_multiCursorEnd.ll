; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorEnd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_12__*, i64*, i64 }
%struct.TYPE_12__ = type { i64, i32*, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_NEXT_OK = common dso_local global i32 0, align 4
@CURSOR_PREV_OK = common dso_local global i32 0, align 4
@CURSOR_SEEK_EQ = common dso_local global i32 0, align 4
@LSM_SEGMENTPTR_FREE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @multiCursorEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiCursorEnd(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @CURSOR_NEXT_OK, align 4
  %14 = load i32, i32* @CURSOR_PREV_OK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CURSOR_SEEK_EQ, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @CURSOR_PREV_OK, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @CURSOR_NEXT_OK, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %66, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @LSM_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 2
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i1 [ false, %37 ], [ %43, %41 ]
  br i1 %45, label %46, label %69

46:                                               ; preds = %44
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @lsmTreeCursorEnd(i64 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %55, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %37

69:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %228, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @LSM_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br label %80

80:                                               ; preds = %74, %70
  %81 = phi i1 [ false, %70 ], [ %79, %74 ]
  br i1 %81, label %82, label %231

82:                                               ; preds = %80
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %87
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %7, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %10, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %144

94:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %125, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @LSM_OK, align 4
  %104 = icmp eq i32 %102, %103
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i1 [ false, %95 ], [ %104, %101 ]
  br i1 %106, label %107, label %128

107:                                              ; preds = %105
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %112
  %114 = call i32 @segmentPtrEnd(%struct.TYPE_13__* %108, %struct.TYPE_12__* %113, i32 1)
  store i32 %114, i32* %5, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  store i32 1, i32* %10, align 4
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %95

128:                                              ; preds = %105
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @LSM_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = call i32 @segmentPtrEnd(%struct.TYPE_13__* %136, %struct.TYPE_12__* %137, i32 1)
  store i32 %138, i32* %5, align 4
  br label %143

139:                                              ; preds = %131, %128
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %142 = call i32 @segmentPtrReset(%struct.TYPE_12__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  br label %222

144:                                              ; preds = %82
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = icmp eq i32* %147, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %11, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = icmp eq i32* %154, %156
  br i1 %157, label %167, label %158

158:                                              ; preds = %144
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = icmp eq i32* %161, %165
  br label %167

167:                                              ; preds = %158, %144
  %168 = phi i1 [ true, %144 ], [ %166, %158 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = call i32 @segmentPtrEnd(%struct.TYPE_13__* %174, %struct.TYPE_12__* %175, i32 0)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %181, %173
  br label %183

183:                                              ; preds = %182, %167
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %218, %183
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @LSM_OK, align 4
  %193 = icmp eq i32 %191, %192
  br label %194

194:                                              ; preds = %190, %184
  %195 = phi i1 [ false, %184 ], [ %193, %190 ]
  br i1 %195, label %196, label %221

196:                                              ; preds = %194
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %203
  %205 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %206 = call i32 @segmentPtrReset(%struct.TYPE_12__* %204, i32 %205)
  br label %217

207:                                              ; preds = %196
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %214
  %216 = call i32 @sortedRhsFirst(%struct.TYPE_13__* %208, %struct.TYPE_14__* %209, %struct.TYPE_12__* %215)
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %207, %199
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %184

221:                                              ; preds = %194
  br label %222

222:                                              ; preds = %221, %143
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %70

231:                                              ; preds = %80
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @LSM_OK, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %235
  %241 = load i32, i32* %4, align 4
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @btreeCursorFirst(i64 %247)
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %240, %235, %231
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @LSM_OK, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @multiCursorSetupTree(%struct.TYPE_13__* %254, i32 %255)
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %253, %249
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @lsmTreeCursorEnd(i64, i32) #1

declare dso_local i32 @segmentPtrEnd(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @segmentPtrReset(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sortedRhsFirst(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @btreeCursorFirst(i64) #1

declare dso_local i32 @multiCursorSetupTree(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
