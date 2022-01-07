; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_GetPMT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_GetPMT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32 }

@intcompare = common dso_local global i32 0, align 4
@BufferChainAppend = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*)* @GetPMT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetPMT(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca %struct.TYPE_22__, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %85, %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %31, i64 %33
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %9, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %10, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @intcompare, align 4
  %52 = call %struct.TYPE_21__* @bsearch(i32* %11, i32 %47, i32 %50, i32 4, i32 %51)
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %12, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %54 = icmp ne %struct.TYPE_21__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %28
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  br label %60

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %72, align 16
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %84, align 16
  br label %85

85:                                               ; preds = %60
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %22

88:                                               ; preds = %22
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = call i32 @VLC_OBJECT(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i64, i64* @BufferChainAppend, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.TYPE_20__*
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @BuildPMT(i32 %91, i32 %93, i32 %96, i32* %97, i32 %99, i32 %102, i32 %105, i32 %114, i32* %116, i32 %119, i32 %122, i32 %125, i32 %128, %struct.TYPE_22__* %21)
  %130 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %130)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_21__* @bsearch(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @BuildPMT(i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_22__*) #2

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
