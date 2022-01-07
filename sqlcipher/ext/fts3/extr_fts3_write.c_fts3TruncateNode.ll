; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3TruncateNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3TruncateNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_14__*, i8*, i32, i32*)* @fts3TruncateNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3TruncateNode(i8* %0, i32 %1, %struct.TYPE_14__* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %17, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @blobGrowBuffer(%struct.TYPE_14__* %27, i32 %28, i32* %16)
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %139

35:                                               ; preds = %6
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @nodeReaderInit(%struct.TYPE_13__* %14, i8* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %105, %35
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %107

51:                                               ; preds = %49
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @fts3TermCmp(i32 %59, i32 %62, i8* %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %17, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %56
  br label %105

75:                                               ; preds = %71, %68
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fts3StartNode(%struct.TYPE_14__* %76, i32 %80, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %51
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fts3AppendToNode(%struct.TYPE_14__* %88, %struct.TYPE_14__* %15, i32 %91, i32 %94, i32 %96, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  br label %107

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %74
  %106 = call i32 @nodeReaderNext(%struct.TYPE_13__* %14)
  store i32 %106, i32* %16, align 4
  br label %41

107:                                              ; preds = %103, %49
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @fts3StartNode(%struct.TYPE_14__* %113, i32 %117, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %112, %107
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sle i64 %127, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = call i32 @nodeReaderRelease(%struct.TYPE_13__* %14)
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @sqlite3_free(i32 %136)
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %124, %33
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @blobGrowBuffer(%struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @nodeReaderInit(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @fts3TermCmp(i32, i32, i8*, i32) #2

declare dso_local i32 @fts3StartNode(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @fts3AppendToNode(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32, i32) #2

declare dso_local i32 @nodeReaderNext(%struct.TYPE_13__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @nodeReaderRelease(%struct.TYPE_13__*) #2

declare dso_local i32 @sqlite3_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
