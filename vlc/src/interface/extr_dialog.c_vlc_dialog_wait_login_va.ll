; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_wait_login_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_wait_login_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dialog_answer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_DIALOG_LOGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_dialog_wait_login_va(i32* %0, i8** %1, i8** %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dialog_answer, align 8
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %8
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8**, i8*** %12, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %8
  %37 = phi i1 [ false, %30 ], [ false, %27 ], [ false, %24 ], [ false, %8 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @get_dialog_provider(i32* %40, i32 1)
  store i32* %41, i32** %18, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %9, align 4
  br label %92

46:                                               ; preds = %36
  %47 = load i32*, i32** %18, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @dialog_display_login_va(i32* %47, i32** %19, i8* %48, i32 %51, i8* %52, i8* %53, i32 %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32*, i32** %19, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %46
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %9, align 4
  br label %92

63:                                               ; preds = %58
  %64 = load i32*, i32** %18, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* @VLC_DIALOG_LOGIN, align 4
  %67 = call i32 @dialog_wait(i32* %64, i32* %65, i32 %66, %struct.dialog_answer* %21)
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %9, align 4
  br label %92

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %12, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.dialog_answer, %struct.dialog_answer* %21, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %72
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %70, %61, %44
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_dialog_provider(i32*, i32) #1

declare dso_local i32 @dialog_display_login_va(i32*, i32**, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dialog_wait(i32*, i32*, i32, %struct.dialog_answer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
