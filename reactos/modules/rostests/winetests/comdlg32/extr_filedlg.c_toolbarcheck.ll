; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_filedlg.c_toolbarcheck.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_filedlg.c_toolbarcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GW_CHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Toolbar\00", align 1
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not get the toolbar control\0A\00", align 1
@TB_ADDSTRINGA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"winetestwinetest\00\00\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"addstring returned %d (expected 0)\0A\00", align 1
@TB_GETTEXTROWS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Get(Max)TextRows returned %d (expected 0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @toolbarcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toolbarcheck(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [20 x i8], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @GW_CHILD, align 4
  %9 = call i32* @GetWindow(i32* %7, i32 %8)
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %16 = call i32 @GetClassNameA(i32* %14, i8* %15, i32 10)
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 7
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @GW_HWNDNEXT, align 4
  %26 = call i32* @GetWindow(i32* %24, i32 %25)
  store i32* %26, i32** %4, align 8
  br label %10

27:                                               ; preds = %21, %10
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @TB_ADDSTRINGA, align 4
  %34 = call i8* @SendMessageA(i32* %32, i32 %33, i32 0, i32 ptrtoint ([19 x i8]* @.str.2 to i32))
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @TB_GETTEXTROWS, align 4
  %43 = call i8* @SendMessageA(i32* %41, i32 %42, i32 0, i32 0)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i64 @broken(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %27
  %54 = phi i1 [ true, %27 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  ret void
}

declare dso_local i32* @GetWindow(i32*, i32) #1

declare dso_local i32 @GetClassNameA(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
