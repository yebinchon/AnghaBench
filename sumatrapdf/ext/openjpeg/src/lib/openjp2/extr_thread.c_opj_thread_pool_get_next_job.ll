; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_get_next_job.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_get_next_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@OPJ_TRUE = common dso_local global i64 0, align 8
@OPJ_FALSE = common dso_local global i64 0, align 8
@OPJWTS_STOP = common dso_local global i64 0, align 8
@OPJWTS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, %struct.TYPE_8__*, i64)* @opj_thread_pool_get_next_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @opj_thread_pool_get_next_job(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %11

11:                                               ; preds = %123, %3
  %12 = load i64, i64* @OPJ_TRUE, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %147

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @opj_mutex_lock(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @opj_cond_signal(i32 %37)
  br label %39

39:                                               ; preds = %34, %21
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OPJWTS_STOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @opj_mutex_unlock(i32 %49)
  store i32* null, i32** %4, align 8
  br label %147

51:                                               ; preds = %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %8, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %9, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @opj_mutex_unlock(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = call i32 @opj_free(%struct.TYPE_11__* %70)
  %72 = load i32*, i32** %9, align 8
  store i32* %72, i32** %4, align 8
  br label %147

73:                                               ; preds = %51
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %123, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* @OPJ_TRUE, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = call i64 @opj_malloc(i32 16)
  %96 = inttoptr i64 %95 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %10, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = icmp eq %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %78
  %100 = load i64, i64* @OPJWTS_ERROR, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @opj_cond_signal(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @opj_mutex_unlock(i32 %109)
  store i32* null, i32** %4, align 8
  br label %147

111:                                              ; preds = %78
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %122, align 8
  br label %123

123:                                              ; preds = %111, %73
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @opj_cond_signal(i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @opj_mutex_lock(i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @opj_mutex_unlock(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @opj_cond_wait(i32 %138, i32 %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @opj_mutex_unlock(i32 %145)
  br label %11

147:                                              ; preds = %46, %57, %99, %11
  %148 = load i32*, i32** %4, align 8
  ret i32* %148
}

declare dso_local i32 @opj_mutex_lock(i32) #1

declare dso_local i32 @opj_cond_signal(i32) #1

declare dso_local i32 @opj_mutex_unlock(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @opj_cond_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
