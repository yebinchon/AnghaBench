; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseExtended.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608ParseExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"[EXT %x->'%c']\00", align 1
@EIA608_STATUS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @Eia608ParseExtended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Eia608ParseExtended(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 63
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 19
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ true, %12 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 18
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 112
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 144
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = call i32 @Debug(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @Eia608Cursor(i32* %38, i32 -1)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @Eia608Write(i32* %40, i32 %41)
  %43 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Debug(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @Eia608Cursor(i32*, i32) #1

declare dso_local i32 @Eia608Write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
