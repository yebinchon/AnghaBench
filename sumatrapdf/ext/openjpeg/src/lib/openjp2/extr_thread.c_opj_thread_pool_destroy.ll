; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }

@OPJWTS_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_thread_pool_destroy(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %130

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call i32 @opj_thread_pool_wait_completion(%struct.TYPE_6__* %14, i32 0)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @opj_mutex_lock(i32 %18)
  %20 = load i32, i32* @OPJWTS_STOP, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @opj_mutex_unlock(i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %88, %13
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @opj_mutex_lock(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @opj_cond_signal(i64 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @opj_mutex_unlock(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @opj_thread_join(i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @opj_cond_destroy(i64 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @opj_mutex_destroy(i32 %86)
  br label %88

88:                                               ; preds = %33
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %27

91:                                               ; preds = %27
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @opj_free(%struct.TYPE_6__* %94)
  br label %96

96:                                               ; preds = %101, %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %4, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @opj_free(%struct.TYPE_6__* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %113, align 8
  br label %96

114:                                              ; preds = %96
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @opj_cond_destroy(i64 %117)
  br label %119

119:                                              ; preds = %114, %8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @opj_mutex_destroy(i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @opj_tls_destroy(i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = call i32 @opj_free(%struct.TYPE_6__* %128)
  br label %130

130:                                              ; preds = %119, %7
  ret void
}

declare dso_local i32 @opj_thread_pool_wait_completion(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @opj_mutex_lock(i32) #1

declare dso_local i32 @opj_mutex_unlock(i32) #1

declare dso_local i32 @opj_cond_signal(i64) #1

declare dso_local i32 @opj_thread_join(i32) #1

declare dso_local i32 @opj_cond_destroy(i64) #1

declare dso_local i32 @opj_mutex_destroy(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_6__*) #1

declare dso_local i32 @opj_tls_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
