; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InsertOLEFromCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InsertOLEFromCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.re_object* }
%struct.re_object = type { i32 }

@MERF_GRAPHICS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_InsertOLEFromCursor(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.re_object*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32* @ME_GetInsertStyle(%struct.TYPE_14__* %12, i32 %13)
  store i32* %14, i32** %7, align 8
  store i8 32, i8* %9, align 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store %struct.re_object* null, %struct.re_object** %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i64 @ME_IsSelection(%struct.TYPE_14__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i32 @ME_DeleteSelection(%struct.TYPE_14__* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @MERF_GRAPHICS, align 4
  %26 = call %struct.TYPE_15__* @ME_InternalInsertTextFromCursor(%struct.TYPE_14__* %22, i32 %23, i8* %9, i32 1, i32* %24, i32 %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %8, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.re_object* @create_re_object(i32* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.re_object* %28, %struct.re_object** %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %10, align 8
  br label %34

34:                                               ; preds = %51, %21
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i64 @ME_PrevRun(i32* null, %struct.TYPE_15__** %10, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.re_object*, %struct.re_object** %42, align 8
  %44 = icmp ne %struct.re_object* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.re_object*, %struct.re_object** %49, align 8
  store %struct.re_object* %50, %struct.re_object** %11, align 8
  br label %52

51:                                               ; preds = %38
  br label %34

52:                                               ; preds = %45, %34
  %53 = load %struct.re_object*, %struct.re_object** %11, align 8
  %54 = icmp ne %struct.re_object* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.re_object*, %struct.re_object** %11, align 8
  %57 = getelementptr inbounds %struct.re_object, %struct.re_object* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.re_object*, %struct.re_object** %61, align 8
  %63 = getelementptr inbounds %struct.re_object, %struct.re_object* %62, i32 0, i32 0
  %64 = call i32 @list_add_after(i32* %57, i32* %63)
  br label %75

65:                                               ; preds = %52
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.re_object*, %struct.re_object** %71, align 8
  %73 = getelementptr inbounds %struct.re_object, %struct.re_object* %72, i32 0, i32 0
  %74 = call i32 @list_add_head(i32* %67, i32* %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @ME_ReleaseStyle(i32* %76)
  ret void
}

declare dso_local i32* @ME_GetInsertStyle(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ME_IsSelection(%struct.TYPE_14__*) #1

declare dso_local i32 @ME_DeleteSelection(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @ME_InternalInsertTextFromCursor(%struct.TYPE_14__*, i32, i8*, i32, i32*, i32) #1

declare dso_local %struct.re_object* @create_re_object(i32*) #1

declare dso_local i64 @ME_PrevRun(i32*, %struct.TYPE_15__**, i32) #1

declare dso_local i32 @list_add_after(i32*, i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @ME_ReleaseStyle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
