; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_getfree.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_getfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i64* }

@FR_OK = common dso_local global i64 0, align 8
@FS_FAT12 = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FS_FAT16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_getfree(i32* %0, i32* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %18 = call i64 @find_volume(%struct.TYPE_8__** %17, i32** %5, i32 0)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @FR_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %145

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 2
  %32 = icmp sle i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %144

38:                                               ; preds = %24
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  store i32 0, i32* %10, align 4
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @FS_FAT12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %38
  store i32 2, i32* %11, align 4
  br label %46

46:                                               ; preds = %66, %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @get_fat(%struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %53, i64* %8, align 8
  br label %73

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %58, i64* %8, align 8
  br label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %46, label %73

73:                                               ; preds = %66, %57, %52
  br label %134

74:                                               ; preds = %38
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64* null, i64** %16, align 8
  br label %81

81:                                               ; preds = %129, %74
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = call i64 @move_window(%struct.TYPE_8__* %85, i32 %86)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @FR_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %133

93:                                               ; preds = %84
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %16, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = call i64 @SS(%struct.TYPE_8__* %97)
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %93, %81
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @FS_FAT16, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i64*, i64** %16, align 8
  %105 = call i64 @LD_WORD(i64* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i64*, i64** %16, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  store i64* %112, i64** %16, align 8
  %113 = load i64, i64* %14, align 8
  %114 = sub nsw i64 %113, 2
  store i64 %114, i64* %14, align 8
  br label %128

115:                                              ; preds = %99
  %116 = load i64*, i64** %16, align 8
  %117 = call i32 @LD_DWORD(i64* %116)
  %118 = and i32 %117, 268435455
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i64*, i64** %16, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 4
  store i64* %125, i64** %16, align 8
  %126 = load i64, i64* %14, align 8
  %127 = sub nsw i64 %126, 4
  store i64 %127, i64* %14, align 8
  br label %128

128:                                              ; preds = %123, %110
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %81, label %133

133:                                              ; preds = %129, %92
  br label %134

134:                                              ; preds = %133, %73
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %6, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %134, %33
  br label %145

145:                                              ; preds = %144, %3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @LEAVE_FF(%struct.TYPE_8__* %146, i64 %147)
  %149 = load i64, i64* %4, align 8
  ret i64 %149
}

declare dso_local i64 @find_volume(%struct.TYPE_8__**, i32**, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @move_window(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @SS(%struct.TYPE_8__*) #1

declare dso_local i64 @LD_WORD(i64*) #1

declare dso_local i32 @LD_DWORD(i64*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
