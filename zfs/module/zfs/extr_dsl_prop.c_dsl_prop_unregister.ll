; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_unregister.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__*, i32*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32 }

@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_prop_unregister(%struct.TYPE_14__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = call i32 @mutex_enter(i32* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = call %struct.TYPE_12__* @list_head(i32* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  br label %21

21:                                               ; preds = %53, %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = icmp eq %struct.TYPE_14__* %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i32 %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %58

52:                                               ; preds = %42, %36, %30, %24
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = call %struct.TYPE_12__* @list_next(i32* %55, %struct.TYPE_12__* %56)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %11, align 8
  br label %21

58:                                               ; preds = %51, %21
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = icmp eq %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = call i32 @mutex_exit(i32* %63)
  %65 = load i32, i32* @ENOMSG, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %83

67:                                               ; preds = %58
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %71 = call i32 @list_remove(i32* %69, %struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = call i32 @list_remove(i32* %75, %struct.TYPE_12__* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = call i32 @mutex_exit(i32* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = call i32 @kmem_free(%struct.TYPE_12__* %81, i32 32)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %67, %61
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_12__* @list_head(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @list_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
