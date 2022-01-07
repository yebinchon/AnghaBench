; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_MediaDelES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_rtsp.c_MediaDelES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i64, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"  - Removing ES %4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, %struct.TYPE_12__*)* @MediaDelES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MediaDelES(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %15
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %33, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %30
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 %50
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %7, align 8
  br label %68

68:                                               ; preds = %60, %45, %30, %15
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %115

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = bitcast i64* %79 to i8*
  %81 = call i32 @msg_Dbg(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = call i32 @vlc_mutex_lock(i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = call i32 @TAB_REMOVE(i32 %87, %struct.TYPE_11__** %90, %struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = call i32 @vlc_mutex_unlock(i32* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = call i32 @free(%struct.TYPE_11__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %76
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @httpd_UrlDelete(i64 %107)
  br label %109

109:                                              ; preds = %104, %76
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = call i32 @es_format_Clean(%struct.TYPE_13__* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = call i32 @free(%struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %109, %75
  ret void
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @TAB_REMOVE(i32, %struct.TYPE_11__**, %struct.TYPE_11__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @httpd_UrlDelete(i64) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
