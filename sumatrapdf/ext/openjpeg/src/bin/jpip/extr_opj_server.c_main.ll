; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_server.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpip/extr_opj_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@QUIT_SIGNAL = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@FCGI_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error: JPIP request failed\0A\00", align 1
@FCGI_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"JPIP server terminated by a client request\0A\00", align 1
@initialisation_win32 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32* @init_JPIPserver(i32 60000, i32 0)
  store i32* %6, i32** %2, align 8
  br label %7

7:                                                ; preds = %49, %0
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %9 = load i32, i32* @stdin, align 4
  %10 = call i64 @fgets(i8* %8, i32 128, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 10
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %52

19:                                               ; preds = %17
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* @QUIT_SIGNAL, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %27 = call i32* @parse_querystring(i8* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @process_JPIPrequest(i32* %28, i32* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* @OPJ_TRUE, align 4
  %32 = load i32, i32* @OPJ_TRUE, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @OPJ_FALSE, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @local_log(i32 %31, i32 %32, i64 %33, i32 %34, i32* %35, i32* %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @send_responsedata(i32* %41, i32* %42)
  br label %49

44:                                               ; preds = %25
  %45 = load i32, i32* @FCGI_stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @FCGI_stdout, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @end_QRprocess(i32* %50, i32** %4)
  br label %7

52:                                               ; preds = %24, %17
  %53 = load i32, i32* @FCGI_stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @terminate_JPIPserver(i32** %2)
  ret i32 0
}

declare dso_local i32* @init_JPIPserver(i32, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @parse_querystring(i8*) #1

declare dso_local i64 @process_JPIPrequest(i32*, i32*) #1

declare dso_local i32 @local_log(i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @send_responsedata(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @end_QRprocess(i32*, i32**) #1

declare dso_local i32 @terminate_JPIPserver(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
