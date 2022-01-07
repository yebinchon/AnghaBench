; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_asciimode2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_asciimode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_asciimode2.obuf = internal constant [516 x i8] c"00\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000000000000000000000000000000000000000000000000000000000000000\0A000000000000000000\0A1111111111111111111\00", align 16
@.str = private unnamed_addr constant [11 x i8] c"ascii2.tst\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"first char not 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"fread i %d != sizeof(ibuf)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ibuf != obuf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_asciimode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_asciimode2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  %4 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @fwrite(i8* getelementptr inbounds ([516 x i8], [516 x i8]* @test_asciimode2.obuf, i64 0, i64 0), i32 1, i32 516, i32* %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @fclose(i32* %7)
  %9 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @getc(i32* %10)
  %12 = icmp eq i32 %11, 48
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 4)
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @fread(i8* %17, i32 1, i32 4, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([516 x i8], [516 x i8]* @test_asciimode2.obuf, i64 0, i64 1), i32 4)
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = call i32 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
