; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_imagelayout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_imagelayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@DG_IMAGE = common dso_local global i32 0, align 4
@DAT_IMAGELAYOUT = common dso_local global i32 0, align 4
@MSG_GET = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i64 0, align 8
@TWCC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Error [rc %d|cc %d] doing MSG_GET for DG_IMAGE/DAT_IMAGELAYOUT\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"ImageLayout [Left %x.%x|Top %x.%x|Right %x.%x|Bottom %x.%x|Document %d|Page %d|Frame %d]\0A\00", align 1
@MSG_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Error [rc %d|cc %d] doing MSG_SET for DG_IMAGE/DAT_IMAGELAYOUT\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"ImageLayout after set [Left %x.%x|Top %x.%x|Right %x.%x|Bottom %x.%x|Document %d|Page %d|Frame %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_imagelayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_imagelayout(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_17__, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @DG_IMAGE, align 4
  %11 = load i32, i32* @DAT_IMAGELAYOUT, align 4
  %12 = load i32, i32* @MSG_GET, align 4
  %13 = call i64 @pDSM_Entry(i32* %8, i32* %9, i32 %10, i32 %11, i32 %12, %struct.TYPE_17__* %7)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @get_condition_code(i32* %14, i32* %15, %struct.TYPE_16__* %6)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @TWRC_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TWCC_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @TWRC_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %186

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @trace(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %68, i32 %70, i32 %72, i32 %74)
  %76 = call i32 @memset(%struct.TYPE_17__* %7, i32 0, i32 44)
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 2, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i32 2, i32* %88, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @DG_IMAGE, align 4
  %92 = load i32, i32* @DAT_IMAGELAYOUT, align 4
  %93 = load i32, i32* @MSG_SET, align 4
  %94 = call i64 @pDSM_Entry(i32* %89, i32* %90, i32 %91, i32 %92, i32 %93, %struct.TYPE_17__* %7)
  store i64 %94, i64* %5, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @get_condition_code(i32* %95, i32* %96, %struct.TYPE_16__* %6)
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @TWRC_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %36
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TWCC_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br label %106

106:                                              ; preds = %101, %36
  %107 = phi i1 [ false, %36 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %111)
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @TWRC_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %186

117:                                              ; preds = %106
  %118 = load i32*, i32** %3, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @DG_IMAGE, align 4
  %121 = load i32, i32* @DAT_IMAGELAYOUT, align 4
  %122 = load i32, i32* @MSG_GET, align 4
  %123 = call i64 @pDSM_Entry(i32* %118, i32* %119, i32 %120, i32 %121, i32 %122, %struct.TYPE_17__* %7)
  store i64 %123, i64* %5, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @get_condition_code(i32* %124, i32* %125, %struct.TYPE_16__* %6)
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @TWRC_SUCCESS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TWCC_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %130, %117
  %136 = phi i1 [ false, %117 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %138, i64 %140)
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @TWRC_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %186

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @trace(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %154, i32 %158, i32 %162, i32 %166, i32 %170, i32 %174, i32 %178, i32 %180, i32 %182, i32 %184)
  br label %186

186:                                              ; preds = %146, %145, %116, %35
  ret void
}

declare dso_local i64 @pDSM_Entry(i32*, i32*, i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @get_condition_code(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
