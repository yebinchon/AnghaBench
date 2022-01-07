; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_open.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_8__*, i8*, i32, i8*, i32 }

@EXT2_ET_BAD_DEVICE_NAME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EXT2_MIN_BLOCK_SIZE = common dso_local global i8* null, align 8
@EXT2_ET_MAGIC_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_NT_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.TYPE_8__**)* @nt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nt_open(i8* %0, i32 %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @EXT2_ET_BAD_DEVICE_NAME, align 8
  store i64 %14, i64* %4, align 8
  br label %145

15:                                               ; preds = %3
  %16 = call %struct.TYPE_8__* @calloc(i32 1, i32 4)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @ENOMEM, align 8
  store i64 %20, i64* %10, align 8
  br label %105

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  %25 = call %struct.TYPE_8__* @calloc(i32 %24, i32 1)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @ENOMEM, align 8
  store i64 %33, i64* %10, align 8
  br label %105

34:                                               ; preds = %21
  %35 = call %struct.TYPE_8__* @calloc(i32 1, i32 4)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %9, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @ENOMEM, align 8
  store i64 %39, i64* %10, align 8
  br label %105

40:                                               ; preds = %34
  %41 = load i8*, i8** @EXT2_MIN_BLOCK_SIZE, align 8
  %42 = call %struct.TYPE_8__* @malloc(i8* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i64, i64* @ENOMEM, align 8
  store i64 %50, i64* %10, align 8
  br label %105

51:                                               ; preds = %40
  %52 = load i32, i32* @EXT2_ET_MAGIC_IO_CHANNEL, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = call i32 (...) @nt_io_manager()
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcpy(%struct.TYPE_8__* %60, i8* %61)
  %63 = load i8*, i8** @EXT2_MIN_BLOCK_SIZE, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 11
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @EXT2_ET_MAGIC_NT_IO_CHANNEL, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = load i8*, i8** @EXT2_MIN_BLOCK_SIZE, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @EXT2_FLAG_RW, align 4
  %82 = call i32 @BooleanFlagOn(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = call i32 @_Ext2OpenDevice(i8* %79, i32 %85, i32** %87, i32* %89, i32* %91, i32* %93, i64* %10)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %51
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @EIO, align 8
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %99, %96
  br label %105

102:                                              ; preds = %51
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %104, align 8
  br label %105

105:                                              ; preds = %102, %101, %49, %38, %32, %19
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %105
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_8__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = call i32 @free(%struct.TYPE_8__* %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = icmp ne %struct.TYPE_8__* %119, null
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @_UnlockDrive(i32* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @_CloseDisk(i32* %133)
  br label %135

135:                                              ; preds = %126, %121
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = call i32 @free(%struct.TYPE_8__* %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = call i32 @free(%struct.TYPE_8__* %140)
  br label %142

142:                                              ; preds = %135, %118
  br label %143

143:                                              ; preds = %142, %105
  %144 = load i64, i64* %10, align 8
  store i64 %144, i64* %4, align 8
  br label %145

145:                                              ; preds = %143, %13
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_8__* @malloc(i8*) #1

declare dso_local i32 @nt_io_manager(...) #1

declare dso_local i32 @strcpy(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @_Ext2OpenDevice(i8*, i32, i32**, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @_UnlockDrive(i32*) #1

declare dso_local i32 @_CloseDisk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
