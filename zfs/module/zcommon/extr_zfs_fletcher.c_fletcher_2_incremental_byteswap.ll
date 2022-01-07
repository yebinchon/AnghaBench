; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_2_incremental_byteswap.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_2_incremental_byteswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fletcher_2_incremental_byteswap(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %8, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = udiv i64 %19, 8
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64* %21, i64** %9, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %65, %3
  %43 = load i64*, i64** %8, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = icmp ult i64* %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @BSWAP_64(i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @BSWAP_64(i64 %55)
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %46
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64* %67, i64** %8, align 8
  br label %42

68:                                               ; preds = %42
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @ZIO_SET_CHECKSUM(%struct.TYPE_3__* %69, i64 %70, i64 %71, i64 %72, i64 %73)
  ret i32 0
}

declare dso_local i64 @BSWAP_64(i64) #1

declare dso_local i32 @ZIO_SET_CHECKSUM(%struct.TYPE_3__*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
