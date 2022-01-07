; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"little CMS ICC white point utility - v3 [LittleCMS %2.2f]\0A\00", align 1
@LCMS_VERSION = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"usage: wtpt [flags] [<ICC profile>]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"flags:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%cl - CIE Lab\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%cc - CIE LCh\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%cx - Don't show XYZ\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\0AIf no parameters are given, then this program will\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"ask for XYZ value of media white. If parameter given, it must be\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"the profile to inspect.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [246 x i8] c"This program is intended to be a demo of the little cms\0Aengine. Both lcms and this program are freeware. You can\0Aobtain both in source code at http://www.littlecms.com\0AFor suggestions, comments, bug reports etc. send mail to\0Ainfo@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load double, double* @LCMS_VERSION, align 8
  %3 = fdiv double %2, 1.000000e+03
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), double %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @SW, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @SW, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @SW, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
