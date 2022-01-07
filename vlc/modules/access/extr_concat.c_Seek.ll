; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_concat.c_Seek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_concat.c_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }

@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64)* @Seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Seek(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = call i32 @vlc_stream_Delete(%struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %65, %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call %struct.TYPE_10__* @GetAccess(%struct.TYPE_10__* %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = icmp eq %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %73

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %40 = call i32 @vlc_stream_Control(%struct.TYPE_10__* %38, i32 %39, i32* %9)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = call i64 @vlc_stream_GetSize(%struct.TYPE_10__* %45, i64* %10)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %73

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i64 @vlc_stream_Seek(%struct.TYPE_10__* %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %73

63:                                               ; preds = %55
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %64, i32* %3, align 4
  br label %75

65:                                               ; preds = %49
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = call i32 @vlc_stream_Delete(%struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %72, align 8
  br label %31

73:                                               ; preds = %62, %48, %43, %36
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %63
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @GetAccess(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_stream_Control(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @vlc_stream_GetSize(%struct.TYPE_10__*, i64*) #1

declare dso_local i64 @vlc_stream_Seek(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
