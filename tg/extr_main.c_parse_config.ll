; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disable_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"libconfig not enabled\0A\00", align 1
@downloads_directory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@CONFIG_DIRECTORY = common dso_local global i32 0, align 4
@DOWNLOADS_DIRECTORY = common dso_local global i32 0, align 4
@binlog_enabled = common dso_local global i64 0, align 8
@binlog_file_name = common dso_local global i8* null, align 8
@BINLOG_FILE = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@auth_file_name = common dso_local global i8* null, align 8
@AUTH_KEY_FILE = common dso_local global i32 0, align 4
@state_file_name = common dso_local global i8* null, align 8
@STATE_FILE = common dso_local global i32 0, align 4
@secret_chat_file_name = common dso_local global i8* null, align 8
@SECRET_CHAT_FILE = common dso_local global i32 0, align 4
@CONFIG_DIRECTORY_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"[%s] created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_config() #0 {
  %1 = load i32, i32* @disable_output, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @get_home_directory()
  %7 = load i32, i32* @CONFIG_DIRECTORY, align 4
  %8 = load i32, i32* @DOWNLOADS_DIRECTORY, align 4
  %9 = call i32 @tasprintf(i8** @downloads_directory, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  %10 = load i64, i64* @binlog_enabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = call i32 (...) @get_home_directory()
  %14 = load i32, i32* @CONFIG_DIRECTORY, align 4
  %15 = load i32, i32* @BINLOG_FILE, align 4
  %16 = call i32 @tasprintf(i8** @binlog_file_name, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @TLS, align 4
  %18 = call i32 @tgl_set_binlog_mode(i32 %17, i32 1)
  %19 = load i32, i32* @TLS, align 4
  %20 = load i8*, i8** @binlog_file_name, align 8
  %21 = call i32 @tgl_set_binlog_path(i32 %19, i8* %20)
  br label %37

22:                                               ; preds = %5
  %23 = load i32, i32* @TLS, align 4
  %24 = call i32 @tgl_set_binlog_mode(i32 %23, i32 0)
  %25 = call i32 (...) @get_home_directory()
  %26 = load i32, i32* @CONFIG_DIRECTORY, align 4
  %27 = load i32, i32* @AUTH_KEY_FILE, align 4
  %28 = call i32 @tasprintf(i8** @auth_file_name, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @get_home_directory()
  %30 = load i32, i32* @CONFIG_DIRECTORY, align 4
  %31 = load i32, i32* @STATE_FILE, align 4
  %32 = call i32 @tasprintf(i8** @state_file_name, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = call i32 (...) @get_home_directory()
  %34 = load i32, i32* @CONFIG_DIRECTORY, align 4
  %35 = load i32, i32* @SECRET_CHAT_FILE, align 4
  %36 = call i32 @tasprintf(i8** @secret_chat_file_name, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %12
  %38 = load i32, i32* @TLS, align 4
  %39 = load i8*, i8** @downloads_directory, align 8
  %40 = call i32 @tgl_set_download_directory(i32 %38, i8* %39)
  %41 = load i8*, i8** @downloads_directory, align 8
  %42 = load i32, i32* @CONFIG_DIRECTORY_MODE, align 4
  %43 = call i32 @mkdir(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @disable_output, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @downloads_directory, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tasprintf(i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @get_home_directory(...) #1

declare dso_local i32 @tgl_set_binlog_mode(i32, i32) #1

declare dso_local i32 @tgl_set_binlog_path(i32, i8*) #1

declare dso_local i32 @tgl_set_download_directory(i32, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
