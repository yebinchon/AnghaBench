; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_open_jp2file.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_open_jp2file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Original JP2 %s not found\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Original JP2 %s broken (fseek error)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Original JP2 %s broken (read error)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"jP  \0D\0A\87\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"No JPEG 2000 Signature box in target %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @open_jp2file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32* null, i32** %2, align 8
  br label %79

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @fseek(i32* %14, i32 0, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fclose(i32* %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i32* null, i32** %2, align 8
  br label %79

24:                                               ; preds = %13
  %25 = call i64 @malloc(i32 12)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @fread(i8* %27, i32 12, i32 1, i32* %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  store i32* null, i32** %2, align 8
  br label %79

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 12
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %56, %50, %44, %39
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i32* null, i32** %2, align 8
  br label %79

75:                                               ; preds = %62
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32*, i32** %4, align 8
  store i32* %78, i32** %2, align 8
  br label %79

79:                                               ; preds = %75, %67, %31, %18, %9
  %80 = load i32*, i32** %2, align 8
  ret i32* %80
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
