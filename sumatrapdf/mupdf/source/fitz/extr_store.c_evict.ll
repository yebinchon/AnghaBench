; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_evict.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_29__*, i32)*, i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)*, i32* }
%struct.TYPE_22__ = type { i64, {}* }

@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*)* @evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evict(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %10, %struct.TYPE_27__** %5, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = icmp ne %struct.TYPE_24__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %31, align 8
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 2
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %37, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  store %struct.TYPE_24__* %46, %struct.TYPE_24__** %50, align 8
  br label %57

51:                                               ; preds = %38
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %56, align 8
  br label %57

57:                                               ; preds = %51, %43
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = call i32 @Memento_dropRef(%struct.TYPE_22__* %67)
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = icmp eq i64 %82, 0
  br label %84

84:                                               ; preds = %76, %69
  %85 = phi i1 [ false, %69 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)*, i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)** %90, align 8
  %92 = icmp ne i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %84
  %94 = bitcast %struct.TYPE_26__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %94, i8 0, i64 16, i1 false)
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = bitcast {}** %98 to i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)**
  %100 = load i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  store i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)* %100, i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)** %101, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)*, i64 (%struct.TYPE_29__*, %struct.TYPE_26__*, i32)** %105, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 %106(%struct.TYPE_29__* %107, %struct.TYPE_26__* %7, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %93
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @fz_hash_remove(%struct.TYPE_29__* %114, i32 %117, %struct.TYPE_26__* %7)
  br label %119

119:                                              ; preds = %113, %93
  br label %120

120:                                              ; preds = %119, %84
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %123 = call i32 @fz_unlock(%struct.TYPE_29__* %121, i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = bitcast {}** %130 to i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)**
  %132 = load i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_22__*)** %131, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = call i32 %132(%struct.TYPE_29__* %133, %struct.TYPE_22__* %136)
  br label %138

138:                                              ; preds = %126, %120
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_29__*, i32)*, i32 (%struct.TYPE_29__*, i32)** %142, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 %143(%struct.TYPE_29__* %144, i32 %147)
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %151 = call i32 @fz_free(%struct.TYPE_29__* %149, %struct.TYPE_28__* %150)
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %153 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %154 = call i32 @fz_lock(%struct.TYPE_29__* %152, i32 %153)
  ret void
}

declare dso_local i32 @Memento_dropRef(%struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fz_hash_remove(%struct.TYPE_29__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @fz_unlock(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @fz_free(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @fz_lock(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
