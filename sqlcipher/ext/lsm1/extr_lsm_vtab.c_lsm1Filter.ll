; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Filter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_EQ = common dso_local global i32 0, align 4
@LSM_SEEK_GE = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @lsm1Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsm1Filter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [16 x i32], align 16
  %20 = alloca [12 x i32], align 16
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %12, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %13, align 8
  %29 = load i32, i32* @LSM_OK, align 4
  store i32 %29, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @sqlite3_free(i64 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 99
  br i1 %42, label %43, label %50

43:                                               ; preds = %5
  %44 = load i32, i32* %18, align 4
  %45 = load i32**, i32*** %11, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %49 = call i32 @lsm1KeyFromValue(i32 %44, i32* %47, i32* %48, i32** %16, i32* %17)
  br label %50

50:                                               ; preds = %43, %5
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %169 [
    i32 0, label %52
    i32 1, label %62
    i32 2, label %157
    i32 3, label %163
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* @LSM_SEEK_EQ, align 4
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  br label %174

62:                                               ; preds = %50
  %63 = load i32, i32* @LSM_SEEK_GE, align 4
  store i32 %63, i32* %15, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @SQLITE_INTEGER, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %62
  %72 = load i32**, i32*** %11, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @sqlite3_value_int64(i32* %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = getelementptr inbounds [12 x i32], [12 x i32]* %20, i64 0, i64 0
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @lsm1PutVarint64(i32* %80, i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @sqlite3_malloc(i32 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %97, i32* %6, align 4
  br label %213

98:                                               ; preds = %79
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [12 x i32], [12 x i32]* %20, i64 0, i64 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i64 %101, i32* %102, i32 %105)
  br label %156

107:                                              ; preds = %62
  %108 = load i32**, i32*** %11, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @sqlite3_value_bytes(i32* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @sqlite3_malloc(i32 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %126, i32* %6, align 4
  br label %213

127:                                              ; preds = %107
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @SQLITE_BLOB, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32**, i32*** %11, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32* @sqlite3_value_blob(i32* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memcpy(i64 %134, i32* %138, i32 %141)
  br label %155

143:                                              ; preds = %127
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32**, i32*** %11, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i32* @sqlite3_value_text(i32* %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @memcpy(i64 %146, i32* %150, i32 %153)
  br label %155

155:                                              ; preds = %143, %131
  br label %156

156:                                              ; preds = %155, %98
  br label %174

157:                                              ; preds = %50
  %158 = load i32, i32* @LSM_SEEK_GE, align 4
  store i32 %158, i32* %15, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  br label %174

163:                                              ; preds = %50
  %164 = load i32, i32* @LSM_SEEK_LE, align 4
  store i32 %164, i32* %15, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store i32 0, i32* %168, align 4
  br label %174

169:                                              ; preds = %50
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %163, %157, %156, %52
  %175 = load i32*, i32** %16, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @lsm_csr_seek(i32 %180, i32* %181, i32 %182, i32 %183)
  store i32 %184, i32* %14, align 4
  br label %190

185:                                              ; preds = %174
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @lsm_csr_first(i32 %188)
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %185, %177
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @LSM_OK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @lsm_csr_valid(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %194, %190
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @LSM_OK, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @SQLITE_OK, align 4
  br label %211

209:                                              ; preds = %203
  %210 = load i32, i32* @SQLITE_ERROR, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %211, %125, %96
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i32 @lsm1KeyFromValue(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @lsm1PutVarint64(i32*, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32* @sqlite3_value_blob(i32*) #1

declare dso_local i32* @sqlite3_value_text(i32*) #1

declare dso_local i32 @lsm_csr_seek(i32, i32*, i32, i32) #1

declare dso_local i32 @lsm_csr_first(i32) #1

declare dso_local i64 @lsm_csr_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
