; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_p.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"00123ABC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%#p\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0X00123ABC\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%#012p\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  0X00123ABC\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%9p\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" 00123ABC\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%09p\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"% 9p\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%-9p\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"00123ABC \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%4p\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%9.4p\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%I64p\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"123ABC456789\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%hp\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"00003ABC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_p() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %3 = call i32 @sprintf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %5 = call i32 @ok_str(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %9 = call i32 @ok_str(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %11 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %13 = call i32 @ok_str(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %15 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %17 = call i32 @ok_str(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %19 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %21 = call i32 @ok_str(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %23 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %25 = call i32 @ok_str(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %29 = call i32 @ok_str(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %33 = call i32 @ok_str(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 ptrtoint (i8* inttoptr (i64 1194684 to i8*) to i32))
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %37 = call i32 @ok_str(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 -1136302199)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %41 = call i32 @ok_str(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %43 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 1194684)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %45 = call i32 @ok_str(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ok_str(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
