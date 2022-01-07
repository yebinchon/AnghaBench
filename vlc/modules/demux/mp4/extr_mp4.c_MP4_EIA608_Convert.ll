; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_EIA608_Convert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_EIA608_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }

@SSIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cdat\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cdt2\00", align 1
@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*)* @MP4_EIA608_Convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @MP4_EIA608_Convert(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SSIZE_MAX, align 4
  %14 = icmp sle i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %157

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @GetDWBE(i32* %25)
  %27 = sub nsw i32 %26, 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %157

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -4
  %41 = call i64 @memcmp(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %157

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %47, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 8
  br i1 %61, label %62, label %90

62:                                               ; preds = %44
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @GetDWBE(i32* %65)
  %67 = sub nsw i32 %66, 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ule i64 %69, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %62
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -4
  %82 = call i64 @memcmp(i32* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i64, i64* %8, align 8
  %86 = and i64 %85, -2
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %75
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %44
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = sdiv i32 %93, 2
  %95 = mul nsw i32 %94, 3
  %96 = call %struct.TYPE_6__* @block_Alloc(i32 %95)
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %3, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = icmp eq %struct.TYPE_6__* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %157

103:                                              ; preds = %90
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %9, align 8
  br label %107

107:                                              ; preds = %110, %103
  %108 = load i32, i32* %4, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = call i8* @CC_PKT_BYTE0(i32 0)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %5, align 8
  %117 = load i32, i32* %115, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %5, align 8
  %122 = load i32, i32* %120, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 2
  store i32 %126, i32* %4, align 4
  br label %107

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %131, %127
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = call i8* @CC_PKT_BYTE0(i32 0)
  %133 = ptrtoint i8* %132 to i32
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %7, align 8
  %138 = load i32, i32* %136, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %7, align 8
  %143 = load i32, i32* %141, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %146, 2
  store i32 %147, i32* %6, align 4
  br label %128

148:                                              ; preds = %128
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %102, %43, %33, %21
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %159 = call i32 @block_Release(%struct.TYPE_6__* %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %160
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @CC_PKT_BYTE0(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
