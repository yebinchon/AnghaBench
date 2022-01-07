; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_super_and_bgd_loc2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_super_and_bgd_loc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_super_and_bgd_loc2(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ext2fs_group_first_block2(%struct.TYPE_7__* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1024
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %27, %6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i64 @ext2fs_has_feature_meta_bg(%struct.TYPE_8__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %20, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %48, %53
  store i32 %54, i32* %20, align 4
  br label %55

55:                                               ; preds = %45, %39
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ext2fs_bg_has_super(%struct.TYPE_7__* %56, i32 %57)
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %19, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 @EXT2_DESC_PER_BLOCK(%struct.TYPE_8__* %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %18, align 4
  %72 = udiv i32 %70, %71
  store i32 %72, i32* %17, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i64 @ext2fs_has_feature_meta_bg(%struct.TYPE_8__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %78, %65
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %89, %86
  br label %124

96:                                               ; preds = %78
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %18, align 4
  %99 = urem i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %18, align 4
  %104 = urem i32 %102, %103
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %18, align 4
  %109 = urem i32 %107, %108
  %110 = load i32, i32* %18, align 4
  %111 = sub i32 %110, 1
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %106, %101, %96
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %21, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %117, %106
  br label %124

124:                                              ; preds = %123, %95
  %125 = load i32*, i32** %9, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32*, i32** %10, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %10, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32*, i32** %12, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = load i32*, i32** %12, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  ret i32 0
}

declare dso_local i32 @ext2fs_group_first_block2(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ext2fs_has_feature_meta_bg(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_bg_has_super(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @EXT2_DESC_PER_BLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
