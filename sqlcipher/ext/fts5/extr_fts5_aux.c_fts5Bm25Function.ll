; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5Bm25Function.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5Bm25Function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32*)*, i32 (i32*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32*)* }
%struct.TYPE_7__ = type { double*, i32, double*, double }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i32, i32**)* @fts5Bm25Function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5Bm25Function(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  store double 1.200000e+00, double* %11, align 8
  store double 7.500000e-01, double* %12, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %13, align 4
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %17, align 4
  store double 0.000000e+00, double* %18, align 8
  store double* null, double** %19, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @fts5Bm25GetData(%struct.TYPE_6__* %26, i32* %27, %struct.TYPE_7__** %15)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %5
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load double*, double** %34, align 8
  store double* %35, double** %19, align 8
  %36 = load double*, double** %19, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(double* %36, i32 0, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 %46(i32* %47, i32* %17)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %32, %5
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %95

60:                                               ; preds = %58
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32 (i32*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32*, i32*, i32*)** %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 %63(i32* %64, i32 %65, i32* %20, i32* %21, i32* %22)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32**, i32*** %10, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call double @sqlite3_value_double(i32* %79)
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi double [ %80, %74 ], [ 1.000000e+00, %81 ]
  store double %83, double* %23, align 8
  %84 = load double, double* %23, align 8
  %85 = load double*, double** %19, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fadd double %89, %84
  store double %90, double* %88, align 8
  br label %91

91:                                               ; preds = %82, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %50

95:                                               ; preds = %58
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 %102(i32* %103, i32 -1, i32* %24)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %24, align 4
  %106 = sitofp i32 %105 to double
  store double %106, double* %18, align 8
  br label %107

107:                                              ; preds = %99, %95
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %152, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @SQLITE_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br label %118

118:                                              ; preds = %112, %108
  %119 = phi i1 [ false, %108 ], [ %117, %112 ]
  br i1 %119, label %120, label %155

120:                                              ; preds = %118
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load double*, double** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  %127 = load double, double* %126, align 8
  %128 = load double*, double** %19, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %128, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fmul double %132, 2.200000e+00
  %134 = load double*, double** %19, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, double* %134, i64 %136
  %138 = load double, double* %137, align 8
  %139 = load double, double* %18, align 8
  %140 = fmul double 7.500000e-01, %139
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load double, double* %142, align 8
  %144 = fdiv double %140, %143
  %145 = fadd double 2.500000e-01, %144
  %146 = fmul double 1.200000e+00, %145
  %147 = fadd double %138, %146
  %148 = fdiv double %133, %147
  %149 = fmul double %127, %148
  %150 = load double, double* %14, align 8
  %151 = fadd double %150, %149
  store double %151, double* %14, align 8
  br label %152

152:                                              ; preds = %120
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %108

155:                                              ; preds = %118
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @SQLITE_OK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32*, i32** %8, align 8
  %161 = load double, double* %14, align 8
  %162 = fmul double -1.000000e+00, %161
  %163 = call i32 @sqlite3_result_double(i32* %160, double %162)
  br label %168

164:                                              ; preds = %155
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @sqlite3_result_error_code(i32* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %159
  ret void
}

declare dso_local i32 @fts5Bm25GetData(%struct.TYPE_6__*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
