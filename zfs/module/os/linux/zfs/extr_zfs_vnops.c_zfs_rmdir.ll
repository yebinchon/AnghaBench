; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32, i32* }
%struct.TYPE_18__ = type { i64 }

@ZEXISTS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@TX_RMDIR = common dso_local global i32 0, align 4
@TX_CI = common dso_local global i32 0, align 4
@ZFS_NO_OBJECT = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_rmdir(%struct.inode* %0, i8* %1, %struct.inode* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.TYPE_19__* @ITOZ(%struct.inode* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_20__* @ITOZSB(%struct.inode* %25)
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %15, align 8
  %27 = load i32, i32* @ZEXISTS, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i64, i64* @B_FALSE, align 8
  store i64 %28, i64* %21, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %226

34:                                               ; preds = %5
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %36 = call i32 @ZFS_ENTER(%struct.TYPE_20__* %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %38 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @FIGNORECASE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @ZCILOOK, align 4
  %48 = load i32, i32* %20, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %20, align 4
  br label %50

50:                                               ; preds = %46, %34
  br label %51

51:                                               ; preds = %151, %50
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @zfs_dirent_lock(i32** %17, %struct.TYPE_19__* %52, i8* %53, %struct.TYPE_19__** %13, i32 %54, i32* null, i32* null)
  store i32 %55, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %59 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %58)
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %6, align 4
  br label %226

61:                                               ; preds = %51
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %63 = call %struct.inode* @ZTOI(%struct.TYPE_19__* %62)
  store %struct.inode* %63, %struct.inode** %14, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @zfs_zaccess_delete(%struct.TYPE_19__* %64, %struct.TYPE_19__* %65, i32* %66)
  store i32 %67, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %203

70:                                               ; preds = %61
  %71 = load %struct.inode*, %struct.inode** %14, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @S_ISDIR(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOTDIR, align 4
  %78 = call i32 @SET_ERROR(i32 %77)
  store i32 %78, i32* %19, align 4
  br label %203

79:                                               ; preds = %70
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = icmp eq %struct.inode* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EINVAL, align 4
  %85 = call i32 @SET_ERROR(i32 %84)
  store i32 %85, i32* %19, align 4
  br label %203

86:                                               ; preds = %79
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* @RW_WRITER, align 4
  %90 = call i32 @rw_enter(i32* %88, i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* @RW_WRITER, align 4
  %94 = call i32 @rw_enter(i32* %92, i32 %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = call i32* @dmu_tx_create(%struct.TYPE_18__* %97)
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @dmu_tx_hold_zap(i32* %99, i32 %102, i32 %103, i8* %104)
  %106 = load i32*, i32** %18, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* @B_FALSE, align 8
  %111 = call i32 @dmu_tx_hold_sa(i32* %106, i32 %109, i64 %110)
  %112 = load i32*, i32** %18, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i32 @dmu_tx_hold_zap(i32* %112, i32 %115, i32 %116, i8* null)
  %118 = load i32*, i32** %18, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %120 = call i32 @zfs_sa_upgrade_txholds(i32* %118, %struct.TYPE_19__* %119)
  %121 = load i32*, i32** %18, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %123 = call i32 @zfs_sa_upgrade_txholds(i32* %121, %struct.TYPE_19__* %122)
  %124 = load i32*, i32** %18, align 8
  %125 = call i32 @dmu_tx_mark_netfree(i32* %124)
  %126 = load i32*, i32** %18, align 8
  %127 = load i64, i64* %21, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %86
  %130 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %132

131:                                              ; preds = %86
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = load i32, i32* @TXG_NOWAIT, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @dmu_tx_assign(i32* %126, i32 %135)
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %132
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = call i32 @rw_exit(i32* %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = call i32 @rw_exit(i32* %144)
  %146 = load i32*, i32** %17, align 8
  %147 = call i32 @zfs_dirent_unlock(i32* %146)
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @ERESTART, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %139
  %152 = load i64, i64* @B_TRUE, align 8
  store i64 %152, i64* %21, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @dmu_tx_wait(i32* %153)
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @dmu_tx_abort(i32* %155)
  %157 = load %struct.inode*, %struct.inode** %14, align 8
  %158 = call i32 @iput(%struct.inode* %157)
  br label %51

159:                                              ; preds = %139
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @dmu_tx_abort(i32* %160)
  %162 = load %struct.inode*, %struct.inode** %14, align 8
  %163 = call i32 @iput(%struct.inode* %162)
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %165 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %164)
  %166 = load i32, i32* %19, align 4
  store i32 %166, i32* %6, align 4
  br label %226

167:                                              ; preds = %132
  %168 = load i32*, i32** %17, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @zfs_link_destroy(i32* %168, %struct.TYPE_19__* %169, i32* %170, i32 %171, i32* null)
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %167
  %176 = load i32, i32* @TX_RMDIR, align 4
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @FIGNORECASE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i32, i32* @TX_CI, align 4
  %183 = load i32, i32* %22, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %22, align 4
  br label %185

185:                                              ; preds = %181, %175
  %186 = load i32*, i32** %16, align 8
  %187 = load i32*, i32** %18, align 8
  %188 = load i32, i32* %22, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i32, i32* @ZFS_NO_OBJECT, align 4
  %192 = load i64, i64* @B_FALSE, align 8
  %193 = call i32 @zfs_log_remove(i32* %186, i32* %187, i32 %188, %struct.TYPE_19__* %189, i8* %190, i32 %191, i64 %192)
  br label %194

194:                                              ; preds = %185, %167
  %195 = load i32*, i32** %18, align 8
  %196 = call i32 @dmu_tx_commit(i32* %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = call i32 @rw_exit(i32* %198)
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = call i32 @rw_exit(i32* %201)
  br label %203

203:                                              ; preds = %194, %83, %76, %69
  %204 = load i32*, i32** %17, align 8
  %205 = call i32 @zfs_dirent_unlock(i32* %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %207 = call i32 @zfs_inode_update(%struct.TYPE_19__* %206)
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %209 = call i32 @zfs_inode_update(%struct.TYPE_19__* %208)
  %210 = load %struct.inode*, %struct.inode** %14, align 8
  %211 = call i32 @iput(%struct.inode* %210)
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %203
  %220 = load i32*, i32** %16, align 8
  %221 = call i32 @zil_commit(i32* %220, i32 0)
  br label %222

222:                                              ; preds = %219, %203
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %224 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %223)
  %225 = load i32, i32* %19, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %222, %159, %57, %31
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local %struct.TYPE_19__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_20__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_20__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_19__*, i8*, %struct.TYPE_19__**, i32, i32*, i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_20__*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_19__*) #1

declare dso_local i32 @zfs_zaccess_delete(%struct.TYPE_19__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_18__*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i64) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @zfs_link_destroy(i32*, %struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i32 @zfs_log_remove(i32*, i32*, i32, %struct.TYPE_19__*, i8*, i32, i64) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_19__*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
