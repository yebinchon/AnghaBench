; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_wait_question_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_wait_question_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dialog_answer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_DIALOG_QUESTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_dialog_wait_question_va(i32* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dialog_answer, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %8
  %25 = load i8*, i8** %16, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br label %33

33:                                               ; preds = %30, %27, %24, %8
  %34 = phi i1 [ false, %27 ], [ false, %24 ], [ false, %8 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @get_dialog_provider(i32* %37, i32 1)
  store i32* %38, i32** %18, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %9, align 4
  br label %88

43:                                               ; preds = %33
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @dialog_display_question_va(i32* %44, i32** %19, i32 %45, i8* %46, i8* %47, i8* %48, i8* %49, i8* %50, i32 %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load i32*, i32** %19, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %43
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %9, align 4
  br label %88

60:                                               ; preds = %55
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* @VLC_DIALOG_QUESTION, align 4
  %64 = call i32 @dialog_wait(i32* %61, i32* %62, i32 %63, %struct.dialog_answer* %21)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %9, align 4
  br label %88

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %75, %69
  %84 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %81, %67, %58, %41
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_dialog_provider(i32*, i32) #1

declare dso_local i32 @dialog_display_question_va(i32*, i32**, i32, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dialog_wait(i32*, i32*, i32, %struct.dialog_answer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
