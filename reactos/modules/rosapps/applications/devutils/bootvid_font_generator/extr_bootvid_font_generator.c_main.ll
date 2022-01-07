; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/bootvid_font_generator/extr_bootvid_font_generator.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [159 x i8] c"Usage: %s \22font name\22 [font size] [X-offset] [Y-offset]\0ADefault font name is: \22%s\22\0ADefault font size is: %i\0ADefault X-offset  is: %i\0ADefault Y-offset  is: %i\0A\00", align 1
@FONT_NAME_DEF = common dso_local global i8* null, align 8
@FONT_SIZE_DEF = common dso_local global i32 0, align 4
@X_OFFSET_DEF = common dso_local global i32 0, align 4
@Y_OFFSET_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 5
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @stdout, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** @FONT_NAME_DEF, align 8
  %23 = load i32, i32* @FONT_SIZE_DEF, align 4
  %24 = load i32, i32* @X_OFFSET_DEF, align 4
  %25 = load i32, i32* @Y_OFFSET_DEF, align 4
  %26 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22, i32 %23, i32 %24, i32 %25)
  store i32 -1, i32* %3, align 4
  br label %72

27:                                               ; preds = %11, %8
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** @FONT_NAME_DEF, align 8
  br label %36

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i8* [ %31, %30 ], [ %35, %32 ]
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @FONT_SIZE_DEF, align 4
  br label %47

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @atoi(i8* %45)
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  %49 = load i32, i32* %4, align 4
  %50 = icmp sle i32 %49, 3
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @X_OFFSET_DEF, align 4
  br label %58

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56)
  br label %58

58:                                               ; preds = %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %53 ]
  %60 = load i32, i32* %4, align 4
  %61 = icmp sle i32 %60, 4
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @Y_OFFSET_DEF, align 4
  br label %69

64:                                               ; preds = %58
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67)
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i32 [ %63, %62 ], [ %68, %64 ]
  %71 = call i32 @DumpFont(i8* %37, i32 %48, i32 %59, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @DumpFont(i8*, i32, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
