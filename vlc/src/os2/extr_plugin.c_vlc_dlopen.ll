; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_plugin.c_vlc_dlopen.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_plugin.c_vlc_dlopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_dlopen(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @RTLD_LAZY, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @RTLD_NOW, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @ToLocaleDup(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %32

25:                                               ; preds = %15
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @dlopen(i8* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i8* @ToLocaleDup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
