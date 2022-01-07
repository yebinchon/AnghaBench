; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_pname.c_uu_warn_internal.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_pname.c_uu_warn_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pname = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@PNAME_FMT = common dso_local global i8* null, align 8
@ERRNO_FMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @uu_warn_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uu_warn_internal(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @pname, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @PNAME_FMT, align 8
  %12 = load i32*, i32** @pname, align 8
  %13 = call i32 @fprintf(i32 %10, i8* %11, i32* %12)
  br label %14

14:                                               ; preds = %9, %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vfprintf(i32 %15, i8* %16, i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @strrchr(i8* %19, i8 signext 10)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** @ERRNO_FMT, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %23, i8* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32*) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
