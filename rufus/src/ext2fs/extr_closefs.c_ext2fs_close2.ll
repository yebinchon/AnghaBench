; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_close2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_close2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_17__*, i64 (%struct.TYPE_16__*)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)* }
%struct.TYPE_15__ = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_FLAG_SUPER_ONLY = common dso_local global i32 0, align 4
@EXT2_FLAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_close2(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %11 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_16__* %9, i32 %10)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  %14 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %13, align 8
  %15 = icmp ne i64 (%struct.TYPE_16__*)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %19 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i64 %19(%struct.TYPE_16__* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %148

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)*, i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)*, i32 (%struct.TYPE_17__*, %struct.TYPE_15__**)** %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_17__* %53, %struct.TYPE_15__** %8)
  br label %55

55:                                               ; preds = %43, %34, %27
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %122

58:                                               ; preds = %55
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %122

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EXT2_FLAG_RW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %63
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 10
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %75
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EXT2_FLAG_SUPER_ONLY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 1024
  %98 = sdiv i32 %93, %97
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %99
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %92, %70
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i32, i32* @EXT2_FLAG_SUPER_ONLY, align 4
  %115 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %106
  br label %122

122:                                              ; preds = %121, %63, %58, %55
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @ext2fs_flush2(%struct.TYPE_16__* %130, i32 %131)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i64, i64* %6, align 8
  store i64 %136, i64* %3, align 8
  br label %148

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %122
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = call i64 @ext2fs_mmp_stop(%struct.TYPE_16__* %139)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i64, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  br label %148

145:                                              ; preds = %138
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = call i32 @ext2fs_free(%struct.TYPE_16__* %146)
  store i64 0, i64* %3, align 8
  br label %148

148:                                              ; preds = %145, %143, %135, %24
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ext2fs_flush2(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ext2fs_mmp_stop(%struct.TYPE_16__*) #1

declare dso_local i32 @ext2fs_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
