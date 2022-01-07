; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_command.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32, i8* }

@test_command.command_test = internal constant [13 x %struct.anon] [%struct.anon { i64 129, i32 131, i8* null }, %struct.anon { i64 129, i32 131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i64 128, i32 130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i64 128, i32 130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i64 129, i32 132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i64 128, i32 130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HELO\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SIZE \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" SIZE\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SIZE /welcome.msg /welcome.msg\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SIZE  /welcome.msg\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"SIZE /welcome.msg \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SIZE\09/welcome.msg\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SIZE /welcome.msg\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"PWD /welcome.msg\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@FTP_TRANSFER_TYPE_ASCII = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"%d: expected FtpCommandA to %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"succeed\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%d: expected error %u, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_command(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %7, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 13
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @test_command.command_test, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @pFtpCommandA(i32 %14, i32 129, i32 %15, i8* %20, i32 0, i32* null)
  store i64 %21, i64* %5, align 8
  %22 = call i32 (...) @GetLastError()
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @test_command.command_test, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @test_command.command_test, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %40 = call i32 (i32, i8*, i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %31, i8* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @test_command.command_test, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %41, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @test_command.command_test, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %49, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %12
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %8

62:                                               ; preds = %8
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pFtpCommandA(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
