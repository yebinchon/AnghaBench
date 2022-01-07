; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot_list_next.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot_list_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32, i32 }

@SNAP_ITER_MIN_TXG = common dso_local global i32 0, align 4
@SNAP_ITER_MAX_TXG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zfs_ioc_snapshot_list_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_snapshot_list_next(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  store i32* null, i32** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @get_nvlist(i32 %18, i64 %21, i32 %24, i32** %10)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %195

30:                                               ; preds = %15
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @SNAP_ITER_MIN_TXG, align 4
  %33 = call i32 @nvlist_lookup_uint64(i32* %31, i32 %32, i64* %8)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @SNAP_ITER_MAX_TXG, align 4
  %36 = call i32 @nvlist_lookup_uint64(i32* %34, i32 %35, i64* %9)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @nvlist_free(i32* %37)
  br label %39

39:                                               ; preds = %30, %1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dmu_objset_hold(i64 %42, i32 %43, i32** %5)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @ESRCH, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %2, align 4
  br label %195

57:                                               ; preds = %39
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @strlcat(i64 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 8)
  %62 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dmu_objset_rele(i32* %65, i32 %66)
  %68 = load i32, i32* @ESRCH, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %195

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %143, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %182

74:                                               ; preds = %71
  %75 = load i32, i32* @JUSTLOOKING, align 4
  %76 = call i64 @issig(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* @FORREAL, align 4
  %80 = call i64 @issig(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EINTR, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %182

85:                                               ; preds = %78, %74
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @strlen(i64 %89)
  %91 = sub i64 8, %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @strlen(i64 %97)
  %99 = add nsw i64 %94, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = call i32 @dmu_snapshot_list_next(i32* %86, i64 %91, i64 %99, i32* %101, i32* %103, i32* null)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %85
  %109 = load i32, i32* @ESRCH, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %4, align 4
  br label %182

111:                                              ; preds = %85
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %182

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @dmu_objset_pool(i32* %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @dsl_dataset_hold_obj(i32 %118, i32 %121, i32 %122, i32** %7)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %182

127:                                              ; preds = %116
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32*, i32** %7, align 8
  %132 = call i64 @dsl_get_creationtxg(i32* %131)
  %133 = load i64, i64* %8, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %130, %127
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i32*, i32** %7, align 8
  %140 = call i64 @dsl_get_creationtxg(i32* %139)
  %141 = load i64, i64* %9, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %138, %130
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @FTAG, align 4
  %146 = call i32 @dsl_dataset_rele(i32* %144, i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @strchr(i64 %149, i8 signext 64)
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8 0, i8* %151, align 1
  br label %71

152:                                              ; preds = %138, %135
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* @FTAG, align 4
  %160 = call i32 @dsl_dataset_rele(i32* %158, i32 %159)
  br label %182

161:                                              ; preds = %152
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @dmu_objset_from_ds(i32* %162, i32** %6)
  store i32 %163, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* @FTAG, align 4
  %168 = call i32 @dsl_dataset_rele(i32* %166, i32 %167)
  br label %182

169:                                              ; preds = %161
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @zfs_ioc_objset_stats_impl(%struct.TYPE_4__* %170, i32* %171)
  store i32 %172, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* @FTAG, align 4
  %177 = call i32 @dsl_dataset_rele(i32* %175, i32 %176)
  br label %182

178:                                              ; preds = %169
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* @FTAG, align 4
  %181 = call i32 @dsl_dataset_rele(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %174, %165, %157, %126, %114, %108, %82, %71
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* @FTAG, align 4
  %185 = call i32 @dmu_objset_rele(i32* %183, i32 %184)
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @strchr(i64 %191, i8 signext 64)
  store i8 0, i8* %192, align 1
  br label %193

193:                                              ; preds = %188, %182
  %194 = load i32, i32* %4, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %64, %55, %28
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @get_nvlist(i32, i64, i32, i32**) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @dmu_objset_hold(i64, i32, i32**) #1

declare dso_local i64 @strlcat(i64, i8*, i32) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @dmu_snapshot_list_next(i32*, i64, i64, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32, i32, i32, i32**) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i64 @dsl_get_creationtxg(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, i32**) #1

declare dso_local i32 @zfs_ioc_objset_stats_impl(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
