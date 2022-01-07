; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_exec.c_decompress_chunk_create_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_exec.c_decompress_chunk_create_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, i32* }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { { i64, i32 } (%struct.TYPE_19__*)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"compressed column out of sync with batch counter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_26__*)* @decompress_chunk_create_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @decompress_chunk_create_tuple(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca %struct.TYPE_25__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %1, %160
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @linitial(i32 %28)
  %30 = call %struct.TYPE_24__* @ExecProcNode(i32 %29)
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %7, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = call i64 @TupIsNull(%struct.TYPE_24__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %167

35:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = call i32 @initialize_batch(%struct.TYPE_26__* %36, %struct.TYPE_24__* %37)
  br label %39

39:                                               ; preds = %35, %19
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = call i32 @ExecClearTuple(%struct.TYPE_24__* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %154, %39
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %157

48:                                               ; preds = %42
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i64 %53
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %8, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %153 [
    i32 130, label %58
    i32 131, label %70
    i32 129, label %129
    i32 128, label %152
  ]

58:                                               ; preds = %48
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %63
  br label %153

70:                                               ; preds = %48
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @AttrNumberGetAttrOffset(i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = icmp ne %struct.TYPE_19__* %78, null
  br i1 %79, label %80, label %122

80:                                               ; preds = %70
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load { i64, i32 } (%struct.TYPE_19__*)*, { i64, i32 } (%struct.TYPE_19__*)** %85, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = call { i64, i32 } %86(%struct.TYPE_19__* %90)
  store { i64, i32 } %91, { i64, i32 }* %12, align 8
  %92 = bitcast { i64, i32 }* %12 to i8*
  %93 = bitcast %struct.TYPE_25__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 8 %92, i64 12, i1 false)
  %94 = bitcast %struct.TYPE_25__* %10 to i8*
  %95 = bitcast %struct.TYPE_25__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %154

100:                                              ; preds = %80
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 @elog(i32 %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %116, i32* %121, align 4
  br label %128

122:                                              ; preds = %70
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %107
  br label %153

129:                                              ; preds = %48
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @AttrNumberGetAttrOffset(i32 %132)
  store i64 %133, i64* %13, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32 %146, i32* %151, align 4
  br label %153

152:                                              ; preds = %48
  br label %153

153:                                              ; preds = %48, %152, %129, %128, %69
  br label %154

154:                                              ; preds = %153, %99
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %42

157:                                              ; preds = %42
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %19

163:                                              ; preds = %157
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_24__* %164)
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %166, %struct.TYPE_24__** %2, align 8
  br label %167

167:                                              ; preds = %163, %34
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %168
}

declare dso_local %struct.TYPE_24__* @ExecProcNode(i32) #1

declare dso_local i32 @linitial(i32) #1

declare dso_local i64 @TupIsNull(%struct.TYPE_24__*) #1

declare dso_local i32 @initialize_batch(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_24__*) #1

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
