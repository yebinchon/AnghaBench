; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moving_average_s = type { i32, %struct.mva_packet_s* }
%struct.mva_packet_s = type { i64 }

@MVA_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moving_average_s*)* @mva_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mva_get(%struct.moving_average_s* %0) #0 {
  %2 = alloca %struct.moving_average_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mva_packet_s*, align 8
  %5 = alloca %struct.mva_packet_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.moving_average_s* %0, %struct.moving_average_s** %2, align 8
  store %struct.mva_packet_s* null, %struct.mva_packet_s** %4, align 8
  store %struct.mva_packet_s* null, %struct.mva_packet_s** %5, align 8
  %10 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %11 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MVA_PACKETS, align 4
  %14 = icmp uge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %1
  %19 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %20 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MVA_PACKETS, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %86, %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %28 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %25
  %32 = load %struct.mva_packet_s*, %struct.mva_packet_s** %4, align 8
  %33 = icmp ne %struct.mva_packet_s* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %36 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %35, i32 0, i32 1
  %37 = load %struct.mva_packet_s*, %struct.mva_packet_s** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MVA_PACKETS, align 4
  %40 = urem i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %37, i64 %41
  %43 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mva_packet_s*, %struct.mva_packet_s** %4, align 8
  %46 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %34, %31
  %50 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %51 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %50, i32 0, i32 1
  %52 = load %struct.mva_packet_s*, %struct.mva_packet_s** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MVA_PACKETS, align 4
  %55 = urem i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %52, i64 %56
  store %struct.mva_packet_s* %57, %struct.mva_packet_s** %4, align 8
  br label %58

58:                                               ; preds = %49, %34
  %59 = load %struct.mva_packet_s*, %struct.mva_packet_s** %5, align 8
  %60 = icmp ne %struct.mva_packet_s* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %63 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %62, i32 0, i32 1
  %64 = load %struct.mva_packet_s*, %struct.mva_packet_s** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MVA_PACKETS, align 4
  %67 = urem i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %64, i64 %68
  %70 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mva_packet_s*, %struct.mva_packet_s** %5, align 8
  %73 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %61, %58
  %77 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %78 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %77, i32 0, i32 1
  %79 = load %struct.mva_packet_s*, %struct.mva_packet_s** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @MVA_PACKETS, align 4
  %82 = urem i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %79, i64 %83
  store %struct.mva_packet_s* %84, %struct.mva_packet_s** %5, align 8
  br label %85

85:                                               ; preds = %76, %61
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %25

89:                                               ; preds = %25
  br label %91

90:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %92 = load i32, i32* %3, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %139, %91
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %96 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %142

99:                                               ; preds = %93
  %100 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %101 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %100, i32 0, i32 1
  %102 = load %struct.mva_packet_s*, %struct.mva_packet_s** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @MVA_PACKETS, align 4
  %105 = urem i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %102, i64 %106
  %108 = load %struct.mva_packet_s*, %struct.mva_packet_s** %4, align 8
  %109 = icmp eq %struct.mva_packet_s* %107, %108
  br i1 %109, label %121, label %110

110:                                              ; preds = %99
  %111 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %112 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %111, i32 0, i32 1
  %113 = load %struct.mva_packet_s*, %struct.mva_packet_s** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @MVA_PACKETS, align 4
  %116 = urem i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %113, i64 %117
  %119 = load %struct.mva_packet_s*, %struct.mva_packet_s** %5, align 8
  %120 = icmp eq %struct.mva_packet_s* %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110, %99
  br label %139

122:                                              ; preds = %110
  %123 = load %struct.moving_average_s*, %struct.moving_average_s** %2, align 8
  %124 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %123, i32 0, i32 1
  %125 = load %struct.mva_packet_s*, %struct.mva_packet_s** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @MVA_PACKETS, align 4
  %128 = urem i32 %126, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %125, i64 %129
  %131 = getelementptr inbounds %struct.mva_packet_s, %struct.mva_packet_s* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %122, %121
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %93

142:                                              ; preds = %93
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %7, align 4
  %148 = udiv i32 %146, %147
  br label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i32 [ %148, %145 ], [ 0, %149 ]
  ret i32 %151
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
