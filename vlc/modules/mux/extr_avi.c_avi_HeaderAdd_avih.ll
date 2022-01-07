; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderAdd_avih.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderAdd_avih.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"avih\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"avi file without video track isn't a good idea...\00", align 1
@AVIF_TRUSTCKTYPE = common dso_local global i32 0, align 4
@AVIF_HASINDEX = common dso_local global i32 0, align 4
@AVIF_ISINTERLEAVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @avi_HeaderAdd_avih to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_HeaderAdd_avih(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %15 = call i32 @AVI_BOX_ENTER(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %26
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to float
  %48 = fdiv float 1.000000e+06, %47
  %49 = fptosi float %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %63

60:                                               ; preds = %34
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = call i32 @msg_Warn(%struct.TYPE_8__* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %37
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %101, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %88, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %80, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %64

104:                                              ; preds = %64
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @bo_add_32le(i32* %105, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @bo_add_32le(i32* %108, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @bo_add_32le(i32* %111, i32 0)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @AVIF_TRUSTCKTYPE, align 4
  %115 = load i32, i32* @AVIF_HASINDEX, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @AVIF_ISINTERLEAVED, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @bo_add_32le(i32* %113, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @bo_add_32le(i32* %120, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @bo_add_32le(i32* %123, i32 0)
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bo_add_32le(i32* %125, i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @bo_add_32le(i32* %130, i32 1048576)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = icmp ne %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %104
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @bo_add_32le(i32* %135, i32 %140)
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @bo_add_32le(i32* %142, i32 %147)
  br label %154

149:                                              ; preds = %104
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @bo_add_32le(i32* %150, i32 0)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @bo_add_32le(i32* %152, i32 0)
  br label %154

154:                                              ; preds = %149, %134
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @bo_add_32le(i32* %155, i32 0)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @bo_add_32le(i32* %157, i32 0)
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @bo_add_32le(i32* %159, i32 0)
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @bo_add_32le(i32* %161, i32 0)
  %163 = call i32 @AVI_BOX_EXIT(i32 0)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @AVI_BOX_ENTER(i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @bo_add_32le(i32*, i32) #1

declare dso_local i32 @AVI_BOX_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
