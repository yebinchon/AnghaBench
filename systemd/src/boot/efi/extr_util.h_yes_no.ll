; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.h_yes_no.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.h_yes_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 121, i32 101, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 110, i32 111, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @yes_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @yes_no(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.1, i64 0, i64 0)
  %7 = bitcast i32* %6 to i8*
  ret i8* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
