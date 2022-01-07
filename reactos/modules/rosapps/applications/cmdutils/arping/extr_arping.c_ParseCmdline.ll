; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/arping/extr_arping.c_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/arping/extr_arping.c_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NeverStop = common dso_local global i32 0, align 4
@PingCount = common dso_local global i32 0, align 4
@IDS_BAD_VALUE_OPTION_N = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@IDS_BAD_OPTION_FORMAT = common dso_local global i32 0, align 4
@SourceName = common dso_local global i64* null, align 8
@IDS_BAD_PARAMETER = common dso_local global i32 0, align 4
@IDS_BAD_OPTION = common dso_local global i32 0, align 4
@TargetName = common dso_local global i64* null, align 8
@IDS_DEST_MUST_BE_SPECIFIED = common dso_local global i32 0, align 4
@IDS_SRC_MUST_BE_SPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @ParseCmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseCmdline(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (...) @Usage()
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  br label %174

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %151, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %154

17:                                               ; preds = %13
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %127

35:                                               ; preds = %26, %17
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %117 [
    i32 116, label %43
    i32 110, label %45
    i32 115, label %76
    i32 63, label %114
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* @NeverStop, align 4
  br label %126

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32**, i32*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @wcstoul(i32* %56, i32* null, i32 0)
  store i32 %57, i32* @PingCount, align 4
  %58 = load i32, i32* @PingCount, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @IDS_BAD_VALUE_OPTION_N, align 4
  %62 = load i32, i32* @UINT_MAX, align 4
  %63 = call i32 (i32, ...) @FormatOutput(i32 %61, i32 %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %174

65:                                               ; preds = %50
  br label %75

66:                                               ; preds = %45
  %67 = load i32, i32* @IDS_BAD_OPTION_FORMAT, align 4
  %68 = load i32**, i32*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 (i32, ...) @FormatOutput(i32 %67, i32* %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %174

75:                                               ; preds = %65
  br label %126

76:                                               ; preds = %35
  %77 = load i64*, i64** @SourceName, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32, i32* @IDS_BAD_PARAMETER, align 4
  %83 = load i32**, i32*** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 (i32, ...) @FormatOutput(i32 %82, i32* %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %174

90:                                               ; preds = %76
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i64*, i64** @SourceName, align 8
  %97 = load i32**, i32*** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @wcscpy(i64* %96, i32* %102)
  br label %113

104:                                              ; preds = %90
  %105 = load i32, i32* @IDS_BAD_OPTION_FORMAT, align 4
  %106 = load i32**, i32*** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i32, ...) @FormatOutput(i32 %105, i32* %110)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %174

113:                                              ; preds = %95
  br label %126

114:                                              ; preds = %35
  %115 = call i32 (...) @Usage()
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %174

117:                                              ; preds = %35
  %118 = load i32, i32* @IDS_BAD_OPTION, align 4
  %119 = load i32**, i32*** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 (i32, ...) @FormatOutput(i32 %118, i32* %123)
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %3, align 4
  br label %174

126:                                              ; preds = %113, %75, %43
  br label %150

127:                                              ; preds = %26
  %128 = load i64*, i64** @TargetName, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32, i32* @IDS_BAD_PARAMETER, align 4
  %134 = load i32**, i32*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 (i32, ...) @FormatOutput(i32 %133, i32* %138)
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %3, align 4
  br label %174

141:                                              ; preds = %127
  %142 = load i64*, i64** @TargetName, align 8
  %143 = load i32**, i32*** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @wcscpy(i64* %142, i32* %147)
  br label %149

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %126
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %13

154:                                              ; preds = %13
  %155 = load i64*, i64** @TargetName, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @IDS_DEST_MUST_BE_SPECIFIED, align 4
  %161 = call i32 (i32, ...) @FormatOutput(i32 %160)
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %174

163:                                              ; preds = %154
  %164 = load i64*, i64** @SourceName, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @IDS_SRC_MUST_BE_SPECIFIED, align 4
  %170 = call i32 (i32, ...) @FormatOutput(i32 %169)
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %3, align 4
  br label %174

172:                                              ; preds = %163
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %168, %159, %132, %117, %114, %104, %81, %66, %60, %9
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @wcstoul(i32*, i32*, i32) #1

declare dso_local i32 @FormatOutput(i32, ...) #1

declare dso_local i32 @wcscpy(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
