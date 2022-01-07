; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_ifs_readdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_ifs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64*, i32* }

@_STAT_DIR = common dso_local global i64 0, align 8
@ISO_BLOCKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Invalid directory buffer sector size %u\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't calloc(1, %lu)\00", align 1
@ISO_MULTIEXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @iso9660_ifs_readdir(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %156

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %156

21:                                               ; preds = %17
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.TYPE_16__* @iso9660_ifs_stat(%struct.TYPE_15__* %22, i8* %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %156

28:                                               ; preds = %21
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @_STAT_DIR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %35)
  store i32* null, i32** %3, align 8
  br label %156

37:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %38 = call i32* (...) @_cdio_list_new()
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %45 = mul i64 %43, %44
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @cdio_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @_cdio_list_free(i32* %57, i32 1, i32* null)
  store i32* null, i32** %3, align 8
  br label %156

59:                                               ; preds = %37
  %60 = load i64, i64* %13, align 8
  %61 = call i32* @calloc(i32 1, i64 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @cdio_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @_cdio_list_free(i32* %69, i32 1, i32* null)
  store i32* null, i32** %3, align 8
  br label %156

71:                                               ; preds = %59
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @iso9660_iso_seek_read(%struct.TYPE_15__* %72, i32* %73, i32 %78, i64 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %71
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @_cdio_list_free(i32* %89, i32 1, i32* null)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %91)
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @free(i32* %93)
  store i32* null, i32** %3, align 8
  br label %156

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %135, %111, %95
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %13, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %96
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = bitcast i32* %105 to i8*
  %107 = bitcast i8* %106 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %6, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = call i64 @iso9660_check_dir_block_end(%struct.TYPE_17__* %108, i32* %10)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %96

112:                                              ; preds = %101
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_16__* @_iso9660_dir_to_statbuf(%struct.TYPE_17__* %113, %struct.TYPE_16__* %114, i32 %117, i32 %120)
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %7, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = icmp ne %struct.TYPE_16__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %112
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ISO_MULTIEXTENT, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32*, i32** %12, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %134 = call i32 @_cdio_list_append(i32* %132, %struct.TYPE_16__* %133)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %135

135:                                              ; preds = %131, %124, %112
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = call i64 @iso9660_get_dir_len(%struct.TYPE_17__* %136)
  %138 = load i32, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  br label %96

142:                                              ; preds = %96
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @free(i32* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %146 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %145)
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = load i64, i64* %13, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @_cdio_list_free(i32* %152, i32 1, i32* bitcast (i32 (%struct.TYPE_16__*)* @iso9660_stat_free to i32*))
  store i32* null, i32** %3, align 8
  br label %156

154:                                              ; preds = %142
  %155 = load i32*, i32** %12, align 8
  store i32* %155, i32** %3, align 8
  br label %156

156:                                              ; preds = %154, %151, %88, %64, %48, %34, %27, %20, %16
  %157 = load i32*, i32** %3, align 8
  ret i32* %157
}

declare dso_local %struct.TYPE_16__* @iso9660_ifs_stat(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @iso9660_stat_free(%struct.TYPE_16__*) #1

declare dso_local i32* @_cdio_list_new(...) #1

declare dso_local i32 @cdio_warn(i8*, i64) #1

declare dso_local i32 @_cdio_list_free(i32*, i32, i32*) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i64 @iso9660_iso_seek_read(%struct.TYPE_15__*, i32*, i32, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @iso9660_check_dir_block_end(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_16__* @_iso9660_dir_to_statbuf(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @_cdio_list_append(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @iso9660_get_dir_len(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
