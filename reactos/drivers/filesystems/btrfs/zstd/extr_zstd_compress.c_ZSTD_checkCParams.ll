; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_checkCParams.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_checkCParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32 }

@ZSTD_WINDOWLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MAX = common dso_local global i32 0, align 4
@ZSTD_TARGETLENGTH_MIN = common dso_local global i64 0, align 8
@ZSTD_TARGETLENGTH_MAX = common dso_local global i64 0, align 8
@parameter_outOfBound = common dso_local global i32 0, align 4
@ZSTD_btultra = common dso_local global i64 0, align 8
@parameter_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_checkCParams(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @ZSTD_WINDOWLOG_MIN, align 4
  %6 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %7 = call i32 @CLAMPCHECK(i32 %4, i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ZSTD_CHAINLOG_MIN, align 4
  %11 = load i32, i32* @ZSTD_CHAINLOG_MAX, align 4
  %12 = call i32 @CLAMPCHECK(i32 %9, i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %16 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %17 = call i32 @CLAMPCHECK(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZSTD_SEARCHLOG_MIN, align 4
  %21 = load i32, i32* @ZSTD_SEARCHLOG_MAX, align 4
  %22 = call i32 @CLAMPCHECK(i32 %19, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ZSTD_SEARCHLENGTH_MIN, align 4
  %26 = load i32, i32* @ZSTD_SEARCHLENGTH_MAX, align 4
  %27 = call i32 @CLAMPCHECK(i32 %24, i32 %25, i32 %26)
  %28 = load i64, i64* @ZSTD_TARGETLENGTH_MIN, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ZSTD_STATIC_ASSERT(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZSTD_TARGETLENGTH_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @parameter_outOfBound, align 4
  %38 = call i64 @ERROR(i32 %37)
  store i64 %38, i64* %2, align 8
  br label %48

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZSTD_btultra, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @parameter_unsupported, align 4
  %46 = call i64 @ERROR(i32 %45)
  store i64 %46, i64* %2, align 8
  br label %48

47:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %48

48:                                               ; preds = %47, %44, %36
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @CLAMPCHECK(i32, i32, i32) #1

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
