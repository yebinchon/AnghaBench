; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_setup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_thread_pool_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32*, %struct.TYPE_6__* }

@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@opj_worker_thread_function = common dso_local global i32 0, align 4
@OPJWTS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @opj_thread_pool_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_thread_pool_setup(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i8* (...) @opj_cond_create()
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %183

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = call i64 @opj_calloc(i64 %25, i32 40)
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %183

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %147, %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %150

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %52, align 8
  %53 = call i32* (...) @opj_mutex_create()
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32* %53, i32** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %44
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %74, i32* %7, align 4
  br label %150

75:                                               ; preds = %44
  %76 = call i8* (...) @opj_cond_create()
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i32* %77, i32** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %75
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @opj_mutex_destroy(i32* %102)
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %107, i32* %7, align 4
  br label %150

108:                                              ; preds = %75
  %109 = load i32, i32* @OPJ_FALSE, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 8
  %117 = load i32, i32* @opj_worker_thread_function, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = call i32* @opj_thread_create(i32 %117, %struct.TYPE_5__* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32* %124, i32** %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %108
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %145, i32* %7, align 4
  br label %150

146:                                              ; preds = %108
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %40

150:                                              ; preds = %141, %94, %70, %40
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @opj_mutex_lock(i32 %153)
  br label %155

155:                                              ; preds = %161, %150
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @opj_cond_wait(i32* %164, i32 %167)
  br label %155

169:                                              ; preds = %155
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @opj_mutex_unlock(i32 %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @OPJWTS_ERROR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %169
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %34, %21
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @opj_cond_create(...) #1

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32* @opj_mutex_create(...) #1

declare dso_local i32 @opj_mutex_destroy(i32*) #1

declare dso_local i32* @opj_thread_create(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @opj_mutex_lock(i32) #1

declare dso_local i32 @opj_cond_wait(i32*, i32) #1

declare dso_local i32 @opj_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
