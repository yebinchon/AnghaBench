; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_rename.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @ToLocaleDup(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @ToLocaleDup(i8* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @rename(i8* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i8* @ToLocaleDup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
