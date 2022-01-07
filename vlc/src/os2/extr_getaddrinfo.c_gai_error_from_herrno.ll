; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_gai_error_from_herrno.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_getaddrinfo.c_gai_error_from_herrno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h_errno = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_NODATA = common dso_local global i32 0, align 4
@EAI_FAIL = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gai_error_from_herrno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gai_error_from_herrno() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @h_errno, align 4
  switch i32 %2, label %11 [
    i32 132, label %3
    i32 131, label %5
    i32 130, label %5
    i32 129, label %7
    i32 128, label %9
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @EAI_NONAME, align 4
  store i32 %4, i32* %1, align 4
  br label %13

5:                                                ; preds = %0, %0
  %6 = load i32, i32* @EAI_NODATA, align 4
  store i32 %6, i32* %1, align 4
  br label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @EAI_FAIL, align 4
  store i32 %8, i32* %1, align 4
  br label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @EAI_AGAIN, align 4
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %9, %7, %5, %3
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
