; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i32* }

@OPJ_JP2_INFO = common dso_local global i32 0, align 4
@OPJ_JP2_IND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Wrong flag\0A\00", align 1
@OPJ_IMG_INFO = common dso_local global i32 0, align 4
@OPJ_J2K_MH_INFO = common dso_local global i32 0, align 4
@OPJ_J2K_TCH_INFO = common dso_local global i32 0, align 4
@OPJ_J2K_TH_INFO = common dso_local global i32 0, align 4
@OPJ_J2K_MH_IND = common dso_local global i32 0, align 4
@OPJ_J2K_TH_IND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j2k_dump(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OPJ_JP2_INFO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @OPJ_JP2_IND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %120

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @OPJ_IMG_INFO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @j2k_dump_image_header(%struct.TYPE_9__* %35, i32 0, i32* %36)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @OPJ_J2K_MH_INFO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @opj_j2k_dump_MH_info(%struct.TYPE_8__* %50, i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @OPJ_J2K_TCH_INFO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = mul nsw i64 %63, %67
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %59
  store i64 0, i64* %8, align 8
  br label %78

78:                                               ; preds = %94, %77
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @opj_j2k_dump_tile_info(i32* %83, i32 %89, i32* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  br label %94

94:                                               ; preds = %82
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %78

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %59
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @OPJ_J2K_TH_INFO, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %99
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @OPJ_J2K_MH_IND, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @opj_j2k_dump_MH_index(%struct.TYPE_8__* %111, i32* %112)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @OPJ_J2K_TH_IND, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %19, %119, %114
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @j2k_dump_image_header(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @opj_j2k_dump_MH_info(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @opj_j2k_dump_tile_info(i32*, i32, i32*) #1

declare dso_local i32 @opj_j2k_dump_MH_index(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
