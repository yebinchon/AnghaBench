; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_GetShareModeFromSTGM.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_GetShareModeFromSTGM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STGM_TRANSACTED = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid share mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetShareModeFromSTGM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetShareModeFromSTGM(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @STGM_SHARE_MODE(i32 %4)
  switch i32 %5, label %19 [
    i32 0, label %6
    i32 131, label %11
    i32 130, label %15
    i32 129, label %17
    i32 128, label %17
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @STGM_TRANSACTED, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @assert(i32 %9)
  br label %11

11:                                               ; preds = %1, %6
  %12 = load i32, i32* @FILE_SHARE_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @FILE_SHARE_WRITE, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @FILE_SHARE_READ, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17, %15, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @STGM_SHARE_MODE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
