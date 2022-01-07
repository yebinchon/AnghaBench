; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fputc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"fputc(0,tempfh) expected %x got %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"fputc(0xff,tempfh) expected %x got %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"fputc(0xffffffff,tempfh) expected %x got %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"fputc(0,tempfh) on r/o file expected %x got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fputc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @fputc(i32 0, i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 0, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fputc(i32 255, i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 255, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 255, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @fputc(i32 -1, i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 255, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 255, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @fclose(i32* %28)
  %30 = load i8*, i8** %1, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @fputc(i32 0, i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @EOF, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @EOF, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @unlink(i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @free(i8* %45)
  ret void
}

declare dso_local i8* @_tempnam(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
