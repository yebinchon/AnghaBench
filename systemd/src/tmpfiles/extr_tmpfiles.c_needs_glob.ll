; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_needs_glob.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_needs_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WRITE_FILE = common dso_local global i32 0, align 4
@IGNORE_PATH = common dso_local global i32 0, align 4
@IGNORE_DIRECTORY_PATH = common dso_local global i32 0, align 4
@REMOVE_PATH = common dso_local global i32 0, align 4
@RECURSIVE_REMOVE_PATH = common dso_local global i32 0, align 4
@EMPTY_DIRECTORY = common dso_local global i32 0, align 4
@ADJUST_MODE = common dso_local global i32 0, align 4
@RELABEL_PATH = common dso_local global i32 0, align 4
@RECURSIVE_RELABEL_PATH = common dso_local global i32 0, align 4
@SET_XATTR = common dso_local global i32 0, align 4
@RECURSIVE_SET_XATTR = common dso_local global i32 0, align 4
@SET_ACL = common dso_local global i32 0, align 4
@RECURSIVE_SET_ACL = common dso_local global i32 0, align 4
@SET_ATTRIBUTE = common dso_local global i32 0, align 4
@RECURSIVE_SET_ATTRIBUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @needs_glob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_glob(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @WRITE_FILE, align 4
  %5 = load i32, i32* @IGNORE_PATH, align 4
  %6 = load i32, i32* @IGNORE_DIRECTORY_PATH, align 4
  %7 = load i32, i32* @REMOVE_PATH, align 4
  %8 = load i32, i32* @RECURSIVE_REMOVE_PATH, align 4
  %9 = load i32, i32* @EMPTY_DIRECTORY, align 4
  %10 = load i32, i32* @ADJUST_MODE, align 4
  %11 = load i32, i32* @RELABEL_PATH, align 4
  %12 = load i32, i32* @RECURSIVE_RELABEL_PATH, align 4
  %13 = load i32, i32* @SET_XATTR, align 4
  %14 = load i32, i32* @RECURSIVE_SET_XATTR, align 4
  %15 = load i32, i32* @SET_ACL, align 4
  %16 = load i32, i32* @RECURSIVE_SET_ACL, align 4
  %17 = load i32, i32* @SET_ATTRIBUTE, align 4
  %18 = load i32, i32* @RECURSIVE_SET_ATTRIBUTE, align 4
  %19 = call i32 @IN_SET(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
