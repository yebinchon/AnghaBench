; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_timecode.c_DemuxOnce.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_timecode.c_DemuxOnce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, i8*, i8*, i8* }

@VLC_TICK_0 = common dso_local global i8* null, align 8
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%02u:%02u:%02u:%02u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @DemuxOnce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxOnce(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = call i8* @date_Get(%struct.TYPE_15__* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** @VLC_TICK_0, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* @CLOCK_FREQ, align 4
  %32 = call { i32, i8* } @lldiv(i8* %30, i32 %31)
  %33 = bitcast %struct.TYPE_11__* %13 to { i32, i8* }*
  %34 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %33, i32 0, i32 0
  %35 = extractvalue { i32, i8* } %32, 0
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %33, i32 0, i32 1
  %37 = extractvalue { i32, i8* } %32, 1
  store i8* %37, i8** %36, align 8
  %38 = bitcast %struct.TYPE_11__* %8 to i8*
  %39 = bitcast %struct.TYPE_11__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %41, %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %46, %50
  %52 = load i32, i32* @CLOCK_FREQ, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call { i32, i8* } @lldiv(i8* %55, i32 60)
  %57 = bitcast %struct.TYPE_11__* %14 to { i32, i8* }*
  %58 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 0
  %59 = extractvalue { i32, i8* } %56, 0
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 1
  %61 = extractvalue { i32, i8* } %56, 1
  store i8* %61, i8** %60, align 8
  %62 = bitcast %struct.TYPE_11__* %8 to i8*
  %63 = bitcast %struct.TYPE_11__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call { i32, i8* } @lldiv(i8* %67, i32 60)
  %69 = bitcast %struct.TYPE_11__* %15 to { i32, i8* }*
  %70 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %69, i32 0, i32 0
  %71 = extractvalue { i32, i8* } %68, 0
  store i32 %71, i32* %70, align 8
  %72 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %69, i32 0, i32 1
  %73 = extractvalue { i32, i8* } %68, 1
  store i8* %73, i8** %72, align 8
  %74 = bitcast %struct.TYPE_11__* %8 to i8*
  %75 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @asprintf(i8** %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %145

89:                                               ; preds = %2
  %90 = load i8*, i8** %16, align 8
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  %93 = call %struct.TYPE_14__* @block_heap_Alloc(i8* %90, i32 %92)
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %18, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %95 = icmp eq %struct.TYPE_14__* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  store i32 -1, i32* %3, align 4
  br label %145

100:                                              ; preds = %89
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  store i8* %113, i8** %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = call i8* @date_Increment(%struct.TYPE_15__* %119, i32 1)
  %121 = load i8*, i8** %7, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %135 = call i32 @es_out_Send(i32 %130, i32 %133, %struct.TYPE_14__* %134)
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %100
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @es_out_SetPCR(i32 %141, i8* %142)
  br label %144

144:                                              ; preds = %138, %100
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %99, %88
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i8* @date_Get(%struct.TYPE_15__*) #1

declare dso_local { i32, i8* } @lldiv(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @block_heap_Alloc(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @date_Increment(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @es_out_SetPCR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
