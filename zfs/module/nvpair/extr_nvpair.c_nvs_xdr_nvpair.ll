; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_xdr_nvpair.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_xdr_nvpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.xdr_bytesrec = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@XDR_GET_BYTES_AVAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i64*)* @nvs_xdr_nvpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_xdr_nvpair(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xdr_bytesrec, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %78 [
    i32 128, label %19
    i32 129, label %44
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i32 @nvs_xdr_nvp_size(%struct.TYPE_9__* %20, %struct.TYPE_10__* %21, i64* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EFAULT, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @xdr_int(i32* %31, i64* %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @xdr_int(i32* %35, i64* %10)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @EFAULT, align 4
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = call i32 @nvs_xdr_nvp_op(%struct.TYPE_9__* %41, %struct.TYPE_10__* %42)
  store i32 %43, i32* %4, align 4
  br label %81

44:                                               ; preds = %3
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @xdr_int(i32* %45, i64* %9)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @xdr_int(i32* %49, i64* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @EFAULT, align 4
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %81

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @XDR_GET_BYTES_AVAIL, align 4
  %64 = call i32 @xdr_control(i32* %62, i32 %63, %struct.xdr_bytesrec* %12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EFAULT, align 4
  store i32 %67, i32* %4, align 4
  br label %81

68:                                               ; preds = %61
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.xdr_bytesrec, %struct.xdr_bytesrec* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @NVS_XDR_MAX_LEN(i32 %72)
  %74 = icmp ugt i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @EFAULT, align 4
  store i32 %76, i32* %4, align 4
  br label %81

77:                                               ; preds = %68
  br label %80

78:                                               ; preds = %3
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %75, %66, %60, %52, %40, %38, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @nvs_xdr_nvp_size(%struct.TYPE_9__*, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @xdr_int(i32*, i64*) #1

declare dso_local i32 @nvs_xdr_nvp_op(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @xdr_control(i32*, i32, %struct.xdr_bytesrec*) #1

declare dso_local i64 @NVS_XDR_MAX_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
