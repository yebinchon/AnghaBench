; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fputwc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fputwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"fputwc returned %x, expected 'a'\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fputwc returned %x, expected '\\n'\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"fread returned %d, expected 3\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"a\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"incorrect file data\0A\00", align 1
@p_fopen_s = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"w,ccs=unicode\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"fread returned %d, expected 8\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\FF\FEa\00\0D\00\0A\00\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"w,ccs=utf-8\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"fread returned %d, expected 6\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\EF\BB\BFa\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"fputwc tests on unicode files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fputwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fputwc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 @GetTempPathA(i32 %14, i8* %10)
  %16 = call i32 @GetTempFileNameA(i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i8* %13)
  %17 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fputwc(i8 signext 97, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 97
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @fputwc(i8 signext 10, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 10
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %34, i32** %4, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fread(i8* %35, i32 1, i32 1024, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 3
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = call i32 @memcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i64, i64* @p_fopen_s, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %0
  %54 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputwc(i8 signext 97, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 97
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @fputwc(i8 signext 10, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 10
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %71, i32** %4, align 8
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @fread(i8* %72, i32 1, i32 1024, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 8
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %81 = call i32 @memcmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i32* %88, i32** %4, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @fputwc(i8 signext 97, i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 97
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @fputwc(i8 signext 10, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 10
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @fclose(i32* %103)
  %105 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %105, i32** %4, align 8
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @fread(i8* %106, i32 1, i32 1024, i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 6
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %115 = call i32 @memcmp(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @fclose(i32* %120)
  br label %124

122:                                              ; preds = %0
  %123 = call i32 @win_skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %53
  %125 = call i32 @_unlink(i8* %13)
  %126 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %126)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fputwc(i8 signext, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @_unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
