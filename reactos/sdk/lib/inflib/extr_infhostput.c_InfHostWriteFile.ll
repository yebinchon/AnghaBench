; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infhostput.c_InfHostWriteFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infhostput.c_InfHostWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fopen() failed (errno %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fopen() successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fwrite() failed (errno %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfHostWriteFile(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @InfpBuildFileBuffer(i32 %13, i32** %8, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @INF_SUCCESS(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* null, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @FREE(i32* %26)
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %4, align 4
  br label %59

30:                                               ; preds = %20
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* null, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 0, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %34, %30
  %41 = load i64, i64* %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @fwrite(i32* %42, i64 1, i64 %43, i32* %44)
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @FREE(i32* %52)
  store i32 -1, i32* %4, align 4
  br label %59

54:                                               ; preds = %40
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @FREE(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %47, %25, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @InfpBuildFileBuffer(i32, i32**, i64*) #1

declare dso_local i32 @INF_SUCCESS(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @FREE(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @fwrite(i32*, i64, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
