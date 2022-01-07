; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_19__ = type { i8*, i32, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*)* @fts3IncrmergeAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IncrmergeAppend(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 0
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %15, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @fts3PrefixCompress(i32 %36, i64 %40, i8* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @sqlite3Fts3VarintLen(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @sqlite3Fts3VarintLen(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sqlite3Fts3VarintLen(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %129

66:                                               ; preds = %3
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %129

77:                                               ; preds = %66
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fts3WriteSegment(%struct.TYPE_18__* %78, i32 %81, i8* %85, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %77
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @fts3IncrmergePush(%struct.TYPE_18__* %99, %struct.TYPE_17__* %100, i8* %101, i32 %103)
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %98, %77
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %14, align 4
  store i32 1, i32* %12, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @sqlite3Fts3VarintLen(i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @sqlite3Fts3VarintLen(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %105, %66, %3
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 @blobGrowBuffer(%struct.TYPE_14__* %136, i32 %142, i32* %11)
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @SQLITE_OK, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %129
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %153, %147
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @fts3AppendToNode(%struct.TYPE_14__* %164, %struct.TYPE_15__* %166, i8* %167, i32 %168, i8* %169, i32 %170)
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %162, %129
  %173 = load i32, i32* %11, align 4
  ret i32 %173
}

declare dso_local i32 @fts3PrefixCompress(i32, i64, i8*, i32) #1

declare dso_local i32 @sqlite3Fts3VarintLen(i32) #1

declare dso_local i32 @fts3WriteSegment(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @fts3IncrmergePush(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @blobGrowBuffer(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @fts3AppendToNode(%struct.TYPE_14__*, %struct.TYPE_15__*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
