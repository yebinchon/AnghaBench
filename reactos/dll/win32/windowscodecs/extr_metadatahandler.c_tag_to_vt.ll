; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_tag_to_vt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_tag_to_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tag_to_vt.tag2vt = internal constant [14 x i32] [i32 139, i32 131, i32 134, i32 130, i32 129, i32 128, i32 138, i32 140, i32 137, i32 136, i32 135, i32 133, i32 132, i32 140], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tag_to_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_to_vt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 13
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [14 x i32], [14 x i32]* @tag_to_vt.tag2vt, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  br label %14

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ 140, %13 ]
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
