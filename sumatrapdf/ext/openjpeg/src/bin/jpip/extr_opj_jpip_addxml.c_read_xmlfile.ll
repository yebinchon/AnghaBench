; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_read_xmlfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_jpip_addxml.c_read_xmlfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"XML file %s not found\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"XML file %s broken (seek error)\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"XML file %s broken (read error)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_xmlfile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i8* null, i8** %3, align 8
  br label %76

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fclose(i32* %24)
  store i8* null, i8** %3, align 8
  br label %76

26:                                               ; preds = %15
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ftell(i32* %27)
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %30 = icmp eq i64 %28, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fclose(i32* %35)
  store i8* null, i8** %3, align 8
  br label %76

37:                                               ; preds = %26
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @fseek(i32* %43, i32 0, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @fclose(i32* %51)
  store i8* null, i8** %3, align 8
  br label %76

53:                                               ; preds = %37
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @malloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @fread(i8* %58, i64 %60, i32 1, i32* %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @fclose(i32* %70)
  store i8* null, i8** %3, align 8
  br label %76

72:                                               ; preds = %53
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %72, %64, %47, %31, %20, %11
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
