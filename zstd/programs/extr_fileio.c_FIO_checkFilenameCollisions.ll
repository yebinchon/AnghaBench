; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_checkFilenameCollisions.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_checkFilenameCollisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Unable to malloc new str array, not checking for name collisions\0A\00", align 1
@UTIL_compareStr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: Two files have same filename: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FIO_checkFilenameCollisions(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8**
  store i8** %16, i8*** %6, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i8* @strrchr(i8* %31, i8 signext %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %43, i8** %47, align 8
  br label %55

48:                                               ; preds = %26
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %48, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load i8**, i8*** %6, align 8
  %61 = bitcast i8** %60 to i8*
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @UTIL_compareStr, align 4
  %64 = call i32 @qsort(i8* %61, i32 %62, i32 8, i32 %63)
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %90, %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %73, i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %72
  %85 = load i8**, i8*** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load i8**, i8*** %6, align 8
  %95 = bitcast i8** %94 to i8*
  %96 = call i32 @free(i8* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
