; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_srtp_crypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_srtp_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SRTP_UNENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64)* @srtp_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srtp_crypt(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp uge i64 %18, 12
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 6
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %165

29:                                               ; preds = %3
  store i32 12, i32* %8, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  %34 = mul nsw i32 %33, 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 16
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %165

51:                                               ; preds = %42
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 -2
  %57 = call i32 @memcpy(i32* %9, i32* %56, i32 2)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @htons(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %51, %29
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %4, align 4
  br label %165

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @rtp_seq(i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @srtp_compute_roc(%struct.TYPE_6__* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  %77 = call i32 @memcpy(i32* %12, i32* %76, i32 4)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %69
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = call i32 @UINT64_C(i32 1)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %132

107:                                              ; preds = %69
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sge i32 %110, 64
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = ashr i32 %116, %117
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112, %107
  %122 = load i32, i32* @EACCES, align 4
  store i32 %122, i32* %4, align 4
  br label %165

123:                                              ; preds = %112
  %124 = call i32 @UINT64_C(i32 1)
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %124, %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %123, %85
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SRTP_UNENCRYPTED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %165

140:                                              ; preds = %132
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i64, i64* %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %156, %158
  %160 = call i64 @rtp_crypt(i32 %144, i32 %145, i32 %146, i32 %147, i32 %151, i32* %155, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %140
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %4, align 4
  br label %165

164:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %162, %139, %121, %67, %49, %27
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rtp_seq(i32*) #1

declare dso_local i32 @srtp_compute_roc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i64 @rtp_crypt(i32, i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
