; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_Generate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_Generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dib%ugen.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error opening output file\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"/* This is a generated file. Please do not edit */\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"#include <win32k.h>\0A\00", align 1
@ROPCODE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @Generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Generate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add nsw i32 %10, 12
  %12 = call i8* @malloc(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* null, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcpy(i8* %20, i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 47, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %44, i32** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = icmp eq i32* null, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %35
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @MARK(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @Output(i32* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @Output(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @Output(i32* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @CreateShiftTables(i32* %61)
  %63 = load i32, i32* @ROPCODE_GENERIC, align 4
  %64 = call i32* @FindRopInfo(i32 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @CreatePrimitive(i32* %65, i32 %66, i32* %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %83, %52
  %70 = load i32, i32* %6, align 4
  %71 = icmp ult i32 %70, 256
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = call i32* @FindRopInfo(i32 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* null, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @CreatePrimitive(i32* %78, i32 %79, i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @CreateTable(i32* %87, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @CreateBitBlt(i32* %90, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @fclose(i32* %93)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*) #1

declare dso_local i32 @CreateShiftTables(i32*) #1

declare dso_local i32* @FindRopInfo(i32) #1

declare dso_local i32 @CreatePrimitive(i32*, i32, i32*) #1

declare dso_local i32 @CreateTable(i32*, i32) #1

declare dso_local i32 @CreateBitBlt(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
