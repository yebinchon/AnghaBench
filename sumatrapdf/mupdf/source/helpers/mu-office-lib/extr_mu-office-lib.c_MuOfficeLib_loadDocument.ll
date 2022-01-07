; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficeLib_loadDocument.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/helpers/mu-office-lib/extr_mu-office-lib.c_MuOfficeLib_loadDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i32*, i32*, i32, %struct.TYPE_8__* }

@MuOfficeDocErrorType_IllegalArgument = common dso_local global i32 0, align 4
@MuOfficeDocErrorType_NoError = common dso_local global i32 0, align 4
@load_worker = common dso_local global i32 0, align 4
@MuError_OK = common dso_local global i32 0, align 4
@MuError_OOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MuOfficeLib_loadDocument(%struct.TYPE_8__* %0, i8* %1, i32* %2, i32* %3, i8* %4, %struct.TYPE_9__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__**, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_9__** %5, %struct.TYPE_9__*** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %20 = icmp eq %struct.TYPE_9__** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %6
  %22 = load i32, i32* @MuOfficeDocErrorType_IllegalArgument, align 4
  store i32 %22, i32* %7, align 4
  br label %79

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %24, align 8
  %25 = call %struct.TYPE_9__* @Pal_Mem_calloc(i32 1, i32 56)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %14, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @MuOfficeDocErrorType_NoError, align 4
  store i32 %29, i32* %7, align 4
  br label %79

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 7
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @fz_clone_context(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @fz_strdup(i32* %50, i8* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = call i64 @mu_create_semaphore(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %30
  br label %72

60:                                               ; preds = %30
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* @load_worker, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %65 = call i64 @mu_create_thread(i32* %62, i32 %63, %struct.TYPE_9__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %70, align 8
  %71 = load i32, i32* @MuError_OK, align 4
  store i32 %71, i32* %7, align 4
  br label %79

72:                                               ; preds = %67, %59
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = call i32 @mu_destroy_semaphore(i32* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %77 = call i32 @Pal_Mem_free(%struct.TYPE_9__* %76)
  %78 = load i32, i32* @MuError_OOM, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %72, %68, %28, %21
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_9__* @Pal_Mem_calloc(i32, i32) #1

declare dso_local i32 @fz_clone_context(i32*) #1

declare dso_local i32 @fz_strdup(i32*, i8*) #1

declare dso_local i64 @mu_create_semaphore(i32*) #1

declare dso_local i64 @mu_create_thread(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mu_destroy_semaphore(i32*) #1

declare dso_local i32 @Pal_Mem_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
