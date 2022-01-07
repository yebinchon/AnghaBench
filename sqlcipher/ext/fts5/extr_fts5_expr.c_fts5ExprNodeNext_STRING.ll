; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeNext_STRING.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeNext_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i64)* @fts5ExprNodeNext_STRING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeNext_STRING(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %20, i64 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i64 0
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %9, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %119

33:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fts5ExprSynonymRowid(%struct.TYPE_19__* %34, i32 %37, i32 0)
  store i64 %38, i64* %13, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %12, align 8
  br label %40

40:                                               ; preds = %104, %33
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %42 = icmp ne %struct.TYPE_19__* %41, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %40
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_18__* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %103

49:                                               ; preds = %43
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %61
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp sgt i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %65, %49
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_18__* %80, i64 %81)
  store i32 %82, i32* %10, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = call i32 @sqlite3Fts5IterNext(%struct.TYPE_18__* %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %83, %77
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %108

93:                                               ; preds = %88
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_18__* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %102

101:                                              ; preds = %65, %61, %58
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %43
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %12, align 8
  br label %40

108:                                              ; preds = %92, %40
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ true, %108 ], [ %113, %111 ]
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %147

119:                                              ; preds = %4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  store %struct.TYPE_18__* %122, %struct.TYPE_18__** %15, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = call i32 @Fts5NodeIsString(%struct.TYPE_20__* %123)
  %125 = call i32 @assert(i32 %124)
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_18__* %129, i64 %130)
  store i32 %131, i32* %10, align 4
  br label %135

132:                                              ; preds = %119
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %134 = call i32 @sqlite3Fts5IterNext(%struct.TYPE_18__* %133)
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %140 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_18__* %139)
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i1 [ true, %135 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %142, %114
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @SQLITE_OK, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = call i32 @fts5ExprNodeTest_STRING(%struct.TYPE_21__* %158, %struct.TYPE_20__* %159)
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %152, %147
  %162 = load i32, i32* %10, align 4
  ret i32 %162
}

declare dso_local i64 @fts5ExprSynonymRowid(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @sqlite3Fts5IterEof(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @sqlite3Fts5IterNext(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Fts5NodeIsString(%struct.TYPE_20__*) #1

declare dso_local i32 @fts5ExprNodeTest_STRING(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
