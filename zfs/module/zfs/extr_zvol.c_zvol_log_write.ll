; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_log_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i32 }

@ZFS_LOGBIAS_THROUGHPUT = common dso_local global i64 0, align 8
@WR_INDIRECT = common dso_local global i64 0, align 8
@zvol_immediate_write_sz = common dso_local global i64 0, align 8
@WR_COPIED = common dso_local global i64 0, align 8
@WR_NEED_COPY = common dso_local global i64 0, align 8
@TX_WRITE = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zvol_log_write(%struct.TYPE_13__* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @zil_replaying(%struct.TYPE_14__* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %169

29:                                               ; preds = %5
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZFS_LOGBIAS_THROUGHPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %36, i64* %13, align 8
  br label %62

37:                                               ; preds = %29
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @spa_has_slogs(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @zvol_immediate_write_sz, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %52, i64* %13, align 8
  br label %61

53:                                               ; preds = %47, %43, %37
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @WR_COPIED, align 8
  store i64 %57, i64* %13, align 8
  br label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %133, %62
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %169

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %17, align 4
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @WR_COPIED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = call i64 @zil_max_copied_data(%struct.TYPE_14__* %75)
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %79, i64* %16, align 8
  br label %93

80:                                               ; preds = %73, %66
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* @WR_INDIRECT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @P2PHASE(i64 %86, i64 %87)
  %89 = sub nsw i64 %85, %88
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @MIN(i64 %89, i64 %90)
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* @TX_WRITE, align 4
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @WR_COPIED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %17, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = sext i32 %102 to i64
  %104 = add i64 32, %103
  %105 = trunc i64 %104 to i32
  %106 = call %struct.TYPE_16__* @zil_itx_create(i32 %94, i32 %105)
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %14, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = bitcast i32* %108 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %15, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* @WR_COPIED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %101
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 1
  %121 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %122 = call i64 @dmu_read_by_dnode(i32 %116, i64 %117, i32 %118, %struct.TYPE_15__* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %126 = call i32 @zil_itx_destroy(%struct.TYPE_16__* %125)
  %127 = load i32, i32* @TX_WRITE, align 4
  %128 = call %struct.TYPE_16__* @zil_itx_create(i32 %127, i32 32)
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %14, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  %131 = bitcast i32* %130 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %15, align 8
  %132 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %132, i64* %16, align 8
  br label %133

133:                                              ; preds = %124, %113, %101
  %134 = load i64, i64* %16, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* @ZVOL_OBJ, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = call i32 @BP_ZERO(i32* %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %153, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @zil_itx_assign(%struct.TYPE_14__* %157, %struct.TYPE_16__* %158, i32* %159)
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %8, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %8, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %9, align 8
  %168 = sub nsw i64 %167, %166
  store i64 %168, i64* %9, align 8
  br label %63

169:                                              ; preds = %28, %63
  ret void
}

declare dso_local i64 @zil_replaying(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @spa_has_slogs(i32) #1

declare dso_local i64 @zil_max_copied_data(%struct.TYPE_14__*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i64 @P2PHASE(i64, i64) #1

declare dso_local %struct.TYPE_16__* @zil_itx_create(i32, i32) #1

declare dso_local i64 @dmu_read_by_dnode(i32, i64, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @zil_itx_assign(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
