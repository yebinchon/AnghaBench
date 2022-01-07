; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_submit_job.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_submit_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i32 (i8*, i32)* }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }

@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_thread_pool_submit_job(%struct.TYPE_10__* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %18(i8* %19, i32 %22)
  %24 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %24, i32* %4, align 4
  br label %147

25:                                               ; preds = %3
  %26 = call i64 @opj_malloc(i32 32)
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %147

32:                                               ; preds = %25
  %33 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store i32 (i8*, i32)* %33, i32 (i8*, i32)** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i64 @opj_malloc(i32 16)
  %40 = inttoptr i64 %39 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = icmp eq %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = call i32 @opj_free(%struct.TYPE_9__* %44)
  %46 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %147

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @opj_mutex_lock(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 100, %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %69, %47
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @opj_cond_wait(i32 %72, i32* %75)
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %140

94:                                               ; preds = %77
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %10, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* @OPJ_FALSE, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %11, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %12, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @opj_mutex_lock(i32* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @opj_mutex_unlock(i32* %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @opj_cond_signal(i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @opj_mutex_unlock(i32* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = call i32 @opj_free(%struct.TYPE_9__* %138)
  br label %145

140:                                              ; preds = %77
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @opj_mutex_unlock(i32* %143)
  br label %145

145:                                              ; preds = %140, %94
  %146 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %43, %30, %17
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_9__*) #1

declare dso_local i32 @opj_mutex_lock(i32*) #1

declare dso_local i32 @opj_cond_wait(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @opj_mutex_unlock(i32*) #1

declare dso_local i32 @opj_cond_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
