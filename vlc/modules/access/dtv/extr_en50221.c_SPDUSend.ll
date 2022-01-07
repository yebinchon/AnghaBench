; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SPDUSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SPDUSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ST_SESSION_NUMBER = common dso_local global i32 0, align 4
@MAX_TPDU_DATA = common dso_local global i32 0, align 4
@T_DATA_MORE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"couldn't send TPDU on session %d\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@T_DATA_LAST = common dso_local global i32 0, align 4
@T_SB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't recv TPDU on session %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64*, i32)* @SPDUSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SPDUSend(%struct.TYPE_7__* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 4
  %16 = call i64* @xmalloc(i32 %15)
  store i64* %16, i64** %10, align 8
  %17 = load i64*, i64** %10, align 8
  store i64* %17, i64** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i32, i32* @ST_SESSION_NUMBER, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %11, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %11, align 8
  store i64 %28, i64* %29, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %11, align 8
  store i64 2, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %11, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %11, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i64* %43, i64* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %9, align 4
  %49 = load i64*, i64** %10, align 8
  store i64* %49, i64** %11, align 8
  br label %50

50:                                               ; preds = %121, %4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MAX_TPDU_DATA, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* @T_DATA_MORE, align 4
  %61 = load i64*, i64** %11, align 8
  %62 = load i32, i32* @MAX_TPDU_DATA, align 4
  %63 = call i64 @TPDUSend(%struct.TYPE_7__* %58, i64 %59, i32 %60, i64* %61, i32 %62)
  %64 = load i64, i64* @VLC_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @msg_Err(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i64*, i64** %10, align 8
  %73 = call i32 @free(i64* %72)
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %5, align 4
  br label %127

75:                                               ; preds = %57
  %76 = load i32, i32* @MAX_TPDU_DATA, align 4
  %77 = load i64*, i64** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64* %79, i64** %11, align 8
  %80 = load i32, i32* @MAX_TPDU_DATA, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %102

83:                                               ; preds = %53
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* @T_DATA_LAST, align 4
  %87 = load i64*, i64** %11, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @TPDUSend(%struct.TYPE_7__* %84, i64 %85, i32 %86, i64* %87, i32 %88)
  %90 = load i64, i64* @VLC_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @msg_Err(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i64*, i64** %10, align 8
  %99 = call i32 @free(i64* %98)
  %100 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %100, i32* %5, align 4
  br label %127

101:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i64 @TPDURecv(%struct.TYPE_7__* %103, i64 %104, i64* %12, i32* null, i32* null)
  %106 = load i64, i64* @VLC_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @T_SB, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108, %102
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @msg_Err(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i64*, i64** %10, align 8
  %119 = call i32 @free(i64* %118)
  %120 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %120, i32* %5, align 4
  br label %127

121:                                              ; preds = %108
  br label %50

122:                                              ; preds = %50
  %123 = load i64*, i64** %10, align 8
  %124 = call i32 @free(i64* %123)
  %125 = load i64, i64* @VLC_SUCCESS, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %122, %112, %92, %66
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @TPDUSend(%struct.TYPE_7__*, i64, i32, i64*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64 @TPDURecv(%struct.TYPE_7__*, i64, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
