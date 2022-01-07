; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeSorterSort.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeSorterSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @vdbeSorterSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterSort(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = call i32 @vdbeSortAllocUnpacked(%struct.TYPE_18__* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %177

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vdbeSorterGetCompare(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = call i64 @sqlite3MallocZero(i32 512)
  %29 = inttoptr i64 %28 to %struct.TYPE_16__**
  store %struct.TYPE_16__** %29, %struct.TYPE_16__*** %7, align 8
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %31 = icmp ne %struct.TYPE_16__** %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %33, i32* %3, align 4
  br label %177

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %105, %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %38, label %112

38:                                               ; preds = %35
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = bitcast %struct.TYPE_16__* %44 to i32*
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  br label %72

51:                                               ; preds = %43
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3MallocSize(i32* %58)
  %60 = icmp ult i64 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = bitcast i32* %70 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %10, align 8
  br label %72

72:                                               ; preds = %51, %50
  br label %78

73:                                               ; preds = %38
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %10, align 8
  br label %78

78:                                               ; preds = %73, %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %102, %78
  %83 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %83, i64 %85
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = icmp ne %struct.TYPE_16__* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %92, i64 %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = call %struct.TYPE_16__* @vdbeSorterMerge(%struct.TYPE_18__* %90, %struct.TYPE_16__* %91, %struct.TYPE_16__* %96)
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %8, align 8
  %98 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %98, i64 %100
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %101, align 8
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %107, i64 %109
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %8, align 8
  br label %35

112:                                              ; preds = %35
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %144, %112
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 64
  br i1 %115, label %116, label %147

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %117, i64 %119
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = icmp eq %struct.TYPE_16__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %144

124:                                              ; preds = %116
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = icmp ne %struct.TYPE_16__* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %130, i64 %132
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = call %struct.TYPE_16__* @vdbeSorterMerge(%struct.TYPE_18__* %128, %struct.TYPE_16__* %129, %struct.TYPE_16__* %134)
  br label %142

136:                                              ; preds = %124
  %137 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %137, i64 %139
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  br label %142

142:                                              ; preds = %136, %127
  %143 = phi %struct.TYPE_16__* [ %135, %127 ], [ %141, %136 ]
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %8, align 8
  br label %144

144:                                              ; preds = %142, %123
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %113

147:                                              ; preds = %113
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %150, align 8
  %151 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %152 = call i32 @sqlite3_free(%struct.TYPE_16__** %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SQLITE_OK, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %168, label %160

160:                                              ; preds = %147
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @SQLITE_NOMEM, align 4
  %167 = icmp eq i32 %165, %166
  br label %168

168:                                              ; preds = %160, %147
  %169 = phi i1 [ true, %147 ], [ %167, %160 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %168, %32, %16
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @vdbeSortAllocUnpacked(%struct.TYPE_18__*) #1

declare dso_local i32 @vdbeSorterGetCompare(i32) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3MallocSize(i32*) #1

declare dso_local %struct.TYPE_16__* @vdbeSorterMerge(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
