; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_ifs.c_SetSpyedBlockTableLength.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_ifs.c_SetSpyedBlockTableLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@Malloc32 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetSpyedBlockTableLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetSpyedBlockTableLength(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 1), align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @LMEM_ZEROINIT, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i32* @LocalAlloc(i32 %7, i32 %11)
  store i32* %12, i32** %3, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 1), align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @LMEM_ZEROINIT, align 4
  %20 = load i32, i32* @LMEM_MOVEABLE, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @LocalReAlloc(i32* %14, i32 %18, i32 %21)
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %13, %6
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  store i32* %27, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 1), align 8
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32* @LocalReAlloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
