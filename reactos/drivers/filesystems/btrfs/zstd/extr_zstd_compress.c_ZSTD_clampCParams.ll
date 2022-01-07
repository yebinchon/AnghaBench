; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_clampCParams.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_clampCParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

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
@ZSTD_fast = common dso_local global i32 0, align 4
@ZSTD_btultra = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @ZSTD_clampCParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_clampCParams(%struct.TYPE_4__* noalias sret %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ZSTD_WINDOWLOG_MIN, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @ZSTD_WINDOWLOG_MIN, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %8, i32* %9, align 4
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ZSTD_CHAINLOG_MIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ZSTD_CHAINLOG_MIN, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  br label %36

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ZSTD_CHAINLOG_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ZSTD_CHAINLOG_MAX, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %24
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  br label %53

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ZSTD_SEARCHLOG_MIN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ZSTD_SEARCHLOG_MIN, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %59, i32* %60, align 8
  br label %70

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ZSTD_SEARCHLOG_MAX, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @ZSTD_SEARCHLOG_MAX, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ZSTD_SEARCHLENGTH_MIN, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ZSTD_SEARCHLENGTH_MIN, align 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  br label %87

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ZSTD_SEARCHLENGTH_MAX, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @ZSTD_SEARCHLENGTH_MAX, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i64, i64* @ZSTD_TARGETLENGTH_MIN, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ZSTD_STATIC_ASSERT(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZSTD_TARGETLENGTH_MAX, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i64, i64* @ZSTD_TARGETLENGTH_MAX, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %87
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ZSTD_fast, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @ZSTD_fast, align 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  br label %116

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ZSTD_btultra, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @ZSTD_btultra, align 4
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115, %104
  %117 = bitcast %struct.TYPE_4__* %0 to i8*
  %118 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 32, i1 false)
  ret void
}

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
