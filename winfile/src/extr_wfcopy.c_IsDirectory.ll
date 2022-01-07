; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcopy.c_IsDirectory.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcopy.c_IsDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsDirectory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @IsRootDirectory(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @FindFileName(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ISDOTDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @lstrcpy(i32* %11, i32 %26)
  %28 = call i32 @QualifyPath(i32* %11)
  %29 = call i32 @WFIsDir(i32* %11)
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %23, %15
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsRootDirectory(i32) #2

declare dso_local i32 @FindFileName(i32) #2

declare dso_local i64 @ISDOTDIR(i32) #2

declare dso_local i32 @lstrcpy(i32*, i32) #2

declare dso_local i32 @QualifyPath(i32*) #2

declare dso_local i32 @WFIsDir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
