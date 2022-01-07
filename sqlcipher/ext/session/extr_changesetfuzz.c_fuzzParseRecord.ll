; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseRecord.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, %struct.TYPE_5__*, i32)* @fuzzParseRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzParseRecord(i32** %0, i32* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %11, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %117, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %120

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %45, %42
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp uge i32* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %120

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %62, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %59
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 2
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i32 [ %78, %74 ], [ 4, %79 ]
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i64 @sqlite3_realloc(i32** %84, i32 %88)
  %90 = inttoptr i64 %89 to i32**
  store i32** %90, i32*** %16, align 8
  %91 = load i32**, i32*** %16, align 8
  %92 = icmp eq i32** %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %94, i32* %5, align 4
  br label %136

95:                                               ; preds = %80
  %96 = load i32**, i32*** %16, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i32** %96, i32*** %98, align 8
  br label %99

99:                                               ; preds = %95, %59
  %100 = load i32*, i32** %13, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32**, i32*** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32*, i32** %103, i64 %108
  store i32* %100, i32** %109, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @fuzzChangeSize(i32* %110, i32* %14)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %13, align 8
  br label %116

116:                                              ; preds = %99, %45
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %30

120:                                              ; preds = %58, %40
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @SQLITE_OK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (...) @fuzzCorrupt()
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %130, %124, %120
  %133 = load i32*, i32** %13, align 8
  %134 = load i32**, i32*** %6, align 8
  store i32* %133, i32** %134, align 8
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %93
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @sqlite3_realloc(i32**, i32) #1

declare dso_local i32 @fuzzChangeSize(i32*, i32*) #1

declare dso_local i32 @fuzzCorrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
