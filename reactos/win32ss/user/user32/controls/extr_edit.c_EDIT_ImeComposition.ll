; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_ImeComposition.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_ImeComposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@empty_stringW = common dso_local global i32 0, align 4
@GCS_RESULTSTR = common dso_local global i32 0, align 4
@GCS_COMPSTR = common dso_local global i32 0, align 4
@GCS_CURSORPOS = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*)* @EDIT_ImeComposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_ImeComposition(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @empty_stringW, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_7__* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %21, %13, %3
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ImmGetContext(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %79

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GCS_RESULTSTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = call i32 @EDIT_GetResultStr(i32 %45, %struct.TYPE_7__* %46)
  store i32 0, i32* %8, align 4
  br label %62

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @GCS_COMPSTR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = call i32 @EDIT_GetCompositionStr(i32 %54, i32 %55, %struct.TYPE_7__* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GCS_CURSORPOS, align 4
  %61 = call i32 @ImmGetCompositionStringW(i32 %59, i32 %60, i32 0, i32 0)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %44
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ImmReleaseContext(i32 %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EF_AFTER_WRAP, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @EDIT_SetCaretPos(%struct.TYPE_7__* %66, i64 %72, i32 %77)
  br label %79

79:                                               ; preds = %62, %38
  ret void
}

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @ImmGetContext(i32) #1

declare dso_local i32 @EDIT_GetResultStr(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @EDIT_GetCompositionStr(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ImmGetCompositionStringW(i32, i32, i32, i32) #1

declare dso_local i32 @ImmReleaseContext(i32, i32) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
