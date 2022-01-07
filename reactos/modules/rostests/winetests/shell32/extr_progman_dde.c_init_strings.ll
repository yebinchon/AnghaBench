; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_progman_dde.c_init_strings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_progman_dde.c_init_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_PROGRAMS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSIDL_COMMON_PROGRAMS = common dso_local global i32 0, align 4
@ProgramsDir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_strings() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAX_PATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %11 = load i32, i32* @CSIDL_PROGRAMS, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @SHGetSpecialFolderPathA(i32* null, i8* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @CSIDL_COMMON_PROGRAMS, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @SHGetSpecialFolderPathA(i32* null, i8* %7, i32 %14, i32 %15)
  %17 = call i64 (...) @use_common()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @ProgramsDir, align 4
  %21 = call i32 @lstrcpyA(i32 %20, i8* %7)
  br label %25

22:                                               ; preds = %0
  %23 = load i32, i32* @ProgramsDir, align 4
  %24 = call i32 @lstrcpyA(i32 %23, i8* %10)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %26)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHGetSpecialFolderPathA(i32*, i8*, i32, i32) #2

declare dso_local i64 @use_common(...) #2

declare dso_local i32 @lstrcpyA(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
