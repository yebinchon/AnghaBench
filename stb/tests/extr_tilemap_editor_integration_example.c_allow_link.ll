; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_allow_link.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_tilemap_editor_integration_example.c_allow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_lever = common dso_local global i32 0, align 4
@O_endpoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i16*)* @allow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allow_link(i16* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  %6 = load i16*, i16** %4, align 8
  %7 = call i32 @is_platform(i16* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i16*, i16** %5, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 1
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = load i32, i32* @O_lever, align 4
  %15 = add nsw i32 256, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i16*, i16** %4, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 1
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = load i32, i32* @O_endpoint, align 4
  %24 = add nsw i32 256, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i16*, i16** %5, align 8
  %28 = call i32 @is_platform(i16* %27)
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @is_platform(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
