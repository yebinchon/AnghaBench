; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_ctrlz.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_ctrlz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ctrlz.mytext = internal constant [19 x i8] c"This is test_ctrlz\00", align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"fgets failed unexpected\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"returned string length expected %d got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ftell expected %d got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"did not get EOF\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ctrlz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ctrlz() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_ctrlz.mytext, i64 0, i64 0), i32* %10)
  store i32 26, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @fputc(i32 %12, i32* %13)
  store i32 13, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @fputc(i32 %15, i32* %16)
  store i32 10, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @fputc(i32 %18, i32* %19)
  store i32 97, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @fputc(i32 %21, i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @fclose(i32* %24)
  %26 = load i8*, i8** %1, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %2, align 8
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @fgets(i8* %28, i32 256, i32* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %4, align 4
  %36 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_ctrlz.mytext, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @ftell(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @feof(i32* %55)
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i8*, i8** %1, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %61, i32** %2, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %63 = load i32*, i32** %2, align 8
  %64 = call i64 @fgets(i8* %62, i32 256, i32* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %4, align 4
  %70 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_ctrlz.mytext, i64 0, i64 0))
  %71 = add nsw i32 %70, 3
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @ftell(i32* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %86)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %89 = load i32*, i32** %2, align 8
  %90 = call i64 @fgets(i8* %88, i32 256, i32* %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @feof(i32* %101)
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = load i8*, i8** %1, align 8
  %107 = call i32 @unlink(i8* %106)
  %108 = load i8*, i8** %1, align 8
  %109 = call i32 @free(i8* %108)
  ret void
}

declare dso_local i8* @_tempnam(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
