; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_FinderThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_FinderThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i8** }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*)* }
%struct.TYPE_24__ = type { i8*, %struct.TYPE_17__, i32 (%struct.TYPE_24__*)*, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }

@finder_thread_interrupted = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"entries finder\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"addons finder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @FinderThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FinderThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %3, align 8
  %10 = call i32 (...) @vlc_savecancel()
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vlc_interrupt_set(i32 %16)
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  br label %24

24:                                               ; preds = %157, %1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %170

32:                                               ; preds = %24
  %33 = load i32, i32* @finder_thread_interrupted, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @vlc_interrupt_register(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %55, %32
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %45, %36
  %54 = phi i1 [ false, %36 ], [ %52, %45 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = call i32 @vlc_cond_wait(i32* %60, i32* %65)
  br label %36

67:                                               ; preds = %53
  %68 = call i32 (...) @vlc_interrupt_unregister()
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %170

77:                                               ; preds = %67
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %5, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = bitcast %struct.TYPE_18__* %91 to { i64, i8** }*
  %93 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i8** }, { i64, i8** }* %92, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = call i32 @ARRAY_REMOVE(i64 %94, i8** %96, i32 0)
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = call i32 @vlc_mutex_unlock(i32* %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_24__* @vlc_custom_create(i32 %108, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_24__* %109, %struct.TYPE_24__** %6, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %111 = icmp ne %struct.TYPE_24__* %110, null
  br i1 %111, label %112, label %157

112:                                              ; preds = %77
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = bitcast %struct.TYPE_17__* %117 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ARRAY_INIT(i64 %119)
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = call i32* @module_need(%struct.TYPE_24__* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store i32* %125, i32** %7, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %112
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  %131 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = call i32 %131(%struct.TYPE_24__* %132)
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @module_unneed(%struct.TYPE_24__* %134, i32* %135)
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MergeSources(%struct.TYPE_23__* %137, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %128, %112
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 1
  %150 = bitcast %struct.TYPE_17__* %149 to i64*
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ARRAY_RESET(i64 %151)
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = call i32 @vlc_object_delete(%struct.TYPE_24__* %155)
  br label %157

157:                                              ; preds = %147, %77
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %160, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = call i32 %161(%struct.TYPE_23__* %162)
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = call i32 @vlc_mutex_lock(i32* %168)
  br label %24

170:                                              ; preds = %76, %24
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = call i32 @vlc_mutex_unlock(i32* %175)
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @vlc_restorecancel(i32 %177)
  ret i8* null
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_interrupt_set(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_interrupt_register(i32, i8*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_interrupt_unregister(...) #1

declare dso_local i32 @ARRAY_REMOVE(i64, i8**, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_24__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_INIT(i64) #1

declare dso_local i32* @module_need(%struct.TYPE_24__*, i8*, i32*, i32) #1

declare dso_local i32 @module_unneed(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @MergeSources(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ARRAY_RESET(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_24__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
