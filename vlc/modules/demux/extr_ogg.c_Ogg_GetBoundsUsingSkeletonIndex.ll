; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_GetBoundsUsingSkeletonIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_GetBoundsUsingSkeletonIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64, i64, i64, i32, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i64 0, align 8
@__const.Ogg_GetBoundsUsingSkeletonIndex.prev = private unnamed_addr constant %struct.anon { i64 -1, i64 -1 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ogg_GetBoundsUsingSkeletonIndex(%struct.TYPE_5__* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.anon, align 8
  %12 = alloca %struct.anon, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @VLC_TICK_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %161

34:                                               ; preds = %29
  %35 = load i64, i64* @VLC_TICK_0, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = mul nsw i64 %43, %48
  %50 = icmp slt i64 %38, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %34
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %57, %62
  %64 = icmp sgt i64 %52, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51, %34
  store i32 0, i32* %5, align 4
  br label %161

66:                                               ; preds = %51
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %10, align 8
  %72 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %72, i8 0, i64 16, i1 false)
  %73 = bitcast %struct.anon* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 bitcast (%struct.anon* @__const.Ogg_GetBoundsUsingSkeletonIndex.prev to i8*), i64 16, i1 false)
  store i64 0, i64* %13, align 8
  br label %74

74:                                               ; preds = %157, %66
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %76, i64 %82
  %84 = icmp ult i8* %75, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %86, %91
  br label %93

93:                                               ; preds = %85, %74
  %94 = phi i1 [ false, %74 ], [ %92, %85 ]
  br i1 %94, label %95, label %160

95:                                               ; preds = %93
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %97, i64 %103
  %105 = call i8* @Read7BitsVariableLE(i8* %96, i8* %104, i64* %14)
  store i8* %105, i8** %10, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %106
  store i64 %109, i64* %107, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %111, i64 %117
  %119 = call i8* @Read7BitsVariableLE(i8* %110, i8* %118, i64* %14)
  store i8* %119, i8** %10, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = mul nsw i64 %120, %125
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %95
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %95
  br label %160

138:                                              ; preds = %133
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sle i64 %141, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %8, align 8
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %152, %154
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %161

157:                                              ; preds = %138
  %158 = bitcast %struct.anon* %12 to i8*
  %159 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  br label %74

160:                                              ; preds = %137, %93
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %145, %65, %33
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @Read7BitsVariableLE(i8*, i8*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
