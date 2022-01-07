; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i8*, i32 (i8*)*, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32 }

@ZFS_LOGBIAS_THROUGHPUT = common dso_local global i64 0, align 8
@WR_INDIRECT = common dso_local global i64 0, align 8
@zfs_immediate_write_sz = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@FDSYNC = common dso_local global i32 0, align 4
@WR_COPIED = common dso_local global i64 0, align 8
@WR_NEED_COPY = common dso_local global i64 0, align 8
@zfs_fsyncer_key = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_write(%struct.TYPE_17__* %0, i32* %1, i32 %2, %struct.TYPE_16__* %3, i32 %4, i32 %5, i32 %6, i32 (i8*)* %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_19__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 (i8*)* %7, i32 (i8*)** %17, align 8
  store i8* %8, i8** %18, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @sa_get_db(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %19, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %20, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @zil_replaying(%struct.TYPE_17__* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %9
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %46 = call i64 @zfs_xattr_owner_unlinked(%struct.TYPE_16__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %39, %9
  %49 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %50 = icmp ne i32 (i8*)* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = call i32 %52(i8* %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %231

56:                                               ; preds = %44
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZFS_LOGBIAS_THROUGHPUT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %63, i64* %21, align 8
  br label %89

64:                                               ; preds = %56
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @spa_has_slogs(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @zfs_immediate_write_sz, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %75, i64* %21, align 8
  br label %88

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @FSYNC, align 4
  %79 = load i32, i32* @FDSYNC, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i64, i64* @WR_COPIED, align 8
  store i64 %84, i64* %21, align 8
  br label %87

85:                                               ; preds = %76
  %86 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %86, i64* %21, align 8
  br label %87

87:                                               ; preds = %85, %83
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i32, i32* @zfs_fsyncer_key, align 4
  %91 = call i64 @tsd_get(i32 %90)
  store i64 %91, i64* %22, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @zfs_fsyncer_key, align 4
  %95 = load i64, i64* %22, align 8
  %96 = sub i64 %95, 1
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @tsd_set(i32 %94, i8* %97)
  br label %99

99:                                               ; preds = %93, %89
  br label %100

100:                                              ; preds = %214, %99
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %231

103:                                              ; preds = %100
  %104 = load i64, i64* %21, align 8
  store i64 %104, i64* %25, align 8
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %26, align 4
  %106 = load i64, i64* %25, align 8
  %107 = load i64, i64* @WR_COPIED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = call i32 @zil_max_copied_data(%struct.TYPE_17__* %111)
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %115, i64* %25, align 8
  br label %129

116:                                              ; preds = %109, %103
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* @WR_INDIRECT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i64, i64* %20, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i64, i64* %20, align 8
  %124 = call i64 @P2PHASE(i32 %122, i64 %123)
  %125 = sub nsw i64 %121, %124
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @MIN(i64 %125, i32 %126)
  store i32 %127, i32* %26, align 4
  br label %128

128:                                              ; preds = %120, %116
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i32, i32* %12, align 4
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* @WR_COPIED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %26, align 4
  br label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ]
  %139 = sext i32 %138 to i64
  %140 = add i64 24, %139
  %141 = trunc i64 %140 to i32
  %142 = call %struct.TYPE_19__* @zil_itx_create(i32 %130, i32 %141)
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %23, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 5
  %145 = bitcast i32* %144 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %24, align 8
  %146 = load i32*, i32** %19, align 8
  %147 = call i32 @DB_DNODE_ENTER(i32* %146)
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* @WR_COPIED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %137
  %152 = load i32*, i32** %19, align 8
  %153 = call i32 @DB_DNODE(i32* %152)
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 1
  %158 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %159 = call i64 @dmu_read_by_dnode(i32 %153, i32 %154, i32 %155, %struct.TYPE_18__* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %151
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %163 = call i32 @zil_itx_destroy(%struct.TYPE_19__* %162)
  %164 = load i32, i32* %12, align 4
  %165 = call %struct.TYPE_19__* @zil_itx_create(i32 %164, i32 24)
  store %struct.TYPE_19__* %165, %struct.TYPE_19__** %23, align 8
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 5
  %168 = bitcast i32* %167 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %24, align 8
  %169 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %169, i64* %25, align 8
  br label %170

170:                                              ; preds = %161, %151, %137
  %171 = load i32*, i32** %19, align 8
  %172 = call i32 @DB_DNODE_EXIT(i32* %171)
  %173 = load i64, i64* %25, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %26, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = call i32 @BP_ZERO(i32* %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %193 = call i32 @ZTOZSB(%struct.TYPE_16__* %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* @FSYNC, align 4
  %198 = load i32, i32* @FDSYNC, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %170
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load i64, i64* %22, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @B_FALSE, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %210, %207, %202, %170
  %215 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  store i32 (i8*)* %215, i32 (i8*)** %217, align 8
  %218 = load i8*, i8** %18, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @zil_itx_assign(%struct.TYPE_17__* %221, %struct.TYPE_19__* %222, i32* %223)
  %225 = load i32, i32* %26, align 4
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %26, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %15, align 4
  br label %100

231:                                              ; preds = %55, %100
  ret void
}

declare dso_local i64 @sa_get_db(i32) #1

declare dso_local i64 @zil_replaying(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @zfs_xattr_owner_unlinked(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_has_slogs(i32) #1

declare dso_local i64 @tsd_get(i32) #1

declare dso_local i32 @tsd_set(i32, i8*) #1

declare dso_local i32 @zil_max_copied_data(%struct.TYPE_17__*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @P2PHASE(i32, i64) #1

declare dso_local %struct.TYPE_19__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local i64 @dmu_read_by_dnode(i32, i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @DB_DNODE(i32*) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_19__*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_16__*) #1

declare dso_local i32 @zil_itx_assign(%struct.TYPE_17__*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
