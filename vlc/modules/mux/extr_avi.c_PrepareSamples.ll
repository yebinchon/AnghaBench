; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_PrepareSamples.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_PrepareSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32* }

@VIDEO_ES = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__**)* @PrepareSamples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrepareSamples(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VIDEO_ES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @VLC_FOURCC(i8 signext 88, i8 signext 86, i8 signext 73, i8 signext 68)
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_13__* @block_Realloc(%struct.TYPE_13__* %43, i64 %44, i32 %48)
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %50, align 8
  %51 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %34
  %55 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %55, i32* %4, align 4
  br label %184

56:                                               ; preds = %34
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 1
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @memcpy(i32* %60, %struct.TYPE_15__* %64, i64 %65)
  br label %67

67:                                               ; preds = %56, %26
  br label %68

68:                                               ; preds = %67, %20, %3
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VIDEO_ES, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %182

74:                                               ; preds = %68
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BI_RGB, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %182

82:                                               ; preds = %74
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 24
  br i1 %88, label %89, label %182

89:                                               ; preds = %82
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 16711680
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 255
  br i1 %100, label %101, label %182

101:                                              ; preds = %95, %89
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ctz(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ctz(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ctz(i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %12, align 8
  store i64 0, i64* %13, align 8
  br label %121

121:                                              ; preds = %178, %101
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %122, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %121
  %131 = load i32*, i32** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = mul i64 %132, 3
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32* %134, i32** %14, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 16
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %138, %142
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %143, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %148, %152
  %154 = load i32, i32* %11, align 4
  %155 = lshr i32 %153, %154
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %158, %162
  %164 = load i32, i32* %10, align 4
  %165 = lshr i32 %163, %164
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %168, %172
  %174 = load i32, i32* %9, align 4
  %175 = lshr i32 %173, %174
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %130
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %13, align 8
  br label %121

181:                                              ; preds = %121
  br label %182

182:                                              ; preds = %181, %95, %82, %74, %68
  %183 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %54
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_13__* @block_Realloc(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @ctz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
