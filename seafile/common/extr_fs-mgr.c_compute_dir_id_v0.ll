; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_compute_dir_id_v0.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_compute_dir_id_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@G_BYTE_ORDER = common dso_local global i64 0, align 8
@G_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @compute_dir_id_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_dir_id_v0(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [20 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 20, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memset(i32 %16, i32 48, i32 40)
  br label %74

18:                                               ; preds = %2
  %19 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %20 = call i32* @g_checksum_new(i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  br label %22

22:                                               ; preds = %61, %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %9, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @g_checksum_update(i32* %30, i8* %34, i32 40)
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @g_checksum_update(i32* %36, i8* %40, i32 %43)
  %45 = load i64, i64* @G_BYTE_ORDER, align 8
  %46 = load i64, i64* @G_BIG_ENDIAN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %25
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GUINT32_SWAP_LE_BE(i32 %51)
  store i32 %52, i32* %10, align 4
  br label %57

53:                                               ; preds = %25
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32*, i32** %5, align 8
  %59 = bitcast i32* %10 to i8*
  %60 = call i32 @g_checksum_update(i32* %58, i8* %59, i32 4)
  br label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %6, align 8
  br label %22

65:                                               ; preds = %22
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %68 = call i32 @g_checksum_get_digest(i32* %66, i32* %67, i32* %8)
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rawdata_to_hex(i32* %69, i32 %72, i32 20)
  br label %74

74:                                               ; preds = %65, %13
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @g_checksum_update(i32*, i8*, i32) #1

declare dso_local i32 @GUINT32_SWAP_LE_BE(i32) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #1

declare dso_local i32 @rawdata_to_hex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
