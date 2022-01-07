; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_install_app.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_install_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Classes\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"OpenWithProgids\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".xps\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".epub\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".fb2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"MuPDF\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SupportedTypes\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\22%s\22 \22%%1\22\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"FriendlyAppName\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @install_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_app(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %19 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OPEN_KEY(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @OPEN_KEY(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @OPEN_KEY(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @OPEN_KEY(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @OPEN_KEY(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @OPEN_KEY(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @OPEN_KEY(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @OPEN_KEY(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @OPEN_KEY(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @OPEN_KEY(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @OPEN_KEY(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @OPEN_KEY(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @OPEN_KEY(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @OPEN_KEY(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @OPEN_KEY(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @SET_KEY(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32, i32* %13, align 4
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %71 = call i32 @SET_KEY(i32 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @SET_KEY(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @SET_KEY(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @SET_KEY(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @SET_KEY(i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @SET_KEY(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @SET_KEY(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @SET_KEY(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @RegCloseKey(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @RegCloseKey(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @RegCloseKey(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @RegCloseKey(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @RegCloseKey(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @RegCloseKey(i32 %98)
  ret void
}

declare dso_local i32 @OPEN_KEY(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @SET_KEY(i32, i8*, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
