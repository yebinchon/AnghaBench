; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"zipfile() function requires an argument\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot open file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8*, i32, i32**)* @zipfileFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileFilter(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %12, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = bitcast %struct.TYPE_11__* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %13, align 8
  store i8* null, i8** %14, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %27 = call i32 @zipfileResetCursor(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %14, align 8
  br label %93

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %41 = call i32 (%struct.TYPE_13__*, i8*, ...) @zipfileCursorErr(%struct.TYPE_13__* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %42, i32* %6, align 4
  br label %170

43:                                               ; preds = %36
  %44 = load i32**, i32*** %11, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_type(i32* %46)
  %48 = load i64, i64* @SQLITE_BLOB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %43
  %51 = load i32**, i32*** %11, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @sqlite3_value_blob(i32* %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %17, align 8
  %56 = load i32**, i32*** %11, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sqlite3_value_bytes(i32* %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @zipfileLoadDirectory(%struct.TYPE_12__* %66, i32* %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %170

84:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %91

85:                                               ; preds = %43
  %86 = load i32**, i32*** %11, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @sqlite3_value_text(i32* %88)
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %147

98:                                               ; preds = %93
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 0, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %98
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @fopen(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 (%struct.TYPE_13__*, i8*, ...) @zipfileCursorErr(%struct.TYPE_13__* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %114, i32* %15, align 4
  br label %146

115:                                              ; preds = %101
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = call i32 @zipfileReadEOCD(%struct.TYPE_12__* %116, i32 0, i32 0, i64 %119, %struct.TYPE_14__* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %115
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  br label %144

135:                                              ; preds = %126
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = call i32 @zipfileNext(%struct.TYPE_11__* %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %135, %132
  br label %145

145:                                              ; preds = %144, %115
  br label %146

146:                                              ; preds = %145, %110
  br label %168

147:                                              ; preds = %98, %93
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  store i32 1, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  br label %162

158:                                              ; preds = %147
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i64 [ %157, %154 ], [ %161, %158 ]
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = call i32 @zipfileNext(%struct.TYPE_11__* %166)
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %162, %146
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %82, %39
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @zipfileResetCursor(%struct.TYPE_13__*) #1

declare dso_local i32 @zipfileCursorErr(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zipfileLoadDirectory(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @zipfileReadEOCD(%struct.TYPE_12__*, i32, i32, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @zipfileNext(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
