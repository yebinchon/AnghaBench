; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1BestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1BestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double, i32, i32, i32, %struct.TYPE_4__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @lsm1BestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsm1BestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 99, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %15 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  store %struct.sqlite3_index_constraint* %15, %struct.sqlite3_index_constraint** %12, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %96, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 16
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  br i1 %26, label %27, label %101

27:                                               ; preds = %25
  %28 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %29 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %96

33:                                               ; preds = %27
  %34 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %35 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %96

39:                                               ; preds = %33
  %40 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %41 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %95 [
    i32 132, label %43
    i32 131, label %49
    i32 130, label %49
    i32 129, label %73
    i32 128, label %73
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %95

49:                                               ; preds = %39, %39
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 99
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %8, align 4
  store i32 2, i32* %6, align 4
  %54 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %55 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 131
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %72

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %8, align 4
  store i32 1, i32* %6, align 4
  %66 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %67 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 131
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %62, %59
  br label %72

72:                                               ; preds = %71, %52
  br label %95

73:                                               ; preds = %39, %39
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 99
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %8, align 4
  store i32 3, i32* %6, align 4
  %78 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %79 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 129
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %94

83:                                               ; preds = %73
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %9, align 4
  store i32 1, i32* %6, align 4
  %88 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %89 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 129
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %39, %94, %72, %48
  br label %96

96:                                               ; preds = %95, %38, %32
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  %99 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %100 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %99, i32 1
  store %struct.sqlite3_index_constraint* %100, %struct.sqlite3_index_constraint** %12, align 8
  br label %16

101:                                              ; preds = %25
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  br label %122

122:                                              ; preds = %104, %101
  %123 = load i32, i32* %9, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %125, %122
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store double 1.000000e+00, double* %148, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  store i32 1, i32* %152, align 4
  br label %176

153:                                              ; preds = %143
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store double 1.000000e+02, double* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  store i32 100, i32* %160, align 8
  br label %175

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 99
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store double 5.000000e+03, double* %166, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  store i32 5000, i32* %168, align 8
  br label %174

169:                                              ; preds = %161
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store double 0x41DFFFFFFFC00000, double* %171, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  store i32 2147483647, i32* %173, align 8
  br label %174

174:                                              ; preds = %169, %164
  br label %175

175:                                              ; preds = %174, %156
  br label %176

176:                                              ; preds = %175, %146
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %180
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
