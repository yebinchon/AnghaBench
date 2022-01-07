; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_nodetype.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_nodetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"AUX\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CLOCK$\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NUL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PRN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LPT\00", align 1
@NUL = common dso_local global i64 0, align 8
@NODE_WRITABLE = common dso_local global i32 0, align 4
@NODE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_nodetype(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64*, i64** %3, align 8
  %5 = call i64 @STRICMP(i64* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = load i64*, i64** %3, align 8
  %9 = call i64 @STRICMP(i64* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = load i64*, i64** %3, align 8
  %13 = call i64 @STRICMP(i64* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = call i64 @STRICMP(i64* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = load i64*, i64** %3, align 8
  %21 = call i64 @STRICMP(i64* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = load i64*, i64** %3, align 8
  %25 = call i64 @STRNICMP(i64* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64*, i64** %3, align 8
  %29 = call i64 @STRNICMP(i64* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27, %23
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @VIM_ISDIGIT(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i64*, i64** %3, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 4
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NUL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %19, %15, %11, %7, %1
  %44 = load i32, i32* @NODE_WRITABLE, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %37, %31, %27
  %46 = load i32, i32* @NODE_NORMAL, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @STRICMP(i64*, i8*) #1

declare dso_local i64 @STRNICMP(i64*, i8*, i32) #1

declare dso_local i64 @VIM_ISDIGIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
