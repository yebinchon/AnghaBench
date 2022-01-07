; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fflush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fflush.obuf = internal constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00", align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't open test file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"expected 0, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Got unexpected data (%c)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unexpected ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fflush() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca [24 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @test_fflush.obuf, i64 0, i64 0), i32 1, i32 66, i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fclose(i32* %15)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fread(i8* %23, i32 1, i32 16, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @_fileno(i32* %26)
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @_lseek(i32 %27, i32 0, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fflush(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i8 signext 63, i32 24)
  %39 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fread(i8* %39, i32 1, i32 24, i32* %40)
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %43 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %44 = call i64 @memcmp(i8* %42, i8* %43, i32 16)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = sext i8 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @_fileno(i32* %51)
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i32 @_lseek(i32 %52, i32 0, i32 %53)
  %55 = call i32 @fflush(i32* null)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %62 = call i32 @memset(i8* %61, i8 signext 63, i32 24)
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @fread(i8* %63, i32 1, i32 24, i32* %64)
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %67 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %68 = call i64 @memcmp(i8* %66, i8* %67, i32 16)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @_fileno(i32* %75)
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @_lseek(i32 %76, i32 0, i32 %77)
  %79 = call i32 (...) @_flushall()
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %86 = call i32 @memset(i8* %85, i8 signext 63, i32 24)
  %87 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fread(i8* %87, i32 1, i32 24, i32* %88)
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %91 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %92 = call i64 @memcmp(i8* %90, i8* %91, i32 16)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %96 = load i8, i8* %95, align 16
  %97 = sext i8 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @fclose(i32* %99)
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @unlink(i8* %101)
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @free(i8* %103)
  ret void
}

declare dso_local i8* @_tempnam(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @_lseek(i32, i32, i32) #1

declare dso_local i32 @_fileno(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @_flushall(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
