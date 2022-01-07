; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageIntegrityCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_fts5StorageIntegrityCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_MAX_TOKEN_SIZE = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5StorageIntegrityCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5StorageIntegrityCallback(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %13, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @UNUSED_PARAM2(i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @FTS5_MAX_TOKEN_SIZE, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %6
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %36
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %70 [
    i32 128, label %57
    i32 129, label %66
  ]

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %18, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %19, align 4
  br label %80

66:                                               ; preds = %51
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %80

70:                                               ; preds = %51
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FTS5_DETAIL_NONE, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %80

80:                                               ; preds = %70, %66, %57
  %81 = load i32*, i32** %14, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @sqlite3Fts5TermsetAdd(i32* %81, i32 0, i8* %82, i32 %83, i32* %15)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sqlite3Fts5IndexEntryCksum(i32 %94, i32 %95, i32 %96, i32 0, i8* %97, i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = xor i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %91, %88, %80
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %161, %104
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %110, %115
  br label %117

117:                                              ; preds = %109, %105
  %118 = phi i1 [ false, %105 ], [ %116, %109 ]
  br i1 %118, label %119, label %164

119:                                              ; preds = %117
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %20, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @sqlite3Fts5IndexCharlenToBytelen(i8* %129, i32 %130, i32 %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %119
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @sqlite3Fts5TermsetAdd(i32* %136, i32 %138, i8* %139, i32 %140, i32* %15)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %135
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @sqlite3Fts5IndexEntryCksum(i32 %147, i32 %148, i32 %149, i32 %151, i8* %152, i32 %153)
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = xor i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %144, %135
  br label %160

160:                                              ; preds = %159, %119
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %105

164:                                              ; preds = %117
  %165 = load i32, i32* %17, align 4
  ret i32 %165
}

declare dso_local i32 @UNUSED_PARAM2(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts5TermsetAdd(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3Fts5IndexEntryCksum(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3Fts5IndexCharlenToBytelen(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
