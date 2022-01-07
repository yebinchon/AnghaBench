; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_set_show_touches_enabled.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_set_show_touches_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"show_touches\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @set_show_touches_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_show_touches_enabled(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [6 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %5, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %16, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %21 = call i32 @ARRAY_LEN(i8** %20)
  %22 = call i32 @adb_execute(i8* %18, i8** %19, i32 %21)
  ret i32 %22
}

declare dso_local i32 @adb_execute(i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_LEN(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
