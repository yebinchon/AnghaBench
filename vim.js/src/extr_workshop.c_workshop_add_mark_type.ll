; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_add_mark_type.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_add_mark_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [24 x i8] c"highlight WS%s guibg=%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"linehl=WS%s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"sign define %d %s icon=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_add_mark_type(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @gettail(i32* %23)
  %25 = call i32 @STRCPY(i8* %15, i32 %24)
  %26 = call i8* @strrchr(i8* %15, i8 signext 46)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i8, i8* @NUL, align 1
  %31 = load i8*, i8** %11, align 8
  store i8 %30, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %3
  %33 = getelementptr inbounds i8, i8* %15, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %15, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @NUL, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = trunc i64 %20 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %21, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %54)
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @coloncmd(i8* %21, i32 %56)
  %58 = trunc i64 %17 to i32
  %59 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %18, i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %63

60:                                               ; preds = %47, %44
  %61 = load i8, i8* @NUL, align 1
  %62 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %61, i8* %62, align 16
  br label %63

63:                                               ; preds = %60, %52
  %64 = trunc i64 %20 to i32
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %21, i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8* %18, i8* %66)
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @coloncmd(i8* %21, i32 %68)
  br label %70

70:                                               ; preds = %63, %37, %32
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STRCPY(i8*, i32) #2

declare dso_local i32 @gettail(i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @coloncmd(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
