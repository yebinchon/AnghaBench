; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_IsOpusFormatCompatible.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_IsOpusFormatCompatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@Ogg_IsOpusFormatCompatible.default_map = internal constant [2 x i8] c"\00\01", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @Ogg_IsOpusFormatCompatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ogg_IsOpusFormatCompatible(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %23 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %5, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %6, align 8
  %27 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @xiph_SplitHeaders(i32* %26, i8** %29, i32* %8, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %9, align 8
  %43 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8*, i64 %44, align 16
  store i64 %44, i64* %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @xiph_SplitHeaders(i32* %42, i8** %45, i32* %11, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %39
  store i32 0, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %172

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %172

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8*, i8** %45, i64 0
  %64 = load i8*, i8** %63, align 16
  store i8* %64, i8** %13, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Ogg_IsOpusFormatCompatible.default_map, i64 0, i64 0), i8** %15, align 8
  %65 = getelementptr inbounds i32, i32* %42, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp uge i32 %66, 19
  br i1 %67, label %68, label %105

68:                                               ; preds = %62
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sle i32 %72, 15
  br i1 %73, label %74, label %105

74:                                               ; preds = %68
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 9
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 18
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  switch i32 %82, label %104 [
    i32 0, label %83
    i32 1, label %86
  ]

83:                                               ; preds = %74
  store i32 1, i32* %19, align 4
  %84 = load i32, i32* %17, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %21, align 4
  br label %104

86:                                               ; preds = %74
  %87 = getelementptr inbounds i32, i32* %42, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = load i32, i32* %17, align 4
  %90 = add i32 21, %89
  %91 = icmp uge i32 %88, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 19
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %19, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 20
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  store i32 %100, i32* %21, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 21
  store i8* %102, i8** %15, align 8
  br label %103

103:                                              ; preds = %92, %86
  br label %104

104:                                              ; preds = %74, %103, %83
  br label %105

105:                                              ; preds = %104, %68, %62
  %106 = getelementptr inbounds i8*, i8** %29, i64 0
  %107 = load i8*, i8** %106, align 16
  store i8* %107, i8** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Ogg_IsOpusFormatCompatible.default_map, i64 0, i64 0), i8** %16, align 8
  %108 = getelementptr inbounds i32, i32* %26, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp uge i32 %109, 19
  br i1 %110, label %111, label %148

111:                                              ; preds = %105
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sle i32 %115, 15
  br i1 %116, label %117, label %148

117:                                              ; preds = %111
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 9
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %18, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 18
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  switch i32 %125, label %147 [
    i32 0, label %126
    i32 1, label %129
  ]

126:                                              ; preds = %117
  store i32 1, i32* %20, align 4
  %127 = load i32, i32* %18, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %22, align 4
  br label %147

129:                                              ; preds = %117
  %130 = getelementptr inbounds i32, i32* %26, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = load i32, i32* %18, align 4
  %133 = add i32 21, %132
  %134 = icmp uge i32 %131, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %129
  %136 = load i8*, i8** %14, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 19
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %20, align 4
  %140 = load i8*, i8** %14, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 20
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  store i32 %143, i32* %22, align 4
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 21
  store i8* %145, i8** %16, align 8
  br label %146

146:                                              ; preds = %135, %129
  br label %147

147:                                              ; preds = %117, %146, %126
  br label %148

148:                                              ; preds = %147, %111, %105
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %22, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 1
  %166 = trunc i64 %165 to i32
  %167 = call i64 @memcmp(i8* %161, i8* %162, i32 %166)
  %168 = icmp eq i64 %167, 0
  br label %169

169:                                              ; preds = %160, %156, %152, %148
  %170 = phi i1 [ false, %156 ], [ false, %152 ], [ false, %148 ], [ %168, %160 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %169, %59, %55
  %173 = load i32, i32* %12, align 4
  %174 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %174)
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i32, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
