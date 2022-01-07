; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmReadlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmReadlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_NREADER = common dso_local global i32 0, align 4
@LSM_LOCK_SHARED = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmReadlock(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @LSM_OK, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @shm_sequence_ge(i64 %26, i64 %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @LSM_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %245

38:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %106, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @LSM_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @LSM_LOCK_NREADER, align 4
  %51 = icmp slt i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44, %39
  %53 = phi i1 [ false, %44 ], [ false, %39 ], [ %51, %48 ]
  br i1 %53, label %54, label %109

54:                                               ; preds = %52
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %13, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %54
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @LSM_LOCK_READER(i32 %74)
  %76 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %77 = call i32 @lsmShmLock(%struct.TYPE_7__* %73, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @LSM_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %104

97:                                               ; preds = %87, %81, %72
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @LSM_BUSY, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @LSM_OK, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %103, %93
  br label %105

105:                                              ; preds = %104, %66, %54
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %39

109:                                              ; preds = %52
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %168, %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @LSM_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @LSM_LOCK_NREADER, align 4
  %122 = icmp slt i32 %120, %121
  br label %123

123:                                              ; preds = %119, %115, %110
  %124 = phi i1 [ false, %115 ], [ false, %110 ], [ %122, %119 ]
  br i1 %124, label %125, label %171

125:                                              ; preds = %123
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @LSM_LOCK_READER(i32 %127)
  %129 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %130 = call i32 @lsmShmLock(%struct.TYPE_7__* %126, i32 %128, i32 %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @LSM_BUSY, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @LSM_OK, align 4
  store i32 %135, i32* %10, align 4
  br label %167

136:                                              ; preds = %125
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %14, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @LSM_LOCK_READER(i32 %150)
  %152 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %153 = call i32 @lsmShmLock(%struct.TYPE_7__* %149, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @LSM_BUSY, align 4
  %156 = icmp ne i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @LSM_OK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %136
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %162, %136
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %110

171:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %229, %171
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @LSM_OK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @LSM_LOCK_NREADER, align 4
  %184 = icmp slt i32 %182, %183
  br label %185

185:                                              ; preds = %181, %177, %172
  %186 = phi i1 [ false, %177 ], [ false, %172 ], [ %184, %181 ]
  br i1 %186, label %187, label %232

187:                                              ; preds = %185
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  store %struct.TYPE_8__* %193, %struct.TYPE_8__** %15, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i64 @slotIsUsable(%struct.TYPE_8__* %194, i64 %195, i64 %196, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %187
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @LSM_LOCK_READER(i32 %202)
  %204 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %205 = call i32 @lsmShmLock(%struct.TYPE_7__* %201, i32 %203, i32 %204, i32 0)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @LSM_OK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %200
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %9, align 8
  %214 = call i64 @slotIsUsable(%struct.TYPE_8__* %210, i64 %211, i64 %212, i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i32, i32* %12, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %227

220:                                              ; preds = %209, %200
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @LSM_BUSY, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* @LSM_OK, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %224, %220
  br label %227

227:                                              ; preds = %226, %216
  br label %228

228:                                              ; preds = %227, %187
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %172

232:                                              ; preds = %185
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @LSM_OK, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @LSM_BUSY, align 4
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %241, %236, %232
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %243, %34
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @shm_sequence_ge(i64, i64) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @LSM_LOCK_READER(i32) #1

declare dso_local i64 @slotIsUsable(%struct.TYPE_8__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
