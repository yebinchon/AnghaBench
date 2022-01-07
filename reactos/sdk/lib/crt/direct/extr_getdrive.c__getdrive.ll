; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getdrive.c__getdrive.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getdrive.c__getdrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getdrive() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = call i32 @GetCurrentDirectoryW(i32 %9, i32* %8)
  %11 = icmp sge i32 %10, 2
  br i1 %11, label %12, label %34

12:                                               ; preds = %0
  %13 = getelementptr inbounds i32, i32* %8, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = call i32 @towupper(i32 %14)
  %16 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %15, i32* %16, align 16
  %17 = getelementptr inbounds i32, i32* %8, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = icmp sge i32 %18, 65
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = getelementptr inbounds i32, i32* %8, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds i32, i32* %8, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 58
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds i32, i32* %8, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = sub nsw i32 %30, 65
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %35

33:                                               ; preds = %24, %20, %12
  br label %34

34:                                               ; preds = %33, %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @towupper(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
