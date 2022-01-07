; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_color_config.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_color_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av1_color_config_s = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@COLOR_RANGE_FULL = common dso_local global i8* null, align 8
@COLOR_RANGE_LIMITED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.av1_color_config_s*, i32)* @av1_parse_color_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_parse_color_config(i32* %0, %struct.av1_color_config_s* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.av1_color_config_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.av1_color_config_s* %1, %struct.av1_color_config_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @bs_read1(i32* %8)
  %10 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %11 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %10, i32 0, i32 10
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %16 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %15, i32 0, i32 10
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @bs_read1(i32* %20)
  %22 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %23 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @bs_read1(i32* %28)
  %30 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %31 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %35 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %34, i32 0, i32 11
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %46

39:                                               ; preds = %33
  %40 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %41 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %40, i32 0, i32 10
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 10, i32 8
  br label %46

46:                                               ; preds = %39, %38
  %47 = phi i32 [ 12, %38 ], [ %45, %39 ]
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @bs_read1(i32* %48)
  %50 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %51 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %53 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %52, i32 0, i32 9
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %46
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @bs_read(i32* %57, i32 8)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %61 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @bs_read(i32* %62, i32 8)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %66 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @bs_read(i32* %67, i32 8)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %71 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %79

72:                                               ; preds = %46
  %73 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %74 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %73, i32 0, i32 0
  store i32 2, i32* %74, align 8
  %75 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %76 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %75, i32 0, i32 1
  store i32 2, i32* %76, align 4
  %77 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %78 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %77, i32 0, i32 2
  store i32 2, i32* %78, align 8
  br label %79

79:                                               ; preds = %72, %56
  %80 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %81 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = call i8* @bs_read1(i32* %85)
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i8*, i8** @COLOR_RANGE_FULL, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load i8*, i8** @COLOR_RANGE_LIMITED, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i8* [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %95 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %169

96:                                               ; preds = %79
  %97 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %98 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %103 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 13
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %108 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** @COLOR_RANGE_FULL, align 8
  %113 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %114 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  br label %168

115:                                              ; preds = %106, %101, %96
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @bs_read1(i32* %116)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i8*, i8** @COLOR_RANGE_FULL, align 8
  br label %123

121:                                              ; preds = %115
  %122 = load i8*, i8** @COLOR_RANGE_LIMITED, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %126 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %152

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 12
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32*, i32** %4, align 8
  %134 = call i8* @bs_read1(i32* %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %137 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %139 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load i32*, i32** %4, align 8
  %144 = call i8* @bs_read1(i32* %143)
  %145 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %146 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %132
  br label %151

148:                                              ; preds = %129
  %149 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %150 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %149, i32 0, i32 3
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %147
  br label %152

152:                                              ; preds = %151, %123
  %153 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %154 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %159 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32*, i32** %4, align 8
  %164 = call i8* @bs_read(i32* %163, i32 2)
  %165 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %166 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %162, %157, %152
  br label %168

168:                                              ; preds = %167, %111
  br label %169

169:                                              ; preds = %168, %92
  %170 = load i32*, i32** %4, align 8
  %171 = call i8* @bs_read1(i32* %170)
  %172 = load %struct.av1_color_config_s*, %struct.av1_color_config_s** %5, align 8
  %173 = getelementptr inbounds %struct.av1_color_config_s, %struct.av1_color_config_s* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  ret i32 1
}

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
