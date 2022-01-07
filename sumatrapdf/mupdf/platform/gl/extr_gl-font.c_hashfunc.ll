; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_hashfunc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_hashfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*)* @hashfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashfunc(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %2, align 8
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = bitcast %struct.key* %6 to i8*
  store i8* %7, i8** %3, align 8
  store i32 4, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 6
  %19 = add i32 %16, %18
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 16
  %22 = add i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
