; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_usrmarshal.c_debugstr_user_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_usrmarshal.c_debugstr_user_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"MSHCTX_LOCAL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"MSHCTX_NOSHAREDMEM\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"MSHCTX_DIFFERENTMACHINE\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MSHCTX_INPROC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"MAKELONG(%s, NDR_LOCAL_DATA_REPRESENTATION)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"MAKELONG(%s, 0x%04x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @debugstr_user_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugstr_user_flags(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [12 x i8], align 1
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @LOWORD(i32 %7)
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %10
    i32 131, label %11
    i32 130, label %12
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %20

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %20

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %20

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @LOWORD(i32 %16)
  %18 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %13, %12, %11, %10, %9
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @HIWORD(i32 %22)
  %24 = load i64, i64* @NDR_LOCAL_DATA_REPRESENTATION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %27)
  store i8* %28, i8** %2, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @HIWORD(i32 %32)
  %34 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %30, i64 %33)
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
