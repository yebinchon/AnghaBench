; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_cleanup_Manifest.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_cleanup_Manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MAX_XML_DEPTH = common dso_local global i32 0, align 4
@MAX_MEDIA_ELEMENTS = common dso_local global i32 0, align 4
@MAX_BOOTSTRAP_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @cleanup_Manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_Manifest(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_XML_DEPTH, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @free(i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %6

22:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %64, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MAX_MEDIA_ELEMENTS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @free(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @free(i32 %62)
  br label %64

64:                                               ; preds = %27
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %23

67:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %109, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX_BOOTSTRAP_INFO, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @free(i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @free(i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @free(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @free(i32 %107)
  br label %109

109:                                              ; preds = %72
  %110 = load i32, i32* %5, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %68

112:                                              ; preds = %68
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @xml_ReaderDelete(i64 %120)
  br label %122

122:                                              ; preds = %117, %112
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xml_ReaderDelete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
