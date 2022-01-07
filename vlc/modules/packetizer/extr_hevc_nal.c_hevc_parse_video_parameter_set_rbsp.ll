; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_video_parameter_set_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_video_parameter_set_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_4__*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @hevc_parse_video_parameter_set_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_video_parameter_set_rbsp(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @bs_remain(i32* %7)
  %9 = icmp slt i32 %8, 134
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %155

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @bs_read(i32* %12, i32 4)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 13
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @bs_read1(i32* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 12
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @bs_read1(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @bs_read(i32* %24, i32 6)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @bs_read(i32* %28, i32 3)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @bs_read1(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @bs_skip(i32* %37, i32 16)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  %45 = call i32 @hevc_parse_profile_tier_level_rbsp(i32* %39, i32 1, i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %155

48:                                               ; preds = %11
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @bs_read1(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i32 [ 0, %57 ], [ %61, %58 ]
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %98, %62
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ule i32 %65, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @bs_read_ue(i32* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i8* %72, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @bs_read_ue(i32* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i8* %81, i8** %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i8* @bs_read_ue(i32* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  br label %98

98:                                               ; preds = %70
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %64

101:                                              ; preds = %64
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @bs_remain(i32* %102)
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %155

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = call i8* @bs_read(i32* %107, i32 6)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @bs_read_ue(i32* %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 %120, %124
  %126 = call i32 @bs_skip(i32* %117, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @bs_remain(i32* %127)
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %131

130:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %155

131:                                              ; preds = %106
  %132 = load i32*, i32** %4, align 8
  %133 = call i8* @bs_read1(i32* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load i32*, i32** %4, align 8
  %142 = call i8* @bs_read(i32* %141, i32 32)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i8* @bs_read(i32* %145, i32 32)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %140, %131
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @bs_remain(i32* %150)
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %155

154:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %153, %130, %105, %47, %10
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @hevc_parse_profile_tier_level_rbsp(i32*, i32, i32, i32*) #1

declare dso_local i8* @bs_read_ue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
