; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mpegps.h_ps_pkt_parse_pes.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mpegps.h_ps_pkt_parse_pes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64*, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@BLOCK_FLAG_SCRAMBLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @ps_pkt_parse_pes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_pkt_parse_pes(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ParsePESHeader(i32* %13, i64* %16, i32 %19, i32* %8, i64* %10, i64* %9, i32* %11, i32* %12)
  %21 = load i64, i64* @VLC_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %4, align 4
  br label %127

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %81

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 3
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ps_pkt_id(i64* %51, i32 %54)
  %56 = icmp eq i32 %55, 40961
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ps_pkt_id(i64* %60, i32 %63)
  %65 = icmp eq i32 %64, 48545
  br i1 %65, label %66, label %80

66:                                               ; preds = %57, %48
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 3
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 4, %74
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %66, %57, %41
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ule i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %88, i32* %4, align 4
  br label %127

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = zext i32 %90 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64* %95, i64** %92, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp sge i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load i64, i64* %10, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %106, %103, %89
  %109 = load i64, i64* %10, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i64, i64* %10, align 8
  %113 = call i8* @FROM_SCALE(i64 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i64, i64* %9, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i64, i64* %9, align 8
  %121 = call i8* @FROM_SCALE(i64 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i64, i64* @VLC_SUCCESS, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %87, %23
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @ParsePESHeader(i32*, i64*, i32, i32*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ps_pkt_id(i64*, i32) #1

declare dso_local i8* @FROM_SCALE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
