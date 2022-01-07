; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MovePageUp_ML.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MovePageUp_ML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i16, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i16, i16 }

@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @EDIT_MovePageUp_ML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MovePageUp_ML(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 4
  store i16 %13, i16* %5, align 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %6, align 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EF_AFTER_WRAP, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i16, i16* %6, align 2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_9__* %22, i16 signext %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @LOWORD(i32 %26)
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %9, align 2
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HIWORD(i32 %29)
  %31 = trunc i64 %30 to i16
  store i16 %31, i16* %10, align 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load i16, i16* %9, align 2
  %34 = load i16, i16* %10, align 2
  %35 = sext i16 %34 to i32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 4
  %40 = sext i16 %39 to i32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %40, %45
  %47 = sub nsw i32 %35, %46
  %48 = trunc i32 %47 to i16
  %49 = call signext i16 @EDIT_CharFromPos(%struct.TYPE_9__* %32, i16 signext %33, i16 signext %48, i32* %7)
  store i16 %49, i16* %6, align 2
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %2
  %53 = load i16, i16* %6, align 2
  store i16 %53, i16* %5, align 2
  br label %54

54:                                               ; preds = %52, %2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load i16, i16* %5, align 2
  %57 = load i16, i16* %6, align 2
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %55, i16 signext %56, i16 signext %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %60)
  ret void
}

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_9__*, i16 signext, i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local signext i16 @EDIT_CharFromPos(%struct.TYPE_9__*, i16 signext, i16 signext, i32*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_9__*, i16 signext, i16 signext, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
