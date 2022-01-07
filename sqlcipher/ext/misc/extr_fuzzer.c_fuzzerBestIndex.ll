; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, double, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i32, i64, i64 }

@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @fuzzerBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerBestIndex(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlite3_index_constraint*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store double 1.000000e+12, double* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %15 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  store %struct.sqlite3_index_constraint* %15, %struct.sqlite3_index_constraint** %10, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %130, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %135

22:                                               ; preds = %16
  %23 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %24 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %29 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_MATCH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %27, %22
  %35 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %36 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %130

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %46 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %51 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_MATCH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load double, double* %11, align 8
  %73 = fdiv double %72, 1.000000e+06
  store double %73, double* %11, align 8
  br label %74

74:                                               ; preds = %55, %49, %44, %40
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %80 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %85 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %91 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, 2
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %6, align 4
  %99 = load double, double* %11, align 8
  %100 = fdiv double %99, 1.000000e+01
  store double %100, double* %11, align 8
  br label %101

101:                                              ; preds = %95, %89, %78, %74
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %107 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %129

110:                                              ; preds = %105
  %111 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %112 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, 4
  store i32 %118, i32* %5, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %7, align 4
  %127 = load double, double* %11, align 8
  %128 = fdiv double %127, 1.000000e+01
  store double %128, double* %11, align 8
  br label %129

129:                                              ; preds = %116, %110, %105, %101
  br label %130

130:                                              ; preds = %129, %39
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %134 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %133, i32 1
  store %struct.sqlite3_index_constraint* %134, %struct.sqlite3_index_constraint** %10, align 8
  br label %16

135:                                              ; preds = %16
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, 2
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = add nsw i32 1, %143
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  br label %152

152:                                              ; preds = %139, %135
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  store i32 1, i32* %12, align 4
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 2
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 6
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %171, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %152
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %206

187:                                              ; preds = %179
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %206

195:                                              ; preds = %187
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %195
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %195, %187, %179
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %5, align 4
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store double 0x547D42AEA2879F2E, double* %11, align 8
  br label %214

214:                                              ; preds = %213, %209, %206
  %215 = load double, double* %11, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 4
  store double %215, double* %217, align 8
  %218 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
