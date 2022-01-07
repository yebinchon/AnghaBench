; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_fs_readdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_fs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32*, i32* }

@_STAT_DIR = common dso_local global i64 0, align 8
@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't calloc(1, %d)\00", align 1
@dunno = common dso_local global i32 0, align 4
@ISO_MULTIEXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @iso9660_fs_readdir(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = icmp ne %struct.TYPE_19__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %153

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %153

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.TYPE_16__* @iso9660_fs_stat(%struct.TYPE_19__* %25, i8* %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %9, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %153

31:                                               ; preds = %20
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_STAT_DIR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %38)
  store i32* null, i32** %3, align 8
  br label %153

40:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %41 = call i32* (...) @_cdio_list_new()
  store i32* %41, i32** %12, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %48 = mul i32 %46, %47
  %49 = call i32* @calloc(i32 1, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %40
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %59 = mul i32 %57, %58
  %60 = call i32 @cdio_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @iso9660_dirlist_free(i32* %63)
  store i32* null, i32** %3, align 8
  br label %153

65:                                               ; preds = %40
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @cdio_read_data_sectors(%struct.TYPE_19__* %66, i32* %67, i32 %72, i32 %73, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @iso9660_dirlist_free(i32* %84)
  store i32* null, i32** %3, align 8
  br label %153

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %129, %107, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %95 = mul i32 %93, %94
  %96 = icmp ult i32 %88, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %87
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = bitcast i32* %101 to i8*
  %103 = bitcast i8* %102 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %7, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = call i64 @iso9660_check_dir_block_end(%struct.TYPE_17__* %104, i32* %10)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %87

108:                                              ; preds = %97
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = load i32, i32* @dunno, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_16__* @_iso9660_dir_to_statbuf(%struct.TYPE_17__* %109, %struct.TYPE_16__* %110, i32 %111, i32 %114)
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %8, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %108
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ISO_MULTIEXTENT, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32*, i32** %12, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = call i32 @_cdio_list_append(i32* %126, %struct.TYPE_16__* %127)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  br label %129

129:                                              ; preds = %125, %118, %108
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = call i64 @iso9660_get_dir_len(%struct.TYPE_17__* %130)
  %132 = load i32, i32* %10, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  br label %87

136:                                              ; preds = %87
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %144 = mul i32 %142, %143
  %145 = icmp eq i32 %137, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @cdio_assert(i32 %146)
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @free(i32* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = call i32 @iso9660_stat_free(%struct.TYPE_16__* %150)
  %152 = load i32*, i32** %12, align 8
  store i32* %152, i32** %3, align 8
  br label %153

153:                                              ; preds = %136, %81, %52, %37, %30, %19, %15
  %154 = load i32*, i32** %3, align 8
  ret i32* %154
}

declare dso_local %struct.TYPE_16__* @iso9660_fs_stat(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @iso9660_stat_free(%struct.TYPE_16__*) #1

declare dso_local i32* @_cdio_list_new(...) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @cdio_warn(i8*, i32) #1

declare dso_local i32 @iso9660_dirlist_free(i32*) #1

declare dso_local i64 @cdio_read_data_sectors(%struct.TYPE_19__*, i32*, i32, i32, i32) #1

declare dso_local i64 @iso9660_check_dir_block_end(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_16__* @_iso9660_dir_to_statbuf(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @_cdio_list_append(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @iso9660_get_dir_len(%struct.TYPE_17__*) #1

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
