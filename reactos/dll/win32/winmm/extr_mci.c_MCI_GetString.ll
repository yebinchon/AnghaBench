; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_GetString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_GetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCIERR_NO_CLOSING_QUOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Ooops: un-escaped \22\0A\00", align 1
@MCIERR_EXTRA_CHARACTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @MCI_GetString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCI_GetString(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8**, i8*** %4, align 8
  store i8* %15, i8** %16, align 8
  %17 = call i8* @strchrW(i8* %15, i8 signext 34)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @MCIERR_NO_CLOSING_QUOTE, align 4
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 0, i8* %31, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MCIERR_EXTRA_CHARACTERS, align 4
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %37, %30
  br label %65

45:                                               ; preds = %2
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strchrW(i8* %46, i8 signext 32)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 0, i8* %51, align 1
  br label %61

53:                                               ; preds = %45
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlenW(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %4, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %42, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
