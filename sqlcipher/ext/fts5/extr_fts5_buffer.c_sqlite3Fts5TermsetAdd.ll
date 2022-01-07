; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_buffer.c_sqlite3Fts5TermsetAdd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_buffer.c_sqlite3Fts5TermsetAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32, i8*, %struct.TYPE_6__* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5TermsetAdd(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %137

19:                                               ; preds = %5
  store i32 13, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = load i32, i32* %12, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* %13, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* %13, align 4
  %29 = xor i32 %27, %28
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = xor i32 %29, %35
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %12, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 %41, 3
  %43 = load i32, i32* %13, align 4
  %44 = xor i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = call i32 @ArraySize(%struct.TYPE_6__** %50)
  %52 = srem i32 %47, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %14, align 8
  br label %60

60:                                               ; preds = %86, %40
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @memcmp(i8* %78, i8* %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32*, i32** %10, align 8
  store i32 1, i32* %84, align 4
  br label %90

85:                                               ; preds = %75, %69, %63
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %14, align 8
  br label %60

90:                                               ; preds = %83, %60
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %92 = icmp eq %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %136

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 24, %95
  %97 = trunc i64 %96 to i32
  %98 = call %struct.TYPE_6__* @sqlite3Fts5MallocZero(i32* %11, i32 %97)
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %14, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %135

101:                                              ; preds = %93
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 1
  %104 = bitcast %struct.TYPE_6__* %103 to i8*
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %133
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %134, align 8
  br label %135

135:                                              ; preds = %101, %93
  br label %136

136:                                              ; preds = %135, %90
  br label %137

137:                                              ; preds = %136, %5
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local i32 @ArraySize(%struct.TYPE_6__**) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
