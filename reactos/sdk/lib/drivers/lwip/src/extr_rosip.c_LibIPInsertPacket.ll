; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rosip.c_LibIPInsertPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rosip.c_LibIPInsertPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pbuf*, %struct.TYPE_3__*)* }

@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LibIPInsertPacket(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pbuf*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @ASSERT(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @ASSERT(i8* %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @ASSERT(i8* %16)
  %18 = load i32, i32* @PBUF_RAW, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @PBUF_RAM, align 4
  %21 = call %struct.pbuf* @pbuf_alloc(i32 %18, i64 %19, i32 %20)
  store %struct.pbuf* %21, %struct.pbuf** %7, align 8
  %22 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %23 = icmp ne %struct.pbuf* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %3
  %25 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @ASSERT(i8* %34)
  %36 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @ASSERT(i8* %43)
  %45 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @RtlCopyMemory(i32 %47, i8* %48, i64 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.pbuf*, %struct.TYPE_3__*)*, i32 (%struct.pbuf*, %struct.TYPE_3__*)** %55, align 8
  %57 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_3__*
  %60 = call i32 %56(%struct.pbuf* %57, %struct.TYPE_3__* %59)
  br label %61

61:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
