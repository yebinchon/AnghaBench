; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_AppendRidToSid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_AppendRidToSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i32)* }

@DispatchTable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @AppendRidToSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AppendRidToSid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @RtlSubAuthorityCountSid(i32* %8)
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DispatchTable, i32 0, i32 0), align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @RtlLengthRequiredSid(i32 %17)
  %19 = call i32* %15(i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %38

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RtlLengthRequiredSid(i32 %26)
  %28 = call i32 @RtlCopyMemory(i32* %24, i32* %25, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @RtlSubAuthorityCountSid(i32* %31)
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @RtlSubAuthoritySid(i32* %34, i32 %35)
  store i32 %33, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %23, %22, %13
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32* @RtlSubAuthorityCountSid(i32*) #1

declare dso_local i32 @RtlLengthRequiredSid(i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32* @RtlSubAuthoritySid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
