; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPopulatePoslistsCb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprPopulatePoslistsCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_8__* }

@FTS5_MAX_TOKEN_SIZE = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5ExprPopulatePoslistsCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprPopulatePoslistsCb(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @UNUSED_PARAM2(i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %33
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %132, %43
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %132

61:                                               ; preds = %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 0
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %17, align 8
  br label %72

72:                                               ; preds = %127, %61
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @strlen(i32 %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %88, %75
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i64 @memcmp(i32 %96, i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %93
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @sqlite3Fts5PoslistWriterAppend(i32* %109, i32* %116, i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %101
  %124 = load i32, i32* %19, align 4
  store i32 %124, i32* %7, align 4
  br label %137

125:                                              ; preds = %101
  br label %131

126:                                              ; preds = %93, %88, %84
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %17, align 8
  br label %72

131:                                              ; preds = %125, %72
  br label %132

132:                                              ; preds = %131, %60
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %44

135:                                              ; preds = %44
  %136 = load i32, i32* @SQLITE_OK, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %123
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @UNUSED_PARAM2(i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @sqlite3Fts5PoslistWriterAppend(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
