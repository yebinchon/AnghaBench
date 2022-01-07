; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_find_next.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_find_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, %struct.tm*, i32*)* @find_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next(%struct.tm* %0, %struct.tm* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.tm*, %struct.tm** %5, align 8
  %12 = call i32 @assert(%struct.tm* %11)
  %13 = load %struct.tm*, %struct.tm** %6, align 8
  %14 = call i32 @assert(%struct.tm* %13)
  %15 = load %struct.tm*, %struct.tm** %6, align 8
  %16 = bitcast %struct.tm* %8 to i8*
  %17 = bitcast %struct.tm* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 64, i1 false)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %255, %247, %216, %207, %186, %176, %148, %138, %127, %104, %92, %3
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mktime_or_timegm(%struct.tm* %8, i32 %23)
  %25 = load %struct.tm*, %struct.tm** %5, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 15
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1900
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tm*, %struct.tm** %5, align 8
  %33 = load %struct.tm*, %struct.tm** %5, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %37 = call i32 @find_matching_component(%struct.tm* %32, i32 %35, %struct.tm* %8, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1900
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 1, i32* %45, align 4
  store i32 0, i32* %9, align 4
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %20
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %262

54:                                               ; preds = %49
  %55 = load %struct.tm*, %struct.tm** %5, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %57)
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %262

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.tm*, %struct.tm** %5, align 8
  %68 = load %struct.tm*, %struct.tm** %5, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %72 = call i32 @find_matching_component(%struct.tm* %67, i32 %70, %struct.tm* %8, i32* %71)
  store i32 %72, i32* %10, align 4
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 1, i32* %79, align 4
  store i32 0, i32* %9, align 4
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %63
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load %struct.tm*, %struct.tm** %5, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %86, %83
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 1, i32* %97, align 4
  store i32 0, i32* %9, align 4
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %100, align 4
  br label %20

101:                                              ; preds = %86
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %20

105:                                              ; preds = %101
  %106 = load %struct.tm*, %struct.tm** %5, align 8
  %107 = load %struct.tm*, %struct.tm** %5, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %111 = call i32 @find_matching_component(%struct.tm* %106, i32 %109, %struct.tm* %8, i32* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %105
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load %struct.tm*, %struct.tm** %5, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121, %118
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 1, i32* %131, align 4
  store i32 0, i32* %9, align 4
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %133, align 4
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %134, align 4
  br label %20

135:                                              ; preds = %121
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %20

139:                                              ; preds = %135
  %140 = load %struct.tm*, %struct.tm** %5, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.tm*, %struct.tm** %5, align 8
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @matches_weekday(i32 %142, %struct.tm* %8, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  store i32 0, i32* %9, align 4
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %152, align 4
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %154, align 4
  br label %20

155:                                              ; preds = %139
  %156 = load %struct.tm*, %struct.tm** %5, align 8
  %157 = load %struct.tm*, %struct.tm** %5, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %161 = call i32 @find_matching_component(%struct.tm* %156, i32 %159, %struct.tm* %8, i32* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  store i32 0, i32* %9, align 4
  %165 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %155
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %167
  %171 = load %struct.tm*, %struct.tm** %5, align 8
  %172 = getelementptr inbounds %struct.tm, %struct.tm* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %173)
  store i32 %174, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170, %167
  %177 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  store i32 0, i32* %9, align 4
  %180 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %180, align 4
  %181 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 0, i32* %182, align 4
  br label %20

183:                                              ; preds = %170
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %20

187:                                              ; preds = %183
  %188 = load %struct.tm*, %struct.tm** %5, align 8
  %189 = load %struct.tm*, %struct.tm** %5, align 8
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %193 = call i32 @find_matching_component(%struct.tm* %188, i32 %191, %struct.tm* %8, i32* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  store i32 0, i32* %9, align 4
  %197 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %197, align 4
  br label %198

198:                                              ; preds = %196, %187
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load %struct.tm*, %struct.tm** %5, align 8
  %203 = getelementptr inbounds %struct.tm, %struct.tm* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %201, %198
  %208 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  store i32 0, i32* %9, align 4
  %211 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %211, align 4
  %212 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 0, i32* %212, align 4
  br label %20

213:                                              ; preds = %201
  %214 = load i32, i32* %10, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %20

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @USEC_PER_SEC, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %221, %222
  %224 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 %223, i32* %224, align 4
  %225 = load %struct.tm*, %struct.tm** %5, align 8
  %226 = load %struct.tm*, %struct.tm** %5, align 8
  %227 = getelementptr inbounds %struct.tm, %struct.tm* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %230 = call i32 @find_matching_component(%struct.tm* %225, i32 %228, %struct.tm* %8, i32* %229)
  store i32 %230, i32* %10, align 4
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @USEC_PER_SEC, align 4
  %234 = srem i32 %232, %233
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* @USEC_PER_SEC, align 4
  %236 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = sdiv i32 %237, %235
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %217
  %242 = load %struct.tm*, %struct.tm** %5, align 8
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @tm_within_bounds(%struct.tm* %8, i32 %244)
  store i32 %245, i32* %10, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %241, %217
  %248 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  store i32 0, i32* %9, align 4
  %251 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 0, i32* %251, align 4
  br label %20

252:                                              ; preds = %241
  %253 = load i32, i32* %10, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %20

256:                                              ; preds = %252
  %257 = load %struct.tm*, %struct.tm** %6, align 8
  %258 = bitcast %struct.tm* %257 to i8*
  %259 = bitcast %struct.tm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 64, i1 false)
  %260 = load i32, i32* %9, align 4
  %261 = load i32*, i32** %7, align 8
  store i32 %260, i32* %261, align 4
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %256, %60, %52
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @assert(%struct.tm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mktime_or_timegm(%struct.tm*, i32) #1

declare dso_local i32 @find_matching_component(%struct.tm*, i32, %struct.tm*, i32*) #1

declare dso_local i32 @tm_within_bounds(%struct.tm*, i32) #1

declare dso_local i32 @matches_weekday(i32, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
