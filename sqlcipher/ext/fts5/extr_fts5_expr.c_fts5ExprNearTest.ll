; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNearTest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNearTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i64, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64, i64, i32 }

@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_22__*, %struct.TYPE_20__*)* @fts5ExprNearTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNearTest(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %32, i64 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %11, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 0
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %10, align 8
  br label %42

42:                                               ; preds = %71, %29
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %12, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_17__* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60, %52
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %10, align 8
  br label %42

75:                                               ; preds = %42
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %172

80:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %151, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br label %91

91:                                               ; preds = %85, %81
  %92 = phi i1 [ false, %81 ], [ %90, %85 ]
  br i1 %92, label %93, label %154

93:                                               ; preds = %91
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %96, i64 %98
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %14, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %126, label %105

105:                                              ; preds = %93
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = icmp ne %struct.TYPE_18__* %111, null
  br i1 %112, label %126, label %113

113:                                              ; preds = %105
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118, %113, %105, %93
  store i32 0, i32* %15, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %129 = call i32 @fts5ExprPhraseIsMatch(%struct.TYPE_20__* %127, %struct.TYPE_19__* %128, i32* %15)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %154

133:                                              ; preds = %126
  br label %150

134:                                              ; preds = %118
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %16, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @fts5BufferSet(i32* %9, %struct.TYPE_15__* %142, i64 %145, i32 %148)
  br label %150

150:                                              ; preds = %134, %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %81

154:                                              ; preds = %132, %91
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** %5, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = call i64 @fts5ExprNearIsMatch(i32* %166, %struct.TYPE_21__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165, %162
  store i32 1, i32* %4, align 4
  br label %172

171:                                              ; preds = %165, %154
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %170, %75
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i64 @sqlite3Fts5IterEof(%struct.TYPE_17__*) #1

declare dso_local i32 @fts5ExprPhraseIsMatch(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @fts5BufferSet(i32*, %struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @fts5ExprNearIsMatch(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
