; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_chdir.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@p_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"chdir(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_chdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* @NUL, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load i32, i32* @p_verbose, align 4
  %14 = icmp sge i32 %13, 5
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @verbose_enter()
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @smsg(i32* bitcast ([10 x i8]* @.str to i32*), i8* %17)
  %19 = call i32 (...) @verbose_leave()
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call signext i8 @TOLOWER_ASC(i8 signext %29)
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 97
  %33 = add nsw i32 %32, 1
  %34 = trunc i32 %33 to i8
  %35 = call i64 @change_drive(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %52

38:                                               ; preds = %26
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %20
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @NUL, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @chdir(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %48, %37, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @verbose_enter(...) #1

declare dso_local i32 @smsg(i32*, i8*) #1

declare dso_local i32 @verbose_leave(...) #1

declare dso_local i64 @change_drive(i8 signext) #1

declare dso_local signext i8 @TOLOWER_ASC(i8 signext) #1

declare dso_local i32 @chdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
