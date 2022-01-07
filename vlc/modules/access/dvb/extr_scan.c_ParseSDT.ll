; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_ParseSDT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_ParseSDT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }

@UINT8_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_22__*)* @ParseSDT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseSDT(i32* %0, i32* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @VLC_UNUSED(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_20__* @scan_FindMultiplex(i32* %15, i32 %18)
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %7, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = icmp eq %struct.TYPE_20__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %150

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %29 = call i32 @scan_SetMultiplexScanStatus(i32* %27, %struct.TYPE_20__* %28, i32 1)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UINT8_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %26
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %8, align 8
  br label %45

45:                                               ; preds = %146, %41
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %150

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_19__* @scan_multiplex_FindService(%struct.TYPE_20__* %49, i32 %52)
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %10, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = icmp eq %struct.TYPE_19__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_19__* @scan_service_New(i32 %59)
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %10, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = icmp eq %struct.TYPE_19__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %146

67:                                               ; preds = %56
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = call i32 @scan_multiplex_AddService(%struct.TYPE_20__* %68, %struct.TYPE_19__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = call i32 @scan_service_Delete(%struct.TYPE_19__* %73)
  br label %146

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %11, align 8
  br label %85

85:                                               ; preds = %134, %76
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %87 = icmp ne %struct.TYPE_24__* %86, null
  br i1 %87, label %88, label %138

88:                                               ; preds = %85
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 72
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %134

94:                                               ; preds = %88
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %96 = call %struct.TYPE_21__* @dvbpsi_DecodeServiceDr(%struct.TYPE_24__* %95)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %12, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %99, label %133

99:                                               ; preds = %94
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @vlc_from_EIT(i32 %107, i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @vlc_from_EIT(i32 %121, i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %114, %94
  br label %134

134:                                              ; preds = %133, %93
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  store %struct.TYPE_24__* %137, %struct.TYPE_24__** %11, align 8
  br label %85

138:                                              ; preds = %85
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @scan_NotifyService(i32* %139, %struct.TYPE_19__* %140, i32 %144)
  br label %146

146:                                              ; preds = %138, %72, %66
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %8, align 8
  br label %45

150:                                              ; preds = %25, %45
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_20__* @scan_FindMultiplex(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scan_SetMultiplexScanStatus(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @scan_multiplex_FindService(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @scan_service_New(i32) #1

declare dso_local i32 @scan_multiplex_AddService(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @scan_service_Delete(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @dvbpsi_DecodeServiceDr(%struct.TYPE_24__*) #1

declare dso_local i8* @vlc_from_EIT(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @scan_NotifyService(i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
