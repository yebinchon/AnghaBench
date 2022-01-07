; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_copy_or_cut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_copy_or_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }

@ES_READONLY = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64)* @copy_or_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_or_cut(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @ME_GetSelectionOfs(%struct.TYPE_8__* %11, i32* %7, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ES_READONLY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @MB_ICONERROR, align 4
  %30 = call i32 @MessageBeep(i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %3, align 8
  br label %58

32:                                               ; preds = %21, %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @ME_Copy(%struct.TYPE_8__* %36, i32* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %32
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i32 @ME_InternalDeleteText(%struct.TYPE_8__* %46, i32* %47, i32 %48, i64 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 @ME_CommitUndo(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @ME_UpdateRepaint(%struct.TYPE_8__* %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %42, %32
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %28
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @ME_GetSelectionOfs(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @MessageBeep(i32) #1

declare dso_local i64 @ME_Copy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ME_InternalDeleteText(%struct.TYPE_8__*, i32*, i32, i64) #1

declare dso_local i32 @ME_CommitUndo(%struct.TYPE_8__*) #1

declare dso_local i32 @ME_UpdateRepaint(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
