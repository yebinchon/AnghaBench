; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_decode_mac_bp.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_decode_mac_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@DMU_OT_OBJSET = common dso_local global i64 0, align 8
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_crypt_decode_mac_bp(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i64 @BP_USES_CRYPT(%struct.TYPE_9__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i64 @BP_IS_HOLE(%struct.TYPE_9__* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i64 @BP_GET_TYPE(%struct.TYPE_9__* %17)
  %19 = load i64, i64* @DMU_OT_OBJSET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %24 = call i32 @bzero(i32* %22, i32 %23)
  br label %65

25:                                               ; preds = %13
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32 @BP_SHOULD_BYTESWAP(%struct.TYPE_9__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @bcopy(i32* %34, i32* %35, i32 4)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = call i32 @bcopy(i32* %41, i32* %43, i32 4)
  br label %65

45:                                               ; preds = %25
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BSWAP_64(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @bcopy(i32* %5, i32* %53, i32 4)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BSWAP_64(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = call i32 @bcopy(i32* %5, i32* %63, i32 4)
  br label %65

65:                                               ; preds = %21, %45, %29
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_USES_CRYPT(%struct.TYPE_9__*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_9__*) #1

declare dso_local i64 @BP_GET_TYPE(%struct.TYPE_9__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @BP_SHOULD_BYTESWAP(%struct.TYPE_9__*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @BSWAP_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
