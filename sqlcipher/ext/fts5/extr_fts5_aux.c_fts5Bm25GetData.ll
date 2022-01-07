; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5Bm25GetData.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5Bm25GetData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32*)*, i32 (i32*, i64*)*, i32 (i32*, i32, i64*)*, i32 (i32*, i32, i8*, i32)*, i32 (i32*, %struct.TYPE_11__*, i32 (%struct.TYPE_11__*)*)*, %struct.TYPE_11__* (i32*, i32)* }
%struct.TYPE_11__ = type { i32, double*, double*, double }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@fts5CountCb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_11__**)* @fts5Bm25GetData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5Bm25GetData(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %6, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_11__* (i32*, i32)*, %struct.TYPE_11__* (i32*, i32)** %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_11__* %19(i32* %20, i32 0)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %174

24:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32 (i32*)*, i32 (i32*)** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 %27(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = add i64 32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i64 @sqlite3_malloc64(i64 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %41, i32* %7, align 4
  br label %62

42:                                               ; preds = %24
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @memset(%struct.TYPE_11__* %43, i32 0, i64 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 1
  %51 = bitcast %struct.TYPE_11__* %50 to double*
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store double* %51, double** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load double*, double** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store double* %59, double** %61, align 8
  br label %62

62:                                               ; preds = %42, %40
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 %69(i32* %70, i64* %10)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = icmp sgt i64 %77, 0
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i1 [ true, %72 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32 (i32*, i32, i64*)*, i32 (i32*, i32, i64*)** %88, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 %89(i32* %90, i32 -1, i64* %11)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SQLITE_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = sitofp i64 %97 to double
  %99 = load i64, i64* %10, align 8
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %98, %100
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  store double %101, double* %103, align 8
  br label %104

104:                                              ; preds = %96, %92
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %151, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %105 ], [ %112, %109 ]
  br i1 %114, label %115, label %154

115:                                              ; preds = %113
  store i64 0, i64* %14, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i32 (i32*, i32, i8*, i32)*, i32 (i32*, i32, i8*, i32)** %117, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %13, align 4
  %121 = bitcast i64* %14 to i8*
  %122 = load i32, i32* @fts5CountCb, align 4
  %123 = call i32 %118(i32* %119, i32 %120, i8* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %115
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %14, align 8
  %130 = sub nsw i64 %128, %129
  %131 = sitofp i64 %130 to double
  %132 = fadd double %131, 5.000000e-01
  %133 = load i64, i64* %14, align 8
  %134 = sitofp i64 %133 to double
  %135 = fadd double %134, 5.000000e-01
  %136 = fdiv double %132, %135
  %137 = fptosi double %136 to i64
  %138 = call double @log(i64 %137)
  store double %138, double* %15, align 8
  %139 = load double, double* %15, align 8
  %140 = fcmp ole double %139, 0.000000e+00
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  store double 0x3EB0C6F7A0B5ED8D, double* %15, align 8
  br label %142

142:                                              ; preds = %141, %127
  %143 = load double, double* %15, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load double*, double** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  store double %143, double* %149, align 8
  br label %150

150:                                              ; preds = %142, %115
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %105

154:                                              ; preds = %113
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @SQLITE_OK, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %160 = call i32 @sqlite3_free(%struct.TYPE_11__* %159)
  br label %168

161:                                              ; preds = %154
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  %164 = load i32 (i32*, %struct.TYPE_11__*, i32 (%struct.TYPE_11__*)*)*, i32 (i32*, %struct.TYPE_11__*, i32 (%struct.TYPE_11__*)*)** %163, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = call i32 %164(i32* %165, %struct.TYPE_11__* %166, i32 (%struct.TYPE_11__*)* @sqlite3_free)
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %161, %158
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @SQLITE_OK, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  br label %173

173:                                              ; preds = %172, %168
  br label %174

174:                                              ; preds = %173, %3
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %175, %struct.TYPE_11__** %176, align 8
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local double @log(i64) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
