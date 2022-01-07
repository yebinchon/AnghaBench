; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_readboundary.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_readboundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"boundary.tst\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"CRLF on buffer boundary failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_readboundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readboundary() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [513 x i8], align 16
  %3 = alloca [513 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 511
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 94
  %12 = add nsw i32 %11, 32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 %16
  store i8 %14, i8* %17, align 1
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %6
  %22 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 511
  store i8 10, i8* %22, align 1
  %23 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 512
  store i8 0, i8* %23, align 16
  %24 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %1, align 8
  %25 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @fwrite(i8* %25, i32 512, i32 1, i32* %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @fclose(i32* %28)
  %30 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %1, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %43, %21
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 512
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i32 @fseek(i32* %35, i32 0, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call signext i8 @fgetc(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [513 x i8], [513 x i8]* %3, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %31

46:                                               ; preds = %31
  %47 = getelementptr inbounds [513 x i8], [513 x i8]* %3, i64 0, i64 512
  store i8 0, i8* %47, align 16
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = call i32 @unlink(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i64 0, i64 0
  %52 = getelementptr inbounds [513 x i8], [513 x i8]* %3, i64 0, i64 0
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local signext i8 @fgetc(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
