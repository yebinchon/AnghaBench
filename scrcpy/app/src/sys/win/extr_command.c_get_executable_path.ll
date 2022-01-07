; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/sys/win/extr_command.c_get_executable_path.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/sys/win/extr_command.c_get_executable_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_executable_path() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @GetModuleHandleW(i32* null)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %30

11:                                               ; preds = %0
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = call i32 @GetModuleFileNameW(i32 %17, i8* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i8* null, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %16, i64 %25
  store i8 0, i8* %26, align 1
  %27 = call i8* @utf8_from_wide_char(i8* %16)
  store i8* %27, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %29)
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i8*, i8** %1, align 8
  ret i8* %31
}

declare dso_local i32 @GetModuleHandleW(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetModuleFileNameW(i32, i8*, i32) #1

declare dso_local i8* @utf8_from_wide_char(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
