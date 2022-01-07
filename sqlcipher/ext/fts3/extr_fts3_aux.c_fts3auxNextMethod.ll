; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxNextMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxNextMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, %struct.TYPE_12__*, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i8*, i64, i32 }
%struct.TYPE_9__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @fts3auxNextMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3auxNextMethod(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %53, %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @SQLITE_OK, align 4
  store i32 %51, i32* %2, align 4
  br label %245

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %31

58:                                               ; preds = %31
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = call i32 @sqlite3Fts3SegReaderStep(i32* %59, %struct.TYPE_11__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SQLITE_ROW, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %240

66:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %66
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  br label %97

92:                                               ; preds = %79
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i64 [ %91, %88 ], [ %96, %92 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @memcmp(i64 %102, i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %114, %97
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* @SQLITE_OK, align 4
  store i32 %126, i32* %2, align 4
  br label %245

127:                                              ; preds = %114, %111
  br label %128

128:                                              ; preds = %127, %66
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = call i64 @fts3auxGrowStatArray(%struct.TYPE_10__* %129, i32 2)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %133, i32* %2, align 4
  br label %245

134:                                              ; preds = %128
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = mul i64 4, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memset(%struct.TYPE_12__* %137, i32 0, i32 %142)
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %235, %134
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = call i64 @sqlite3Fts3GetVarint(i8* %152, i32* %14)
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %11, align 4
  switch i32 %158, label %211 [
    i32 0, label %159
    i32 1, label %167
    i32 2, label %183
  ]

159:                                              ; preds = %148
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %235

167:                                              ; preds = %148
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %174, %167
  store i32 2, i32* %11, align 4
  br label %183

183:                                              ; preds = %148, %182
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 0, i32* %11, align 4
  br label %210

187:                                              ; preds = %183
  %188 = load i32, i32* %14, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 3, i32* %11, align 4
  br label %209

191:                                              ; preds = %187
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %191, %190
  br label %210

210:                                              ; preds = %209, %186
  br label %235

211:                                              ; preds = %148
  %212 = load i32, i32* %11, align 4
  %213 = icmp eq i32 %212, 3
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %10, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 2
  %220 = call i64 @fts3auxGrowStatArray(%struct.TYPE_10__* %217, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %211
  %223 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %223, i32* %2, align 4
  br label %245

224:                                              ; preds = %211
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  store i32 2, i32* %11, align 4
  br label %235

235:                                              ; preds = %224, %210, %159
  br label %144

236:                                              ; preds = %144
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  %239 = load i32, i32* @SQLITE_OK, align 4
  store i32 %239, i32* %6, align 4
  br label %243

240:                                              ; preds = %58
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  store i32 1, i32* %242, align 8
  br label %243

243:                                              ; preds = %240, %236
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %222, %132, %123, %50
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @sqlite3Fts3SegReaderStep(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcmp(i64, i32, i32) #1

declare dso_local i64 @fts3auxGrowStatArray(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @sqlite3Fts3GetVarint(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
