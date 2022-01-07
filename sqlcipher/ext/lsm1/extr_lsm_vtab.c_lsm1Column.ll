; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Column.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1Column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32*, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@LSM_OK = common dso_local global i64 0, align 8
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @lsm1Column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsm1Column(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = bitcast %struct.TYPE_6__* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @lsm_csr_key(i32 %32, i8** %9, i32* %10)
  %34 = load i64, i64* @LSM_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 131
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %46 = call i32 @sqlite3_result_blob(i32* %42, i8* %43, i32 %44, i32 %45)
  br label %68

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 128
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %57 = call i32 @sqlite3_result_text(i32* %53, i8* %54, i32 %55, i32 %56)
  br label %67

58:                                               ; preds = %47
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @lsm1GetVarint64(i8* %60, i32 %61, i64* %12)
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @sqlite3_result_int64(i32* %63, i32 %65)
  br label %67

67:                                               ; preds = %58, %52
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %29
  br label %197

70:                                               ; preds = %3
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 2
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @lsm_csr_key(i32 %86, i8** %13, i32* %14)
  %88 = load i64, i64* @LSM_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32*, i32** %5, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %95 = call i32 @sqlite3_result_blob(i32* %91, i8* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %83
  br label %119

97:                                               ; preds = %76
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 3
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @lsm_csr_value(i32 %107, i8** %15, i32* %16)
  %109 = load i64, i64* @LSM_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32*, i32** %5, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %116 = call i32 @sqlite3_result_blob(i32* %112, i8* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %104
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118, %96
  br label %196

120:                                              ; preds = %70
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = call i64 @lsm1DecodeValues(%struct.TYPE_8__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %195

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %6, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, i8* %129, i64 %137
  store i8* %138, i8** %17, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %18, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %193 [
    i32 0, label %153
    i32 129, label %163
    i32 130, label %170
    i32 128, label %181
    i32 131, label %187
  ]

153:                                              ; preds = %124
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @sqlite3_result_int(i32* %154, i32 %161)
  br label %194

163:                                              ; preds = %124
  %164 = load i8*, i8** %17, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @lsm1GetSignedVarint64(i8* %164, i32 %165, i32* %19)
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @sqlite3_result_int64(i32* %167, i32 %168)
  br label %194

170:                                              ; preds = %124
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp eq i64 %172, 8
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i8*, i8** %17, align 8
  %176 = call i32 @memcpy(double* %20, i8* %175, i32 8)
  %177 = load i32*, i32** %5, align 8
  %178 = load double, double* %20, align 8
  %179 = call i32 @sqlite3_result_double(i32* %177, double %178)
  br label %180

180:                                              ; preds = %174, %170
  br label %194

181:                                              ; preds = %124
  %182 = load i32*, i32** %5, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %186 = call i32 @sqlite3_result_text(i32* %182, i8* %183, i32 %184, i32 %185)
  br label %194

187:                                              ; preds = %124
  %188 = load i32*, i32** %5, align 8
  %189 = load i8*, i8** %17, align 8
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %192 = call i32 @sqlite3_result_blob(i32* %188, i8* %189, i32 %190, i32 %191)
  br label %194

193:                                              ; preds = %124
  br label %194

194:                                              ; preds = %193, %187, %181, %180, %163, %153
  br label %195

195:                                              ; preds = %194, %120
  br label %196

196:                                              ; preds = %195, %119
  br label %197

197:                                              ; preds = %196, %69
  %198 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %198
}

declare dso_local i64 @lsm_csr_key(i32, i8**, i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @lsm1GetVarint64(i8*, i32, i64*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i64 @lsm_csr_value(i32, i8**, i32*) #1

declare dso_local i64 @lsm1DecodeValues(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @lsm1GetSignedVarint64(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(double*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
