; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ApiColumnSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ApiColumnSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i64*, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5CSR_REQUIRE_DOCSIZE = common dso_local global i32 0, align 4
@FTS5_TOKENIZE_AUX = common dso_local global i32 0, align 4
@fts5ColumnSizeCb = common dso_local global i32 0, align 4
@SQLITE_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @fts5ApiColumnSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ApiColumnSize(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %9, align 8
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = load i32, i32* @FTS5CSR_REQUIRE_DOCSIZE, align 4
  %32 = call i64 @CsrFlagTest(%struct.TYPE_13__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %144

34:                                               ; preds = %3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = call i32 @fts5CursorRowid(%struct.TYPE_13__* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @sqlite3Fts5StorageDocsize(i32 %44, i32 %45, i32* %48)
  store i32 %49, i32* %10, align 4
  br label %140

50:                                               ; preds = %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %56

82:                                               ; preds = %56
  br label %139

83:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %135, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br label %94

94:                                               ; preds = %88, %84
  %95 = phi i1 [ false, %84 ], [ %93, %88 ]
  br i1 %95, label %96, label %138

96:                                               ; preds = %94
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %96
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = bitcast i32* %111 to i8*
  store i8* %112, i8** %16, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 0, i32* %118, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @fts5ApiColumnText(i32* %119, i32 %120, i8** %14, i32* %15)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @SQLITE_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %105
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = load i32, i32* @FTS5_TOKENIZE_AUX, align 4
  %128 = load i8*, i8** %14, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i8*, i8** %16, align 8
  %131 = load i32, i32* @fts5ColumnSizeCb, align 4
  %132 = call i32 @sqlite3Fts5Tokenize(%struct.TYPE_14__* %126, i32 %127, i8* %128, i32 %129, i8* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %105
  br label %134

134:                                              ; preds = %133, %96
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %84

138:                                              ; preds = %94
  br label %139

139:                                              ; preds = %138, %82
  br label %140

140:                                              ; preds = %139, %39
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = load i32, i32* @FTS5CSR_REQUIRE_DOCSIZE, align 4
  %143 = call i32 @CsrFlagClear(%struct.TYPE_13__* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %3
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %144
  %148 = load i32*, i32** %6, align 8
  store i32 0, i32* %148, align 4
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %166, %147
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %149
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %162
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  br label %149

169:                                              ; preds = %149
  br label %189

170:                                              ; preds = %144
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %6, align 8
  store i32 %183, i32* %184, align 4
  br label %188

185:                                              ; preds = %170
  %186 = load i32*, i32** %6, align 8
  store i32 0, i32* %186, align 4
  %187 = load i32, i32* @SQLITE_RANGE, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %185, %176
  br label %189

189:                                              ; preds = %188, %169
  %190 = load i32, i32* %10, align 4
  ret i32 %190
}

declare dso_local i64 @CsrFlagTest(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fts5CursorRowid(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3Fts5StorageDocsize(i32, i32, i32*) #1

declare dso_local i32 @fts5ApiColumnText(i32*, i32, i8**, i32*) #1

declare dso_local i32 @sqlite3Fts5Tokenize(%struct.TYPE_14__*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @CsrFlagClear(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
