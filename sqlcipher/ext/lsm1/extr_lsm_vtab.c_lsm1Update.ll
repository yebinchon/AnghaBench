; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Update.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsm1Update(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca [16 x i8], align 16
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  %29 = load i32, i32* @LSM_OK, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %48

32:                                               ; preds = %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** %8, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %40 = call i32 @lsm1KeyFromValue(i32 %35, i32* %38, i8* %39, i32** %15, i32* %11)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @lsm_delete(i32 %43, i32* %44, i32 %45)
  %47 = load i32, i32* @SQLITE_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %219

48:                                               ; preds = %4
  %49 = load i32**, i32*** %8, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_value_type(i32* %51)
  %53 = icmp ne i64 %52, 129
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32**, i32*** %8, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %62 = call i32 @lsm1KeyFromValue(i32 %57, i32* %60, i8* %61, i32** %15, i32* %11)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32**, i32*** %8, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %70 = call i32 @lsm1KeyFromValue(i32 %65, i32* %68, i8* %69, i32** %16, i32* %12)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %54
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @memcmp(i32* %75, i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74, %54
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @lsm_delete(i32 %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32**, i32*** %8, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 3, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %89, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @sqlite3_value_type(i32* %96)
  %98 = icmp ne i64 %97, 129
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @SQLITE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %219

101:                                              ; preds = %88
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** %8, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %109 = call i32 @lsm1KeyFromValue(i32 %104, i32* %107, i8* %108, i32** %15, i32* %11)
  %110 = call i32 @memset(%struct.TYPE_7__* %19, i32 0, i32 16)
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %187, %101
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %190

117:                                              ; preds = %111
  %118 = load i32**, i32*** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 3, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %118, i64 %121
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %20, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = call i64 @sqlite3_value_type(i32* %124)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  switch i32 %127, label %186 [
    i32 129, label %128
    i32 130, label %130
    i32 131, label %156
    i32 132, label %162
    i32 128, label %174
  ]

128:                                              ; preds = %117
  %129 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 129)
  br label %186

130:                                              ; preds = %117
  %131 = load i32*, i32** %20, align 8
  %132 = call i32 @sqlite3_value_int64(i32* %131)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %22, align 4
  %137 = icmp sle i32 %136, 40
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %22, align 4
  %140 = mul nsw i32 %139, 6
  %141 = sext i32 %140 to i64
  %142 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 %141)
  br label %155

143:                                              ; preds = %135, %130
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %145 = load i32, i32* %22, align 4
  %146 = call i32 @lsm1PutSignedVarint64(i8* %144, i32 %145)
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %23, align 4
  %148 = mul nsw i32 %147, 6
  %149 = add nsw i32 130, %148
  %150 = sext i32 %149 to i64
  %151 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 %150)
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %153 = load i32, i32* %23, align 4
  %154 = call i32 (%struct.TYPE_7__*, ...) @lsm1VblobAppend(%struct.TYPE_7__* %19, i8* %152, i32 %153)
  br label %155

155:                                              ; preds = %143, %138
  br label %186

156:                                              ; preds = %117
  %157 = load i32*, i32** %20, align 8
  %158 = call double @sqlite3_value_double(i32* %157)
  store double %158, double* %24, align 8
  %159 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 179)
  %160 = bitcast double* %24 to i32*
  %161 = call i32 (%struct.TYPE_7__*, ...) @lsm1VblobAppend(%struct.TYPE_7__* %19, i32* %160, i64 8)
  br label %186

162:                                              ; preds = %117
  %163 = load i32*, i32** %20, align 8
  %164 = call i32 @sqlite3_value_bytes(i32* %163)
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %25, align 4
  %166 = mul nsw i32 %165, 6
  %167 = add nsw i32 %166, 132
  %168 = sext i32 %167 to i64
  %169 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 %168)
  %170 = load i32*, i32** %20, align 8
  %171 = call i32* @sqlite3_value_blob(i32* %170)
  %172 = load i32, i32* %25, align 4
  %173 = call i32 (%struct.TYPE_7__*, ...) @lsm1VblobAppend(%struct.TYPE_7__* %19, i32* %171, i32 %172)
  br label %186

174:                                              ; preds = %117
  %175 = load i32*, i32** %20, align 8
  %176 = call i32 @sqlite3_value_bytes(i32* %175)
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %26, align 4
  %178 = mul nsw i32 %177, 6
  %179 = add nsw i32 %178, 128
  %180 = sext i32 %179 to i64
  %181 = call i32 @lsm1VblobAppendVarint(%struct.TYPE_7__* %19, i64 %180)
  %182 = load i32*, i32** %20, align 8
  %183 = call i32* @sqlite3_value_text(i32* %182)
  %184 = load i32, i32* %26, align 4
  %185 = call i32 (%struct.TYPE_7__*, ...) @lsm1VblobAppend(%struct.TYPE_7__* %19, i32* %183, i32 %184)
  br label %186

186:                                              ; preds = %117, %174, %162, %156, %155, %128
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %111

190:                                              ; preds = %111
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %195, i32* %5, align 4
  br label %219

196:                                              ; preds = %190
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = load i32, i32* %11, align 4
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @lsm_insert(i32 %199, i32* %200, i32 %201, i32 %203, i32 %205)
  store i32 %206, i32* %14, align 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @sqlite3_free(i32 %208)
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @LSM_OK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %196
  %214 = load i32, i32* @SQLITE_OK, align 4
  br label %217

215:                                              ; preds = %196
  %216 = load i32, i32* @SQLITE_ERROR, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %217, %194, %99, %32
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @lsm1KeyFromValue(i32, i32*, i8*, i32**, i32*) #1

declare dso_local i32 @lsm_delete(i32, i32*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @lsm1VblobAppendVarint(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @lsm1PutSignedVarint64(i8*, i32) #1

declare dso_local i32 @lsm1VblobAppend(%struct.TYPE_7__*, ...) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32* @sqlite3_value_blob(i32*) #1

declare dso_local i32* @sqlite3_value_text(i32*) #1

declare dso_local i32 @lsm_insert(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
