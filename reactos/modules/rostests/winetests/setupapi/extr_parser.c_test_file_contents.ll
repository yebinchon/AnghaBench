; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_file_contents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmpfilename = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"write error\0A\00", align 1
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @test_file_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_file_contents(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @tmpfilename, align 4
  %9 = load i32, i32* @GENERIC_READ, align 4
  %10 = load i32, i32* @GENERIC_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FILE_SHARE_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CREATE_ALWAYS, align 4
  %16 = call i64 @CreateFileA(i32 %8, i32 %11, i32 %14, i32* null, i32 %15, i32 0, i32 0)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @WriteFile(i64 %22, i8* %23, i32 %25, i32* %6, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  %33 = load i32, i32* @tmpfilename, align 4
  %34 = load i32, i32* @INF_STYLE_WIN4, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @SetupOpenInfFileA(i32 %33, i32 0, i32 %34, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @SetupOpenInfFileA(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
