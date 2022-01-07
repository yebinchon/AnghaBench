; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_discard.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.bio* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zvol_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_discard(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = call i32 @BIO_BI_SECTOR(%struct.bio* %21)
  %23 = shl i32 %22, 9
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = call i64 @BIO_BI_SIZE(%struct.bio* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br label %37

37:                                               ; preds = %32, %1
  %38 = phi i1 [ false, %1 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i64, i64* @jiffies, align 8
  store i64 %47, i64* %12, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WRITE, align 4
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = call i32 @bio_sectors(%struct.bio* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = call i32 @blk_generic_start_io_acct(i32 %52, i32 %53, i32 %55, i32* %61)
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = call i64 @bio_is_fua(%struct.bio* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %37
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %66, %37
  %75 = phi i1 [ true, %37 ], [ %73, %66 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EIO, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %10, align 4
  br label %140

85:                                               ; preds = %74
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = call i32 @bio_is_secure_erase(%struct.bio* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @P2ROUNDUP(i64 %90, i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @P2ALIGN(i64 %95, i32 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %100, %101
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %89, %85
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %140

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = call i32* @dmu_tx_create(%struct.TYPE_13__* %111)
  store i32* %112, i32** %11, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @dmu_tx_mark_netfree(i32* %113)
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* @TXG_WAIT, align 4
  %117 = call i32 @dmu_tx_assign(i32* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @dmu_tx_abort(i32* %121)
  br label %139

123:                                              ; preds = %108
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* @B_TRUE, align 4
  %129 = call i32 @zvol_log_truncate(%struct.TYPE_11__* %124, i32* %125, i64 %126, i64 %127, i32 %128)
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @dmu_tx_commit(i32* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = load i32, i32* @ZVOL_OBJ, align 4
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @dmu_free_long_range(%struct.TYPE_13__* %134, i32 %135, i64 %136, i64 %137)
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %123, %120
  br label %140

140:                                              ; preds = %139, %107, %82
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @zfs_rangelock_exit(i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @ZVOL_OBJ, align 4
  %155 = call i32 @zil_commit(i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %147, %140
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = call i32 @rw_exit(i32* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @WRITE, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @blk_generic_end_io_acct(i32 %164, i32 %165, i32* %171, i64 %172)
  %174 = load %struct.bio*, %struct.bio** %4, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 0, %175
  %177 = call i32 @BIO_END_IO(%struct.bio* %174, i32 %176)
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = call i32 @kmem_free(%struct.TYPE_12__* %178, i32 24)
  ret void
}

declare dso_local i32 @BIO_BI_SECTOR(%struct.bio*) #1

declare dso_local i64 @BIO_BI_SIZE(%struct.bio*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @blk_generic_start_io_acct(i32, i32, i32, i32*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @bio_is_fua(%struct.bio*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bio_is_secure_erase(%struct.bio*) #1

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local i64 @P2ALIGN(i64, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zvol_log_truncate(%struct.TYPE_11__*, i32*, i64, i64, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_free_long_range(%struct.TYPE_13__*, i32, i64, i64) #1

declare dso_local i32 @zfs_rangelock_exit(i32) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @blk_generic_end_io_acct(i32, i32, i32*, i64) #1

declare dso_local i32 @BIO_END_IO(%struct.bio*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
