; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_fix_paths.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_fix_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i64, %struct.TYPE_3__* }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @fix_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_paths(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %17 = call i64 @nvlist_lookup_nvlist_array(i32* %15, i32 %16, i32*** %8, i64* %10)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32**, i32*** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = call i32 @fix_paths(i32* %25, i32* %29, %struct.TYPE_3__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %141

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %20

38:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %141

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %42 = call i64 @nvlist_lookup_uint64(i32* %40, i32 %41, i64* %11)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @verify(i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %48 = call i64 @nvlist_lookup_string(i32* %46, i32 %47, i8** %14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i8* null, i8** %14, align 8
  br label %51

51:                                               ; preds = %50, %39
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %13, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %12, align 8
  br label %53

53:                                               ; preds = %121, %51
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %125

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %56
  %63 = load i8*, i8** %14, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %13, align 8
  br label %125

67:                                               ; preds = %62
  %68 = load i8*, i8** %14, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = call i64 @strncmp(i8* %76, i8* %79, i64 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %13, align 8
  br label %125

86:                                               ; preds = %75, %67
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = icmp eq %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %13, align 8
  br label %121

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %100, %struct.TYPE_3__** %13, align 8
  br label %121

101:                                              ; preds = %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %118, %struct.TYPE_3__** %13, align 8
  br label %121

119:                                              ; preds = %109, %101
  br label %120

120:                                              ; preds = %119, %56
  br label %121

121:                                              ; preds = %120, %117, %99, %89
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  store %struct.TYPE_3__* %124, %struct.TYPE_3__** %12, align 8
  br label %53

125:                                              ; preds = %84, %65, %53
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %127 = icmp eq %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %141

129:                                              ; preds = %125
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @nvlist_add_string(i32* %130, i32 %131, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %141

138:                                              ; preds = %129
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @update_vdev_config_dev_strs(i32* %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %137, %128, %38, %33
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @update_vdev_config_dev_strs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
