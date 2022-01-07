; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regdump.c_show_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regdump.c_show_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"\0Achoose test :\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  0 = Exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"  1 = %s\0A\00", align 1
@default_cmd_line1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"  2 = %s\0A\00", align 1
@default_cmd_line2 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"  3 = %s\0A\00", align 1
@default_cmd_line3 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"  4 = %s\0A\00", align 1
@default_cmd_line4 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"  5 = %s\0A\00", align 1
@default_cmd_line5 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"  6 = %s\0A\00", align 1
@default_cmd_line6 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"  7 = %s\0A\00", align 1
@default_cmd_line7 = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"  8 = %s\0A\00", align 1
@default_cmd_line8 = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"  9 = %s\0A\00", align 1
@default_cmd_line9 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_menu() #0 {
  %1 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @_tprintf(i32 %1)
  %3 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @_tprintf(i32 %3)
  %5 = load i8*, i8** @default_cmd_line1, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** @default_cmd_line2, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** @default_cmd_line3, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** @default_cmd_line4, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** @default_cmd_line5, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** @default_cmd_line6, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** @default_cmd_line7, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** @default_cmd_line8, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** @default_cmd_line9, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %21)
  ret void
}

declare dso_local i32 @_tprintf(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
