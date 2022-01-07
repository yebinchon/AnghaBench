; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficePage_render.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficePage_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { float, i32, i32, i8*, i32*, i32, i32*, %struct.TYPE_10__* }

@MuError_BadNull = common dso_local global i32 0, align 4
@MuError_OOM = common dso_local global i32 0, align 4
@render_worker = common dso_local global i32 0, align 4
@MuError_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MuOfficePage_render(%struct.TYPE_10__* %0, float %1, i32* %2, i32* %3, i32* %4, i8* %5, %struct.TYPE_9__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store float %1, float* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_9__** %6, %struct.TYPE_9__*** %15, align 8
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  %20 = icmp ne %struct.TYPE_9__** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @MuError_BadNull, align 4
  store i32 %22, i32* %8, align 4
  br label %84

23:                                               ; preds = %7
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @MuError_BadNull, align 4
  store i32 %28, i32* %8, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %17, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %18, align 8
  %36 = call %struct.TYPE_9__* @Pal_Mem_calloc(i32 1, i32 56)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %16, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @MuError_OOM, align 4
  store i32 %40, i32* %8, align 4
  br label %84

41:                                               ; preds = %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 7
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %44, align 8
  %45 = load float, float* %10, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store float %45, float* %47, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %63

60:                                               ; preds = %41
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* @render_worker, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %74 = call i64 @mu_create_thread(i32* %71, i32 %72, %struct.TYPE_9__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %78 = call i32 @Pal_Mem_free(%struct.TYPE_9__* %77)
  %79 = load i32, i32* @MuError_OOM, align 4
  store i32 %79, i32* %8, align 4
  br label %84

80:                                               ; preds = %63
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %82, align 8
  %83 = load i32, i32* @MuError_OK, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %76, %39, %27, %21
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_9__* @Pal_Mem_calloc(i32, i32) #1

declare dso_local i64 @mu_create_thread(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @Pal_Mem_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
