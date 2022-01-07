; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_profile_tier_level_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_profile_tier_level_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i32*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, %struct.TYPE_3__*)* @hevc_parse_profile_tier_level_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_profile_tier_level_rbsp(i32* %0, i32 %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = call i32 @hevc_parse_inner_profile_tier_level_rbsp(i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %130

21:                                               ; preds = %14, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @bs_remain(i32* %22)
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %130

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @bs_read(i32* %27, i32 8)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %129

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @bs_remain(i32* %34)
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %130

38:                                               ; preds = %33
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %75, %38
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 8
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @bs_read1(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  %53 = ashr i32 128, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @bs_read1(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  %65 = ashr i32 128, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %58
  br label %74

71:                                               ; preds = %42
  %72 = load i32*, i32** %6, align 8
  %73 = call i8* @bs_read(i32* %72, i32 2)
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %39

78:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %125, %78
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %128

83:                                               ; preds = %79
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 128, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = call i32 @hevc_parse_inner_profile_tier_level_rbsp(i32* %93, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %130

102:                                              ; preds = %92, %83
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = ashr i32 128, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %102
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @bs_remain(i32* %112)
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %130

116:                                              ; preds = %111
  %117 = load i32*, i32** %6, align 8
  %118 = call i8* @bs_read(i32* %117, i32 8)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8* %118, i8** %123, align 8
  br label %124

124:                                              ; preds = %116, %102
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %79

128:                                              ; preds = %79
  br label %129

129:                                              ; preds = %128, %26
  store i32 1, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %115, %101, %37, %25, %20
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @hevc_parse_inner_profile_tier_level_rbsp(i32*, i32*) #1

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i64 @bs_read1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
