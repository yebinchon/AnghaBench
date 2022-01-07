; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp.c_check_seqnos.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_test_tcp.c_check_seqnos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_seg = type { %struct.TYPE_2__*, %struct.tcp_seg* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_seg*, i32, i32*)* @check_seqnos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_seqnos(%struct.tcp_seg* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tcp_seg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tcp_seg*, align 8
  %8 = alloca i32, align 4
  store %struct.tcp_seg* %0, %struct.tcp_seg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.tcp_seg*, %struct.tcp_seg** %4, align 8
  store %struct.tcp_seg* %9, %struct.tcp_seg** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %16 = icmp ne %struct.tcp_seg* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @EXPECT_RET(i32 %17)
  %19 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @htonl(i32 %28)
  %30 = icmp eq i64 %23, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @EXPECT(i32 %31)
  br label %33

33:                                               ; preds = %14
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %36, i32 0, i32 1
  %38 = load %struct.tcp_seg*, %struct.tcp_seg** %37, align 8
  store %struct.tcp_seg* %38, %struct.tcp_seg** %7, align 8
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8
  %41 = icmp eq %struct.tcp_seg* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @EXPECT(i32 %42)
  ret void
}

declare dso_local i32 @EXPECT_RET(i32) #1

declare dso_local i32 @EXPECT(i32) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
