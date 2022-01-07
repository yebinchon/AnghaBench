; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@MZAP_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"upgrading obj %llu: intsz=%u numint=%llu name=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_update(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %17, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* @RW_WRITER, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @zap_lockdir(i32* %23, i32 %24, i32* %25, i32 %26, i32 %27, i32 %28, i32 %29, %struct.TYPE_15__** %16)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %8, align 4
  br label %136

35:                                               ; preds = %7
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call %struct.TYPE_16__* @zap_name_alloc(%struct.TYPE_15__* %36, i8* %37, i32 0)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %19, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %40 = icmp eq %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @zap_unlockdir(%struct.TYPE_15__* %42, i32 %43)
  %45 = load i32, i32* @ENOTSUP, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %136

47:                                               ; preds = %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* @FTAG, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @fzap_update(%struct.TYPE_16__* %53, i32 %54, i32 %55, i8* %56, i32 %57, i32* %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %16, align 8
  br label %118

63:                                               ; preds = %47
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 8
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = load i64, i64* @MZAP_NAME_LEN, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %69, %66, %63
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i8* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* @FTAG, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @mzap_upgrade(%struct.TYPE_15__** %81, i32 %82, i32* %83, i32 0)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %74
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @FTAG, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @fzap_update(%struct.TYPE_16__* %88, i32 %89, i32 %90, i8* %91, i32 %92, i32* %93)
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %87, %74
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %16, align 8
  br label %117

99:                                               ; preds = %69
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %101 = call i32* @mze_find(%struct.TYPE_16__* %100)
  store i32* %101, i32** %20, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32*, i32** %17, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %108 = load i32*, i32** %20, align 8
  %109 = call %struct.TYPE_14__* @MZE_PHYS(%struct.TYPE_15__* %107, i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  br label %116

111:                                              ; preds = %99
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mzap_addent(%struct.TYPE_16__* %112, i32 %114)
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = icmp eq %struct.TYPE_15__* %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %127 = call i32 @zap_name_free(%struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %129 = icmp ne %struct.TYPE_15__* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %132 = load i32, i32* @FTAG, align 4
  %133 = call i32 @zap_unlockdir(%struct.TYPE_15__* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %118
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %41, %33
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_16__* @zap_name_alloc(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @zap_unlockdir(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_update(%struct.TYPE_16__*, i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @mzap_upgrade(%struct.TYPE_15__**, i32, i32*, i32) #1

declare dso_local i32* @mze_find(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @MZE_PHYS(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @mzap_addent(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
