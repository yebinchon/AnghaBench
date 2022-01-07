; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_is_platform.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_is_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_platform = common dso_local global i32 0, align 4
@O_vplatform = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*)* @is_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_platform(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = getelementptr inbounds i16, i16* %3, i64 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = load i32, i32* @O_platform, align 4
  %8 = add nsw i32 256, %7
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i16*, i16** %2, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 2
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* @O_vplatform, align 4
  %16 = add nsw i32 256, %15
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i1 [ true, %1 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
