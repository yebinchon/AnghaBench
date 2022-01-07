; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_terminal_execute.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_terminal_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.terminal_execute.fname = private unnamed_addr constant [19 x i8] c"/tmp/swaynagXXXXXX\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create temp script\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Created temp script: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"#!/bin/sh\0Arm %s\0A%s\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" -e \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s -e %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to run command, execl() returned.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @terminal_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terminal_execute(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [19 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast [19 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.terminal_execute.fname, i32 0, i32 0), i64 19, i1 false)
  %10 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %11 = call i32 @mkstemp(i8* %10)
  %12 = call i32* @fdopen(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @SWAY_ERROR, align 4
  %17 = call i32 (i32, i8*, ...) @sway_log(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load i32, i32* @SWAY_DEBUG, align 4
  %20 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %21 = call i32 (i32, i8*, ...) @sway_log(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @S_IXUSR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @chmod(i8* %28, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %38 = add nsw i32 %36, %37
  %39 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %38, %40
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 1, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %51, i32* null)
  %53 = load i32, i32* @SWAY_ERROR, align 4
  %54 = call i32 @sway_log_errno(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @free(i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %18, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @sway_log(i32, i8*, ...) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @chmod(i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @sway_log_errno(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
