; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_screenmode.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_screenmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mch_screenmode.names = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"BW40\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"C40\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"BW80\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"C80\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"C4350\00", align 1
@mch_screenmode.modes = internal global [6 x i32] [i32 133, i32 131, i32 132, i32 129, i32 128, i32 130], align 16
@.str.6 = private unnamed_addr constant [30 x i8] c"E362: Unsupported screen mode\00", align 1
@FAIL = common dso_local global i32 0, align 4
@T_ME = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@mouse_x_div = common dso_local global i32 0, align 4
@mouse_y_div = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_screenmode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @VIM_ISDIGIT(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %4, align 4
  br label %38

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 6
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* @mch_screenmode.names, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i64 @stricmp(i8* %23, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* @mch_screenmode.modes, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %28, %15
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @EMSG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* @FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @textmode(i32 %45)
  %47 = load i32, i32* @T_ME, align 4
  %48 = call i32 @out_str(i32 %47)
  %49 = load i32, i32* @OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @VIM_ISDIGIT(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @stricmp(i8*, i8*) #1

declare dso_local i32 @EMSG(i8*) #1

declare dso_local i32 @textmode(i32) #1

declare dso_local i32 @out_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
