; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_test_clear_generic_bitmap_range.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_test_clear_generic_bitmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ext2fs_test_clear_generic_bitmap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_test_clear_generic_bitmap_range(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = lshr i32 %22, 3
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = urem i32 %25, 8
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %18, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = lshr i32 %37, 3
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = urem i32 %40, 8
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
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = and i32 %74, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %143

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub i32 8, %85
  %87 = icmp ule i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %143

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub i32 %93, %94
  %96 = urem i32 %95, 8
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub i32 %97, %98
  %100 = lshr i32 %99, 3
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %90, %3
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %137

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
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = and i32 %120, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %143

131:                                              ; preds = %119
  %132 = load i64, i64* %10, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %143

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %102
  %138 = load i8*, i8** %18, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @ext2fs_mem_is_zero(i8* %140, i64 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %134, %130, %88, %82
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @ext2fs_mem_is_zero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
