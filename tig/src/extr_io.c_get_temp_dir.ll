; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_get_temp_dir.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_get_temp_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_temp_dir.tmp = internal global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_temp_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @get_temp_dir.tmp, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @get_temp_dir.tmp, align 8
  store i8* %5, i8** %1, align 8
  br label %27

6:                                                ; preds = %0
  %7 = load i8*, i8** @get_temp_dir.tmp, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** @get_temp_dir.tmp, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8*, i8** @get_temp_dir.tmp, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** @get_temp_dir.tmp, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** @get_temp_dir.tmp, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** @get_temp_dir.tmp, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** @get_temp_dir.tmp, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** @get_temp_dir.tmp, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i8*, i8** @get_temp_dir.tmp, align 8
  store i8* %26, i8** %1, align 8
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i8*, i8** %1, align 8
  ret i8* %28
}

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
