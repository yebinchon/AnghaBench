; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_mpeg4video.c_ParseVOL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_mpeg4video.c_ParseVOL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32)* @ParseVOL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseVOL(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  br label %19

19:                                               ; preds = %50, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %5, align 4
  br label %162

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 32
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %55

50:                                               ; preds = %44, %39, %34, %29, %24
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %19

55:                                               ; preds = %49
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 4
  %60 = call i32 @bs_init(i32* %14, i32* %57, i32 %59)
  %61 = call i32 @bs_skip(i32* %14, i32 1)
  %62 = call i32 @bs_skip(i32* %14, i32 8)
  %63 = call i64 @bs_read1(i32* %14)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = call i8* @bs_read(i32* %14, i32 4)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = call i32 @bs_skip(i32* %14, i32 3)
  br label %70

69:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = call i8* @bs_read(i32* %14, i32 4)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = call i32 @bs_skip(i32* %14, i32 8)
  %77 = call i32 @bs_skip(i32* %14, i32 8)
  br label %78

78:                                               ; preds = %75, %70
  %79 = call i64 @bs_read1(i32* %14)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = call i32 @bs_skip(i32* %14, i32 2)
  %83 = call i64 @bs_read1(i32* %14)
  %84 = call i64 @bs_read1(i32* %14)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = call i32 @bs_skip(i32* %14, i32 16)
  %88 = call i32 @bs_skip(i32* %14, i32 16)
  %89 = call i32 @bs_skip(i32* %14, i32 16)
  %90 = call i32 @bs_skip(i32* %14, i32 3)
  %91 = call i32 @bs_skip(i32* %14, i32 11)
  %92 = call i32 @bs_skip(i32* %14, i32 1)
  %93 = call i32 @bs_skip(i32* %14, i32 16)
  br label %94

94:                                               ; preds = %86, %81
  br label %95

95:                                               ; preds = %94, %78
  %96 = call i8* @bs_read(i32* %14, i32 2)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @bs_skip(i32* %14, i32 4)
  br label %105

105:                                              ; preds = %103, %100, %95
  %106 = call i64 @bs_read1(i32* %14)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %109, i32* %5, align 4
  br label %162

110:                                              ; preds = %105
  %111 = call i8* @bs_read(i32* %14, i32 16)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %110
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %110
  %123 = call i64 @bs_read1(i32* %14)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %126, i32* %5, align 4
  br label %162

127:                                              ; preds = %122
  %128 = call i64 @bs_read1(i32* %14)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @vlc_log2(i32 %134)
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 1, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %130
  %141 = load i32, i32* %15, align 4
  %142 = call i8* @bs_read(i32* %14, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %127
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = call i32 @bs_skip(i32* %14, i32 1)
  %150 = call i8* @bs_read(i32* %14, i32 13)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  %154 = call i32 @bs_skip(i32* %14, i32 1)
  %155 = call i8* @bs_read(i32* %14, i32 13)
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  %159 = call i32 @bs_skip(i32* %14, i32 1)
  br label %160

160:                                              ; preds = %148, %145
  %161 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %125, %108, %22
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @bs_init(i32*, i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @vlc_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
