; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_decode_initial.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_decode_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@VORBIS_bad_packet_type = common dso_local global i32 0, align 4
@EOP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32*)* @vorbis_decode_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_decode_initial(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %56, %6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  br label %181

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = call i32 @maybe_start_packet(%struct.TYPE_11__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %7, align 4
  br label %181

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = call i32 @get_bits(%struct.TYPE_11__* %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = call i64 @IS_PUSH_MODE(%struct.TYPE_11__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load i32, i32* @VORBIS_bad_packet_type, align 4
  %48 = call i32 @error(%struct.TYPE_11__* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %181

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %55, %49
  %51 = load i32, i32* @EOP, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = call i32 @get8_packet(%struct.TYPE_11__* %52)
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %50

56:                                               ; preds = %50
  br label %24

57:                                               ; preds = %37
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  br label %74

74:                                               ; preds = %63, %57
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @ilog(i32 %79)
  %81 = call i32 @get_bits(%struct.TYPE_11__* %75, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @EOP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %7, align 4
  br label %181

87:                                               ; preds = %74
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %7, align 4
  br label %181

95:                                               ; preds = %87
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %14, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %95
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = call i32 @get_bits(%struct.TYPE_11__* %112, i32 1)
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = call i32 @get_bits(%struct.TYPE_11__* %114, i32 1)
  store i32 %115, i32* %18, align 4
  br label %120

116:                                              ; preds = %95
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %16, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %120
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = ashr i32 %135, 2
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = ashr i32 %142, 2
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  br label %149

145:                                              ; preds = %127, %120
  %146 = load i32*, i32** %9, align 8
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %130
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %16, align 4
  %159 = mul nsw i32 %158, 3
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = ashr i32 %163, 2
  %165 = load i32*, i32** %11, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %16, align 4
  %167 = mul nsw i32 %166, 3
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %167, %170
  %172 = ashr i32 %171, 2
  %173 = load i32*, i32** %12, align 8
  store i32 %172, i32* %173, align 4
  br label %179

174:                                              ; preds = %154, %149
  %175 = load i32, i32* %19, align 4
  %176 = load i32*, i32** %11, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %12, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %174, %157
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %93, %85, %45, %35, %29
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local i32 @maybe_start_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @get_bits(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IS_PUSH_MODE(%struct.TYPE_11__*) #1

declare dso_local i32 @error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @get8_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ilog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
