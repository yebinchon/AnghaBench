; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_plugin.c_vlc_dlerror.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_plugin.c_vlc_dlerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 13, i32 10, i32 0, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 32, i32 40, i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 37, i32 105, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_dlerror() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = call i32 (...) @GetLastError()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %6 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @LANG_NEUTRAL, align 4
  %10 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %11 = call i32 @MAKELANGID(i32 %9, i32 %10)
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %13 = call i32 @FormatMessageW(i32 %7, i32* null, i32 %8, i32 %11, i32* %12, i32 256, i32* null)
  br label %14

14:                                               ; preds = %22, %0
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wmemchr(i8* bitcast ([4 x i32]* @.str to i8*), i32 %18, i32 3)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %14

25:                                               ; preds = %14
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %2, align 4
  %31 = sub nsw i32 256, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @snwprintf(i32* %29, i32 %31, i8* bitcast ([12 x i32]* @.str.1 to i8*), i32 %32)
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %35 = call i8* @FromWide(i32* %34)
  ret i8* %35
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @wmemchr(i8*, i32, i32) #1

declare dso_local i32 @snwprintf(i32*, i32, i8*, i32) #1

declare dso_local i8* @FromWide(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
