; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_OnDropFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_OnDropFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 34, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnDropFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnDropFiles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 34, i32* %14, align 16
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = call i64 @ARRAYSIZE(i32* %13)
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @DragQueryFileW(i32 %15, i32 0, i32* %16, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DragFinish(i32 %20)
  %22 = getelementptr inbounds i32, i32* %13, i64 1
  %23 = call i32* @wcschr(i32* %22, i32 32)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i64 @ARRAYSIZE(i32* %13)
  %27 = call i32 @StringCchCatW(i32* %13, i64 %26, i8* bitcast ([2 x i32]* @.str to i8*))
  store i32* %13, i32** %6, align 8
  br label %30

28:                                               ; preds = %2
  %29 = getelementptr inbounds i32, i32* %13, i64 1
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @wcslen(i32* %33)
  %35 = call i32 @PasteText(i32 %31, i32* %32, i32 %34)
  %36 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DragQueryFileW(i32, i32, i32*, i64) #2

declare dso_local i64 @ARRAYSIZE(i32*) #2

declare dso_local i32 @DragFinish(i32) #2

declare dso_local i32* @wcschr(i32*, i32) #2

declare dso_local i32 @StringCchCatW(i32*, i64, i8*) #2

declare dso_local i32 @PasteText(i32, i32*, i32) #2

declare dso_local i32 @wcslen(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
