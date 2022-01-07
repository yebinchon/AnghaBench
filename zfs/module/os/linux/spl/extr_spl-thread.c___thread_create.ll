; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-thread.c___thread_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-thread.c___thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32*, i32, i8*, i32, i32 }
%struct.task_struct = type { i32 }

@KM_PUSHPAGE = common dso_local global i32 0, align 4
@TP_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_thread\00", align 1
@thread_generic_wrapper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__thread_create(i32* %0, i64 %1, i32 %2, i8* %3, i8* %4, i64 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca %struct.task_struct*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* @KM_PUSHPAGE, align 4
  %28 = call i8* @kmem_alloc(i32 56, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %20, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %31 = icmp eq %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  store i32* null, i32** %10, align 8
  br label %107

33:                                               ; preds = %9
  %34 = load i32, i32* @TP_MAGIC, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @KM_PUSHPAGE, align 4
  %46 = call i8* @kmem_alloc(i32 %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %56 = call i32 @kmem_free(%struct.TYPE_3__* %55, i32 56)
  store i32* null, i32** %10, align 8
  br label %107

57:                                               ; preds = %33
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strncpy(i32* %60, i8* %61, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @strstr(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %22, align 8
  %70 = load i8*, i8** %22, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i8*, i8** %22, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %57
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @thread_generic_wrapper, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %93 = bitcast %struct.TYPE_3__* %92 to i8*
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call %struct.task_struct* @spl_kthread_create(i32 %91, i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %96)
  store %struct.task_struct* %97, %struct.task_struct** %21, align 8
  %98 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  %99 = call i64 @IS_ERR(%struct.task_struct* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %75
  store i32* null, i32** %10, align 8
  br label %107

102:                                              ; preds = %75
  %103 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  %104 = call i32 @wake_up_process(%struct.task_struct* %103)
  %105 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  %106 = bitcast %struct.task_struct* %105 to i32*
  store i32* %106, i32** %10, align 8
  br label %107

107:                                              ; preds = %102, %101, %54, %32
  %108 = load i32*, i32** %10, align 8
  ret i32* %108
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i8* @strstr(i32*, i8*) #1

declare dso_local %struct.task_struct* @spl_kthread_create(i32, i8*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
