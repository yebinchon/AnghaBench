; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_path_patch_uid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_path_patch_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_patch_uid(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_NONBLOCK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_DIRECTORY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @O_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_NOFOLLOW, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @O_NOATIME, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i8* %9, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @fd_patch_uid_internal(i32 %28, i32 1, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fd_patch_uid_internal(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
