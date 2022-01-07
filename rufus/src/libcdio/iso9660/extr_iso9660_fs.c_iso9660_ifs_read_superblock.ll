; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_ifs_read_superblock.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_iso9660_ifs_read_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@ISO_PVD_SECTOR = common dso_local global i64 0, align 8
@ISO_VD_END = common dso_local global i64 0, align 8
@ISO_VD_SUPPLEMENTARY = common dso_local global i64 0, align 8
@ISO_EXTENSION_JOLIET_LEVEL1 = common dso_local global i32 0, align 4
@ISO_EXTENSION_JOLIET_LEVEL2 = common dso_local global i32 0, align 4
@ISO_EXTENSION_JOLIET_LEVEL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Supplementary Volume Descriptor found, but not Joliet\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Found Extension: Joliet Level %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_ifs_read_superblock(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = call i32 @iso9660_ifs_read_pvd(%struct.TYPE_8__* %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %113

17:                                               ; preds = %10
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %109, %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i64, i64* @ISO_PVD_SECTOR, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i64 @iso9660_iso_seek_read(%struct.TYPE_8__* %21, %struct.TYPE_9__* %6, i64 %25, i32 1)
  %27 = icmp ne i64 0, %26
  br i1 %27, label %28, label %112

28:                                               ; preds = %20
  %29 = load i64, i64* @ISO_VD_END, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @from_711(i32 %31)
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %112

35:                                               ; preds = %28
  %36 = load i64, i64* @ISO_VD_SUPPLEMENTARY, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @from_711(i32 %38)
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = call i32 @memcpy(i32* %48, %struct.TYPE_9__* %6, i32 16)
  br label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %107

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %107

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %94 [
    i32 64, label %67
    i32 67, label %76
    i32 69, label %85
  ]

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ISO_EXTENSION_JOLIET_LEVEL1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 1, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  br label %96

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ISO_EXTENSION_JOLIET_LEVEL2, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i64 2, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  br label %96

85:                                               ; preds = %62
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ISO_EXTENSION_JOLIET_LEVEL3, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i64 3, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %85
  br label %96

94:                                               ; preds = %62
  %95 = call i32 (i8*, ...) @cdio_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93, %84, %75
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @cdio_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %56, %50
  br label %108

108:                                              ; preds = %107, %35
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %20

112:                                              ; preds = %34, %20
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %16
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @iso9660_ifs_read_pvd(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @iso9660_iso_seek_read(%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @from_711(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @cdio_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
