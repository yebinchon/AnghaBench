; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32* }

@SS_NOT_ALLOCATED = common dso_local global i32 0, align 4
@MAX_SESSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"too many sessions !\00", align 1
@SS_OK = common dso_local global i32 0, align 4
@ST_OPEN_SESSION_RESPONSE = common dso_local global i32 0, align 4
@T_DATA_LAST = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"SessionOpen: couldn't send TPDU on slot %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SessionOpen: couldn't recv TPDU on slot %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown resource id (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32*, i32)* @SessionOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SessionOpen(%struct.TYPE_12__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @VLC_UNUSED(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = call i32 @ResourceIdToInt(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @SS_NOT_ALLOCATED, align 4
  store i32 %19, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %37, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_SESSIONS, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @MAX_SESSIONS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @msg_Err(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %190

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 %50, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 %59, i32* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %98, label %86

86:                                               ; preds = %49
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 133
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 132
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 131
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %92, %89, %86, %49
  %99 = load i32, i32* @SS_OK, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i32, i32* @ST_OPEN_SESSION_RESPONSE, align 4
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  store i32 %101, i32* %102, align 16
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  store i32 7, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 2
  store i32 %104, i32* %105, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 3
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  store i32 %112, i32* %113, align 16
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 5
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 6
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = ashr i32 %122, 8
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 7
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, 255
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 8
  store i32 %126, i32* %127, align 16
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @T_DATA_LAST, align 4
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %132 = call i64 @TPDUSend(%struct.TYPE_12__* %128, i32 %129, i32 %130, i32* %131, i32 9)
  %133 = load i64, i64* @VLC_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %100
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i32, i8*, ...) @msg_Err(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %190

141:                                              ; preds = %100
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @TPDURecv(%struct.TYPE_12__* %142, i32 %143, i32* %13, i32* null, i32* null)
  %145 = load i64, i64* @VLC_SUCCESS, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i32, i8*, ...) @msg_Err(i32 %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %190

153:                                              ; preds = %141
  %154 = load i32, i32* %10, align 4
  switch i32 %154, label %176 [
    i32 128, label %155
    i32 133, label %159
    i32 132, label %163
    i32 131, label %167
    i32 129, label %171
    i32 130, label %175
  ]

155:                                              ; preds = %153
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ResourceManagerOpen(%struct.TYPE_12__* %156, i32 %157)
  br label %190

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @ApplicationInformationOpen(%struct.TYPE_12__* %160, i32 %161)
  br label %190

163:                                              ; preds = %153
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @ConditionalAccessOpen(%struct.TYPE_12__* %164, i32 %165)
  br label %190

167:                                              ; preds = %153
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @DateTimeOpen(%struct.TYPE_12__* %168, i32 %169)
  br label %190

171:                                              ; preds = %153
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @MMIOpen(%struct.TYPE_12__* %172, i32 %173)
  br label %190

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %153, %175
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (i32, i8*, ...) @msg_Err(i32 %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %44, %135, %147, %176, %171, %167, %163, %159, %155
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @ResourceIdToInt(i32*) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i64 @TPDUSend(%struct.TYPE_12__*, i32, i32, i32*, i32) #1

declare dso_local i64 @TPDURecv(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResourceManagerOpen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ApplicationInformationOpen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ConditionalAccessOpen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DateTimeOpen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MMIOpen(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
