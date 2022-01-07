; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_object_range.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_object_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.drr_object_range = type { i64, i64, i32, i32, i32, i32 }

@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@DNODES_PER_BLOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_IV_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_object_range*)* @receive_object_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_object_range(%struct.receive_writer_arg* %0, %struct.drr_object_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.receive_writer_arg*, align 8
  %5 = alloca %struct.drr_object_range*, align 8
  %6 = alloca i32, align 4
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %4, align 8
  store %struct.drr_object_range* %1, %struct.drr_object_range** %5, align 8
  %7 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %8 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %9 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = xor i32 %7, %10
  %12 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %13 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DRR_IS_RAW_BYTESWAPPED(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = xor i32 %11, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %22 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DNODES_PER_BLOCK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %2
  %27 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %28 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DNODES_PER_BLOCK, align 8
  %31 = call i64 @P2PHASE(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %35 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %26, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %33
  %42 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %43 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %46 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %51 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %54 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* @B_TRUE, align 4
  %57 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %58 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %60 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %63 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %65 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %68 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %70 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %73 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %76 = call i32 @bcopy(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %78 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %81 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ZIO_DATA_IV_LEN, align 4
  %84 = call i32 @bcopy(i32 %79, i32 %82, i32 %83)
  %85 = load %struct.drr_object_range*, %struct.drr_object_range** %5, align 8
  %86 = getelementptr inbounds %struct.drr_object_range, %struct.drr_object_range* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %89 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %92 = call i32 @bcopy(i32 %87, i32 %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %4, align 8
  %95 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %55, %38
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @DRR_IS_RAW_BYTESWAPPED(i32) #1

declare dso_local i64 @P2PHASE(i64, i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
