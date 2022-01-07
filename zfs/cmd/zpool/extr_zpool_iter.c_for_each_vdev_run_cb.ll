; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_vdev_run_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_vdev_run_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i8**, i32 }
%struct.TYPE_5__ = type { i32*, i64, i64, i32*, i32, i32, i32, i8*, i8* }

@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @for_each_vdev_run_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_vdev_run_cb(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %19 = call i64 @nvlist_lookup_string(i32* %17, i32 %18, i8** %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %173

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH, align 4
  %25 = call i64 @nvlist_lookup_string(i32* %23, i32 %24, i8** %12)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %59, %22
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 7
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @zpool_get_name(i32* %53)
  %55 = call i64 @strcmp(i8* %52, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %173

58:                                               ; preds = %44, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %26

62:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %63
  %70 = load i32, i32* @g_zfs, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @zpool_vdev_name(i32 %70, i32* %71, i32* %72, i32 %75)
  store i8* %76, i8** %11, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @free(i8* %88)
  store i32 1, i32* %14, align 4
  br label %96

90:                                               ; preds = %69
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %63

96:                                               ; preds = %87, %63
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %173

105:                                              ; preds = %99, %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 64, %113
  %115 = trunc i64 %114 to i32
  %116 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %108, i32 %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store %struct.TYPE_5__* %116, %struct.TYPE_5__** %118, align 8
  %119 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %105
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %4, align 4
  br label %173

122:                                              ; preds = %105
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %129
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %9, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = call i8* @zpool_get_name(i32* %131)
  %133 = call i8* @strdup(i8* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 8
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = call i8* @strdup(i8* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @zfs_get_underlying_path(i8* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  store i32 0, i32* %152, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %122
  %160 = load i8*, i8** %12, align 8
  %161 = call i8* @strdup(i8* %160)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32* %162, i32** %164, align 8
  br label %168

165:                                              ; preds = %122
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %159
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %120, %104, %57, %21
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @zfs_get_underlying_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
