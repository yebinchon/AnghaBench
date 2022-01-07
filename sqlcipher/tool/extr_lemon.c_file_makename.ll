; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_file_makename.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_file_makename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i8* }

@outputDir = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't allocate space for a filename.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @file_makename(%struct.lemon* %0, i8* %1) #0 {
  %3 = alloca %struct.lemon*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.lemon*, %struct.lemon** %3, align 8
  %10 = getelementptr inbounds %struct.lemon, %struct.lemon* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** @outputDir, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @lemonStrlen(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @lemonStrlen(i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** @outputDir, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i8*, i8** @outputDir, align 8
  %34 = call i32 @lemonStrlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 5
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** @outputDir, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** @outputDir, align 8
  %58 = call i32 @lemon_strcpy(i8* %56, i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @lemon_strcat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @lemon_strcat(i8* %62, i8* %63)
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @strrchr(i8* %65, i8 signext 46)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @lemon_strcat(i8* %72, i8* %73)
  %75 = load i8*, i8** %5, align 8
  ret i8* %75
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @lemonStrlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lemon_strcpy(i8*, i8*) #1

declare dso_local i32 @lemon_strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
