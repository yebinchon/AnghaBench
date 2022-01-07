; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_bp_auth_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_bp_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @zio_crypt_bp_auth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zio_crypt_bp_auth_init(i32 %0, i64 %1, %struct.TYPE_11__* %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = bitcast %struct.TYPE_11__* %11 to i8*
  %14 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @byteswap_uint64_array(%struct.TYPE_11__* %11, i32 4)
  br label %19

19:                                               ; preds = %17, %5
  %20 = call i64 @BP_USES_CRYPT(%struct.TYPE_11__* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i64 @BP_IS_HOLE(%struct.TYPE_11__* %11)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ true, %19 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_11__* %11)
  %30 = call i32 @ASSERT0(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zio_crypt_decode_mac_bp(%struct.TYPE_11__* %11, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @zio_crypt_bp_zero_nonportable_blkprop(%struct.TYPE_11__* %11, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LE_64(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %10, align 8
  store i32 16, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %25
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %47, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @BP_USES_CRYPT(%struct.TYPE_11__*) #2

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_11__*) #2

declare dso_local i32 @ASSERT0(i32) #2

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_11__*) #2

declare dso_local i32 @zio_crypt_decode_mac_bp(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @zio_crypt_bp_zero_nonportable_blkprop(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @LE_64(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
