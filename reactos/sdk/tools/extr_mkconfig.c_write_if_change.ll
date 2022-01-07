; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/extr_mkconfig.c_write_if_change.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/extr_mkconfig.c_write_if_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to create output file\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to read data\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to write output file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_if_change(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %107

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fputs(i8* %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 0, i32* %3, align 4
  br label %107

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @SEEK_END, align 4
  %31 = call i32 @fseek(i32* %29, i32 0, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ftell(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @malloc(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fclose(i32* %41)
  store i32 1, i32* %3, align 4
  br label %107

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @fseek(i32* %44, i32 0, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @fread(i8* %47, i32 1, i32 %48, i32* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  store i32 1, i32* %3, align 4
  br label %107

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @memcmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @free(i8* %75)
  store i32 0, i32* %3, align 4
  br label %107

77:                                               ; preds = %66, %61
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %107

89:                                               ; preds = %77
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @fwrite(i8* %90, i32 1, i32 %92, i32* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @fclose(i32* %102)
  store i32 1, i32* %3, align 4
  br label %107

104:                                              ; preds = %89
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fclose(i32* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %99, %86, %72, %54, %38, %22, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
