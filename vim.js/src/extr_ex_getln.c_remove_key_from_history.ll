; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_remove_key_from_history.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_remove_key_from_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@hisidx = common dso_local global i32* null, align 8
@HIST_CMD = common dso_local global i64 0, align 8
@history = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_key_from_history() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @hisidx, align 8
  %4 = load i64, i64* @HIST_CMD, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %104

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @history, align 8
  %12 = load i64, i64* @HIST_CMD, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %104

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %100, %22
  %24 = load i8*, i8** %1, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %103

27:                                               ; preds = %23
  %28 = load i8*, i8** %1, align 8
  %29 = call i64 @STRNCMP(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isalpha(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %99, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %1, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = call i8* @vim_strchr(i8* %39, i8 signext 61)
  store i8* %40, i8** %1, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %103

44:                                               ; preds = %37
  %45 = load i8*, i8** %1, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %87, %44
  %48 = load i8*, i8** %1, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i8*, i8** %1, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @vim_iswhite(i8 signext %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %55, %47
  %65 = phi i1 [ false, %47 ], [ %63, %55 ]
  br i1 %65, label %66, label %90

66:                                               ; preds = %64
  %67 = load i8*, i8** %1, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 92
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load i8*, i8** %1, align 8
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %74, %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %47

90:                                               ; preds = %64
  %91 = load i8*, i8** %1, align 8
  %92 = load i8*, i8** %1, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i32 @STRMOVE(i8* %91, i8* %95)
  %97 = load i8*, i8** %1, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %1, align 8
  br label %99

99:                                               ; preds = %90, %31, %27
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %1, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %1, align 8
  br label %23

103:                                              ; preds = %43, %23
  br label %104

104:                                              ; preds = %9, %103, %10
  ret void
}

declare dso_local i64 @STRNCMP(i8*, i8*, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i8* @vim_strchr(i8*, i8 signext) #1

declare dso_local i32 @vim_iswhite(i8 signext) #1

declare dso_local i32 @STRMOVE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
