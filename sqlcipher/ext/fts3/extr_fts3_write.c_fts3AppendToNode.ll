; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3AppendToNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3AppendToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, i8*, i32, i8*, i32)* @fts3AppendToNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3AppendToNode(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @blobGrowBuffer(%struct.TYPE_5__* %44, i32 %45, i32* %14)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %6
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %7, align 4
  br label %175

52:                                               ; preds = %6
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @fts3PrefixCompress(i8* %55, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @memcpy(i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %52
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i32, i32* %16, align 4
  %86 = call i64 @sqlite3Fts3PutVarint(i8* %84, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  br label %93

93:                                               ; preds = %76, %52
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i32, i32* %17, align 4
  %103 = call i64 @sqlite3Fts3PutVarint(i8* %101, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @memcpy(i8* %117, i8* %121, i32 %122)
  %124 = load i32, i32* %17, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %164

131:                                              ; preds = %93
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  %140 = load i32, i32* %13, align 4
  %141 = call i64 @sqlite3Fts3PutVarint(i8* %139, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load i8*, i8** %12, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @memcpy(i8* %155, i8* %156, i32 %157)
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %131, %93
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp sle i32 %167, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32, i32* @SQLITE_OK, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %164, %50
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @blobGrowBuffer(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @fts3PrefixCompress(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3Fts3PutVarint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
