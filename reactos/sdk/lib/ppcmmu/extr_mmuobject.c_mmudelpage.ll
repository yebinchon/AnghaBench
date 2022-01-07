; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmudelpage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmudelpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@PpcPageTable = common dso_local global %struct.TYPE_14__* null, align 8
@MMU_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmudelpage(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %137, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %140

17:                                               ; preds = %13
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %17
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PpcPageTable, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %34
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %9, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  store i32 %38, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 4
  br label %68

52:                                               ; preds = %17
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_14__* @mmuvirtmap(i32 %58)
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %9, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @PpcPageTable, align 8
  %62 = ptrtoint %struct.TYPE_14__* %60 to i64
  %63 = ptrtoint %struct.TYPE_14__* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @PPC_PAGE_ADDR(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %52, %25
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %125, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %128

72:                                               ; preds = %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.TYPE_12__* @PtegFromPage(%struct.TYPE_14__* %73, i32 %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %121, %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %124

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %85
  %87 = bitcast %struct.TYPE_13__* %86 to i64*
  %88 = load i64, i64* %87, align 4
  %89 = call i64 @PageMatch(i32 %80, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %79
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 256
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load i32, i32* @MMU_PAGE_DIRTY, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %103
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %102, %91
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %116
  %118 = bitcast %struct.TYPE_13__* %117 to i8*
  %119 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  br label %120

120:                                              ; preds = %111, %79
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %76

124:                                              ; preds = %76
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %69

128:                                              ; preds = %69
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = call i32 @freepage(%struct.TYPE_14__* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  call void asm sideeffect "tlbie $0\0A\09sync\0A\09isync", "r,~{dirflag},~{fpsr},~{flags}"(i32 %136) #3, !srcloc !2
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %13

140:                                              ; preds = %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @mmuvirtmap(i32) #2

declare dso_local i32 @PPC_PAGE_ADDR(i32) #2

declare dso_local %struct.TYPE_12__* @PtegFromPage(%struct.TYPE_14__*, i32) #2

declare dso_local i64 @PageMatch(i32, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @freepage(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1575, i32 1586, i32 1594}
