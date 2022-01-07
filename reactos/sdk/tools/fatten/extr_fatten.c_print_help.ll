; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/extr_fatten.c_print_help.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/extr_fatten.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Syntax: %s image_file [list of commands]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Commands:\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"    -format <sectors> [<custom header label>]\0A            Formats the disk image.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"    -boot <sector file>\0A            Writes a new boot sector.\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"    -add <src path> <dst path>\0A            Copies an external file or directory into the image.\0A\00", align 1
@.str.6 = private unnamed_addr constant [138 x i8] c"    -extract <src path> <dst path>\0A            Copies a file or directory from the image into an external file\0A            or directory.\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"    -move <src path> <new path>\0A            Moves/renames a file or directory.\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"    -copy <src path> <new path>\0A            Copies a file or directory.\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"    -mkdir <src path> <new path>\0A            Creates a directory.\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"    -rmdir <src path> <new path>\0A            Creates a directory.\0A\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"    -list [<pattern>]\0A            Lists files a directory (defaults to root).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
