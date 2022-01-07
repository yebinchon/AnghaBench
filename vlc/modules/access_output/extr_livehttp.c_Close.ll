; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_18__*, i64, i64, i32, %struct.TYPE_18__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Writing.. %zd\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Removing segment number %d name %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"livehttp access output closed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = icmp ne %struct.TYPE_20__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 10
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = call i32 @block_ChainLastAppend(%struct.TYPE_20__*** %20, %struct.TYPE_20__* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 7
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 9
  store %struct.TYPE_20__** %29, %struct.TYPE_20__*** %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %5, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 10
  store %struct.TYPE_20__** %38, %struct.TYPE_20__*** %40, align 8
  br label %41

41:                                               ; preds = %44, %25
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %6, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = call i32 @Write(%struct.TYPE_17__* %50, %struct.TYPE_20__* %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %5, align 8
  br label %41

54:                                               ; preds = %41
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 7
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = icmp ne %struct.TYPE_20__* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 10
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = call i32 @block_ChainLastAppend(%struct.TYPE_20__*** %61, %struct.TYPE_20__* %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 7
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 9
  store %struct.TYPE_20__** %69, %struct.TYPE_20__*** %71, align 8
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = call i64 @writeSegment(%struct.TYPE_17__* %73)
  store i64 %74, i64* %7, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Dbg(%struct.TYPE_17__* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %72
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = icmp ne %struct.TYPE_20__* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = call i32 @block_ChainRelease(%struct.TYPE_20__* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = icmp ne %struct.TYPE_20__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = call i32 @block_ChainRelease(%struct.TYPE_20__* %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = call i32 @closeCurrentSegment(%struct.TYPE_17__* %105, %struct.TYPE_18__* %106, i32 1)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = icmp ne %struct.TYPE_18__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @gcry_cipher_close(i32 %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = call i32 @free(%struct.TYPE_18__* %119)
  br label %121

121:                                              ; preds = %112, %104
  br label %122

122:                                              ; preds = %161, %121
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = call i64 @vlc_array_count(i32* %124)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %122
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = call %struct.TYPE_19__* @vlc_array_item_at_index(i32* %129, i32 0)
  store %struct.TYPE_19__* %130, %struct.TYPE_19__** %8, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = call i32 @vlc_array_remove(i32* %132, i32 0)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %127
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Dbg(%struct.TYPE_17__* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %152, i64 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @vlc_unlink(i64 %159)
  br label %161

161:                                              ; preds = %148, %143, %138, %127
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %163 = call i32 @destroySegment(%struct.TYPE_19__* %162)
  br label %122

164:                                              ; preds = %122
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = call i32 @free(%struct.TYPE_18__* %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = call i32 @free(%struct.TYPE_18__* %171)
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = call i32 @free(%struct.TYPE_18__* %173)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %176 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Dbg(%struct.TYPE_17__* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_20__***, %struct.TYPE_20__*) #1

declare dso_local i32 @Write(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i64 @writeSegment(%struct.TYPE_17__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_20__*) #1

declare dso_local i32 @closeCurrentSegment(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @gcry_cipher_close(i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.TYPE_19__* @vlc_array_item_at_index(i32*, i32) #1

declare dso_local i32 @vlc_array_remove(i32*, i32) #1

declare dso_local i32 @vlc_unlink(i64) #1

declare dso_local i32 @destroySegment(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
