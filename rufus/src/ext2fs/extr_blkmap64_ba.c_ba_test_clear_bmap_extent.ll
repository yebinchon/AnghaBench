; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_test_clear_bmap_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_test_clear_bmap_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @ba_test_clear_bmap_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ba_test_clear_bmap_extent(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 3
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = urem i32 %26, 8
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %18, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 3
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = srem i32 %40, 8
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 8, %45
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 8, %48
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %53, %54
  %56 = sub i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %58

57:                                               ; preds = %44
  store i32 7, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %68, %58
  %61 = load i32, i32* %17, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %16, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = and i32 %74, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %145

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub i32 8, %86
  %88 = icmp ule i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %145

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub i32 %94, %95
  %97 = urem i32 %96, 8
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sub i32 %98, %99
  %101 = lshr i32 %100, 3
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %91, %3
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = sub i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %116, %105
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %16, align 4
  br label %108

119:                                              ; preds = %108
  %120 = load i32, i32* %14, align 4
  %121 = load i8*, i8** %18, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = and i32 %120, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %145

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* %4, align 4
  br label %145

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %102
  %139 = load i8*, i8** %18, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @ext2fs_mem_is_zero(i8* %142, i32 %143)
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %138, %135, %131, %89, %83
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @ext2fs_mem_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
