; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_InitVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_InitVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VOUT_ASPECT_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to determine video type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @InitVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitVideo(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = mul nsw i32 %14, 4
  %16 = sdiv i32 %15, 5
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 5
  %21 = mul nsw i32 %20, 4
  %22 = sdiv i32 %21, 10
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 625
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i32 25, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  store i32 576, i32* %35, align 4
  %36 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %37 = mul nsw i32 4, %36
  %38 = sdiv i32 %37, 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  store i32 0, i32* %42, align 4
  br label %174

43:                                               ; preds = %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 525
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i32 30000, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  store i32 1001, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  store i32 480, i32* %54, align 4
  %55 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %56 = mul nsw i32 4, %55
  %57 = sdiv i32 %56, 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  store i32 0, i32* %61, align 4
  br label %173

62:                                               ; preds = %43
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1125
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 2640
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i32 25, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 6
  store i32 1080, i32* %76, align 4
  %77 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %78 = mul nsw i32 16, %77
  %79 = sdiv i32 %78, 9
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 8
  store i32 1, i32* %83, align 4
  br label %172

84:                                               ; preds = %67, %62
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1125
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 2200
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i32 30000, i32* %94, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store i32 1001, i32* %96, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  store i32 1080, i32* %98, align 4
  %99 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %100 = mul nsw i32 16, %99
  %101 = sdiv i32 %100, 9
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 8
  store i32 1, i32* %105, align 4
  br label %171

106:                                              ; preds = %89, %84
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 750
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 1980
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i32 50, i32* %116, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  store i32 720, i32* %120, align 4
  %121 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %122 = mul nsw i32 16, %121
  %123 = sdiv i32 %122, 9
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 8
  store i32 1, i32* %127, align 4
  br label %170

128:                                              ; preds = %111, %106
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 750
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %134, 1650
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i32 60000, i32* %138, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  store i32 1001, i32* %140, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 6
  store i32 720, i32* %142, align 4
  %143 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %144 = mul nsw i32 16, %143
  %145 = sdiv i32 %144, 9
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 8
  store i32 1, i32* %149, align 4
  br label %169

150:                                              ; preds = %133, %128
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = call i32 @msg_Warn(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  store i32 25, i32* %154, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  store i32 1, i32* %156, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %163 = mul nsw i32 16, %162
  %164 = sdiv i32 %163, 9
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 8
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %150, %136
  br label %170

170:                                              ; preds = %169, %114
  br label %171

171:                                              ; preds = %170, %92
  br label %172

172:                                              ; preds = %171, %70
  br label %173

173:                                              ; preds = %172, %48
  br label %174

174:                                              ; preds = %173, %29
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 4
  ret void
}

declare dso_local i32 @msg_Warn(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
