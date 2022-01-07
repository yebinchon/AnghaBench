; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadDiracHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadDiracHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@Ogg_ReadDiracHeader.p_dirac_frate_tbl = internal constant [11 x %struct.anon] [%struct.anon { i32 1, i32 1 }, %struct.anon { i32 24000, i32 1001 }, %struct.anon { i32 24, i32 1 }, %struct.anon { i32 25, i32 1 }, %struct.anon { i32 30000, i32 1001 }, %struct.anon { i32 30, i32 1 }, %struct.anon { i32 50, i32 1 }, %struct.anon { i32 60000, i32 1001 }, %struct.anon { i32 60, i32 1 }, %struct.anon { i32 15000, i32 1001 }, %struct.anon { i32 25, i32 2 }], align 16
@Ogg_ReadDiracHeader.u_dirac_frate_tbl = internal constant i64 11, align 8
@Ogg_ReadDiracHeader.pu_dirac_vidfmt_frate = internal constant [21 x i32] [i32 1, i32 9, i32 10, i32 9, i32 10, i32 9, i32 10, i32 4, i32 3, i32 7, i32 6, i32 4, i32 3, i32 7, i32 6, i32 2, i32 2, i32 7, i32 6, i32 7, i32 6], align 16
@Ogg_ReadDiracHeader.u_dirac_vidfmt_frate = internal constant i64 21, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @Ogg_ReadDiracHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ogg_ReadDiracHeader(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 75
  %18 = zext i1 %17 to i32
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bs_init(i32* %6, i8* %27, i32 %30)
  %32 = call i32 @bs_skip(i32* %6, i32 104)
  %33 = call i8* @dirac_uint(i32* %6)
  %34 = call i8* @dirac_uint(i32* %6)
  %35 = call i8* @dirac_uint(i32* %6)
  %36 = call i8* @dirac_uint(i32* %6)
  %37 = call i8* @dirac_uint(i32* %6)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 21
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

43:                                               ; preds = %2
  %44 = call i64 @dirac_bool(i32* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i8* @dirac_uint(i32* %6)
  %48 = call i8* @dirac_uint(i32* %6)
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i64 @dirac_bool(i32* %6)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i8* @dirac_uint(i32* %6)
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i64 @dirac_bool(i32* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = call i8* @dirac_uint(i32* %6)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [21 x i32], [21 x i32]* @Ogg_ReadDiracHeader.pu_dirac_vidfmt_frate, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @Ogg_ReadDiracHeader.p_dirac_frate_tbl, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [21 x i32], [21 x i32]* @Ogg_ReadDiracHeader.pu_dirac_vidfmt_frate, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @Ogg_ReadDiracHeader.p_dirac_frate_tbl, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @__MAX(i32 %86, i32 1)
  store i32 %87, i32* %9, align 4
  %88 = call i64 @dirac_bool(i32* %6)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %69
  %91 = call i8* @dirac_uint(i32* %6)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp uge i64 %94, 11
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %130

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @Ogg_ReadDiracHeader.p_dirac_frate_tbl, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @Ogg_ReadDiracHeader.p_dirac_frate_tbl, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = call i8* @dirac_uint(i32* %6)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = call i8* @dirac_uint(i32* %6)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %110, %97
  br label %116

116:                                              ; preds = %115, %69
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119, %116
  store i32 0, i32* %3, align 4
  br label %130

123:                                              ; preds = %119
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 2, %126
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @date_Init(i32* %125, i32 %127, i32 %128)
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %123, %122, %96, %42
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @bs_init(i32*, i8*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @dirac_uint(i32*) #1

declare dso_local i64 @dirac_bool(i32*) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
