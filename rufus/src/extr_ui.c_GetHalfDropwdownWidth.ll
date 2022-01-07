; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_GetHalfDropwdownWidth.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_GetHalfDropwdownWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@IDC_PARTITION_TYPE = common dso_local global i32 0, align 4
@ddw = common dso_local global i64 0, align 8
@hw = common dso_local global i64 0, align 8
@sfd_name = common dso_local global i64 0, align 8
@MSG_026 = common dso_local global i32 0, align 4
@MAX_CLUSTER_SIZES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@IDC_CLUSTER_SIZE = common dso_local global i32 0, align 4
@MSG_030 = common dso_local global i32 0, align 4
@MSG_031 = common dso_local global i32 0, align 4
@MSG_033 = common dso_local global i32 0, align 4
@IDC_TARGET_SYSTEM = common dso_local global i32 0, align 4
@MSG_034 = common dso_local global i32 0, align 4
@MSG_035 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_087 = common dso_local global i32 0, align 4
@flash_type = common dso_local global i32* null, align 8
@IDC_RUFUS_MBR = common dso_local global i32 0, align 4
@sw = common dso_local global i64 0, align 8
@IDC_BAD_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetHalfDropwdownWidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IDC_PARTITION_TYPE, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  %16 = call i32 @GetWindowRect(i32 %15, %struct.TYPE_4__* %3)
  %17 = load i32, i32* %2, align 4
  %18 = bitcast %struct.TYPE_4__* %3 to i32*
  %19 = call i32 @MapWindowPoints(i32* null, i32 %17, i32* %18, i32 2)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = load i64, i64* @ddw, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* @hw, align 8
  %27 = load i64, i64* @hw, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @IDC_PARTITION_TYPE, align 4
  %30 = call i32 @GetDlgItem(i32 %28, i32 %29)
  %31 = load i64, i64* @sfd_name, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i64 @GetTextSize(i32 %30, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @max(i64 %27, i64 %36)
  store i64 %37, i64* @hw, align 8
  store i32 512, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %38 = load i32, i32* @MSG_026, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %69, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MAX_CLUSTER_SIZES, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp ugt i32 %44, 8192
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = udiv i32 %47, 1024
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i8* (i32, ...) @lmprintf(i32 %54)
  %56 = call i32 @safe_sprintf(i8* %52, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %55)
  %57 = load i64, i64* @hw, align 8
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @IDC_CLUSTER_SIZE, align 4
  %60 = call i32 @GetDlgItem(i32 %58, i32 %59)
  %61 = load i32, i32* @MSG_030, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %63 = call i8* (i32, ...) @lmprintf(i32 %61, i8* %62)
  %64 = call i64 @GetTextSize(i32 %60, i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @max(i64 %57, i64 %67)
  store i64 %68, i64* @hw, align 8
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load i32, i32* @MSG_031, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %92, %74
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MSG_033, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i64, i64* @hw, align 8
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @IDC_TARGET_SYSTEM, align 4
  %84 = call i32 @GetDlgItem(i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i8* (i32, ...) @lmprintf(i32 %85)
  %87 = call i64 @GetTextSize(i32 %84, i8* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @max(i64 %81, i64 %90)
  store i64 %91, i64* @hw, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %76

95:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %138, %95
  %97 = load i32, i32* %4, align 4
  %98 = icmp ule i32 %97, 5
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @MSG_034, align 4
  %104 = call i8* (i32, ...) @lmprintf(i32 %103, i32 1)
  br label %126

105:                                              ; preds = %99
  %106 = load i32, i32* @MSG_035, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 2, i32 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %123

114:                                              ; preds = %105
  %115 = load i32, i32* @MSG_087, align 4
  %116 = load i32*, i32** @flash_type, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub i32 %117, 3
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i8* (i32, ...) @lmprintf(i32 %115, i32 %121)
  br label %123

123:                                              ; preds = %114, %113
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %113 ], [ %122, %114 ]
  %125 = call i8* (i32, ...) @lmprintf(i32 %106, i32 %110, i8* %124)
  br label %126

126:                                              ; preds = %123, %102
  %127 = phi i8* [ %104, %102 ], [ %125, %123 ]
  store i8* %127, i8** %11, align 8
  %128 = load i64, i64* @hw, align 8
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @IDC_TARGET_SYSTEM, align 4
  %131 = call i32 @GetDlgItem(i32 %129, i32 %130)
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @GetTextSize(i32 %131, i8* %132)
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @max(i64 %128, i64 %136)
  store i64 %137, i64* @hw, align 8
  br label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %4, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %96

141:                                              ; preds = %96
  %142 = load i64, i64* @hw, align 8
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %145 = call i64 @GetTextWidth(i32 %143, i32 %144)
  %146 = load i64, i64* @sw, align 8
  %147 = sub nsw i64 %145, %146
  %148 = call i64 @max(i64 %142, i64 %147)
  store i64 %148, i64* @hw, align 8
  %149 = load i64, i64* @hw, align 8
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @IDC_BAD_BLOCKS, align 4
  %152 = call i64 @GetTextWidth(i32 %150, i32 %151)
  %153 = load i64, i64* @sw, align 8
  %154 = sub nsw i64 %152, %153
  %155 = call i64 @max(i64 %149, i64 %154)
  store i64 %155, i64* @hw, align 8
  %156 = load i64, i64* @ddw, align 8
  %157 = load i64, i64* @hw, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* @hw, align 8
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @GetTextSize(i32, i8*) #1

declare dso_local i32 @safe_sprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @lmprintf(i32, ...) #1

declare dso_local i64 @GetTextWidth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
