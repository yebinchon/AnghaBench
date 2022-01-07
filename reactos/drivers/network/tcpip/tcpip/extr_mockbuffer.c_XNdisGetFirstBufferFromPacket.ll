; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_mockbuffer.c_XNdisGetFirstBufferFromPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_mockbuffer.c_XNdisGetFirstBufferFromPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XNdisGetFirstBufferFromPacket(%struct.TYPE_9__* %0, %struct.TYPE_10__** %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %20 = call i32 @MmGetMdlVirtualAddress(%struct.TYPE_10__* %19)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = call i64 @MmGetMdlByteCount(%struct.TYPE_10__* %25)
  %27 = load i64*, i64** %10, align 8
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %12, align 8
  br label %33

31:                                               ; preds = %5
  %32 = load i64*, i64** %10, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %40, %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = call i64 @MmGetMdlByteCount(%struct.TYPE_10__* %41)
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %12, align 8
  br label %37

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @MmGetMdlVirtualAddress(%struct.TYPE_10__*) #1

declare dso_local i64 @MmGetMdlByteCount(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
