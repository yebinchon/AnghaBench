; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fgetc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"First fgetc expected %x got %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Second fgetc expected %x got %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Unbuffered fgetc in text mode must failed on \\r\\n\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fgetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fgetc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 224, i32* %3, align 4
  %5 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @fputc(i8 signext %9, i32* %10)
  %12 = load i32, i32* %3, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fputc(i8 signext %13, i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @rewind(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @fgetc(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @fgetc(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i8*, i8** %1, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %39, i32** %2, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @fputc(i8 signext 10, i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i8*, i8** %1, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %45, i32** %2, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @setbuf(i32* %46, i32* null)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @fgetc(i32* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @unlink(i8* %56)
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @free(i8* %58)
  ret void
}

declare dso_local i8* @_tempnam(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @setbuf(i32*, i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
