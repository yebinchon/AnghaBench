; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_is_achar.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_is_achar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_is_achar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @IN(i32 %4, i32 32, i32 95)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @IN(i32 %8, i32 35, i32 36)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @IN(i32 %15, i32 91, i32 94)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @IN(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
