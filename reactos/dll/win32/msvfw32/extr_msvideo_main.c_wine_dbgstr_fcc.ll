; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msvfw32/extr_msvideo_main.c_wine_dbgstr_fcc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msvfw32/extr_msvideo_main.c_wine_dbgstr_fcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @wine_dbgstr_fcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wine_dbgstr_fcc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i8], align 1
  store i8* %0, i8** %3, align 8
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @fourcc_to_string(i8* %5, i8* %6)
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @isalnum(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isalnum(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isalnum(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isalnum(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %35 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i8* %35, i8** %2, align 8
  br label %39

36:                                               ; preds = %28, %18, %13, %1
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @fourcc_to_string(i8*, i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
