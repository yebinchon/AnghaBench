; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_a2w.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_a2w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a2w.bufs = internal constant [8 x [128 x i32]] zeroinitializer, align 16
@a2w.i = internal global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @a2w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @a2w(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @a2w.i, align 4
  %9 = add nsw i32 %8, 1
  %10 = srem i32 %9, 8
  store i32 %10, i32* @a2w.i, align 4
  %11 = load i32, i32* @CP_ACP, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @a2w.i, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x [128 x i32]], [8 x [128 x i32]]* @a2w.bufs, i64 0, i64 %14
  %16 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %17 = call i32 @MultiByteToWideChar(i32 %11, i32 0, i8* %12, i32 -1, i32* %16, i32 128)
  %18 = load i32, i32* @a2w.i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x [128 x i32]], [8 x [128 x i32]]* @a2w.bufs, i64 0, i64 %19
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %7, %6
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
