; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_teardown.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, i32, i32, i8*, i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i64 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@TXG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @zfsvfs_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_teardown(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = call i32 @zfs_unlinked_drain_stop_wait(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dmu_objset_pool(i32* %26)
  %28 = call i32 @dsl_pool_iput_taskq(i32 %27)
  %29 = call i32 @taskq_wait_outstanding(i32 %28, i32 0)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33, %23
  br label %18

38:                                               ; preds = %36, %18
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* @RW_WRITER, align 4
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @rrm_enter(i32* %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @shrink_dcache_sb(i32 %52)
  br label %54

54:                                               ; preds = %47, %39
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @zil_close(i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 7
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32, i32* @RW_WRITER, align 4
  %70 = call i32 @rw_enter(i32* %68, i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %93, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78, %73
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = call i32 @rw_exit(i32* %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* @FTAG, align 4
  %90 = call i32 @rrm_exit(i32* %88, i32 %89)
  %91 = load i32, i32* @EIO, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %193

93:                                               ; preds = %78, %66
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %133, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 5
  %99 = call i32 @mutex_enter(i32* %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  %102 = call %struct.TYPE_14__* @list_head(i32* %101)
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %6, align 8
  br label %103

103:                                              ; preds = %124, %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %129

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = call i32 @zfs_znode_dmu_fini(%struct.TYPE_14__* %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = call i32 @ZTOI(%struct.TYPE_14__* %115)
  %117 = call i32* @igrab(i32 %116)
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** @B_TRUE, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %119, %114
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = call %struct.TYPE_14__* @list_next(i32* %126, %struct.TYPE_14__* %127)
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %6, align 8
  br label %103

129:                                              ; preds = %103
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  %132 = call i32 @mutex_exit(i32* %131)
  br label %133

133:                                              ; preds = %129, %93
  %134 = load i8*, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** @B_TRUE, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = call i32 @rw_exit(i32* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load i32, i32* @FTAG, align 4
  %146 = call i32 @rrm_exit(i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %136, %133
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %193

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = call i32 @zfs_unregister_callbacks(%struct.TYPE_15__* %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %8, align 8
  %159 = load i8*, i8** @B_FALSE, align 8
  store i8* %159, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %172, %153
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @TXG_SIZE, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i64 @dmu_objset_is_dirty(i32* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i8*, i8** @B_TRUE, align 8
  store i8* %170, i8** %9, align 8
  br label %175

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %160

175:                                              ; preds = %169, %160
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = call i32 @zfs_is_readonly(%struct.TYPE_15__* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %175
  %180 = load i8*, i8** %9, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @dmu_objset_pool(i32* %185)
  %187 = call i32 @txg_wait_synced(i32 %186, i32 0)
  br label %188

188:                                              ; preds = %182, %179, %175
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @dmu_objset_evict_dbufs(i32* %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %188, %152, %83
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @zfs_unlinked_drain_stop_wait(%struct.TYPE_15__*) #1

declare dso_local i32 @taskq_wait_outstanding(i32, i32) #1

declare dso_local i32 @dsl_pool_iput_taskq(i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @rrm_enter(i32*, i32, i32) #1

declare dso_local i32 @shrink_dcache_sb(i32) #1

declare dso_local i32 @zil_close(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @rrm_exit(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_14__* @list_head(i32*) #1

declare dso_local i32 @zfs_znode_dmu_fini(%struct.TYPE_14__*) #1

declare dso_local i32* @igrab(i32) #1

declare dso_local i32 @ZTOI(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @list_next(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zfs_unregister_callbacks(%struct.TYPE_15__*) #1

declare dso_local i64 @dmu_objset_is_dirty(i32*, i32) #1

declare dso_local i32 @zfs_is_readonly(%struct.TYPE_15__*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_evict_dbufs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
