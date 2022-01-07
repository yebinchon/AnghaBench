; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_DemuxTitles.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_DemuxTitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i8* }

@INPUT_TITLE_MENU = common dso_local global i32 0, align 4
@INPUT_TITLE_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DVD Menu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Root\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Chapter\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"This is probably an Arccos Protected DVD. This could take time...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @DemuxTitles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DemuxTitles(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  %15 = call %struct.TYPE_10__* (...) @vlc_input_title_New()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load i32, i32* @INPUT_TITLE_MENU, align 4
  %17 = load i32, i32* @INPUT_TITLE_INTERACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  %25 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = call i32 @TAB_APPEND(i32 %30, i32 %33, %struct.TYPE_10__* %34)
  %36 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %5, align 8
  %37 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = call i32 @TAB_APPEND(i32 %42, i32 %45, %struct.TYPE_10__* %46)
  %48 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %5, align 8
  %49 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = call i32 @TAB_APPEND(i32 %54, i32 %57, %struct.TYPE_10__* %58)
  %60 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %5, align 8
  %61 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i32 @TAB_APPEND(i32 %66, i32 %69, %struct.TYPE_10__* %70)
  %72 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %5, align 8
  %73 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = call i32 @TAB_APPEND(i32 %78, i32 %81, %struct.TYPE_10__* %82)
  %84 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %5, align 8
  %85 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = call i32 @TAB_APPEND(i32 %90, i32 %93, %struct.TYPE_10__* %94)
  %96 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %5, align 8
  %97 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = call i32 @TAB_APPEND(i32 %102, i32 %105, %struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = call i32 @TAB_APPEND(i32 %110, i32 %113, %struct.TYPE_10__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dvdnav_get_number_of_titles(i32 %118, i32* %6)
  %120 = load i32, i32* %6, align 4
  %121 = icmp sgt i32 %120, 90
  br i1 %121, label %122, label %125

122:                                              ; preds = %1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = call i32 @msg_Err(%struct.TYPE_11__* %123, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %1
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %194, %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %197

130:                                              ; preds = %126
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dvdnav_describe_title_chapters(i32 %133, i32 %134, i64** %9, i64* %8)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i64 0, i64* %8, align 8
  store i64* null, i64** %9, align 8
  br label %139

139:                                              ; preds = %138, %130
  %140 = call %struct.TYPE_10__* (...) @vlc_input_title_New()
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %4, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i8* @FROM_SCALE_NZ(i64 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %180, %139
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @__MAX(i32 %147, i32 1)
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %145
  %151 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %5, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i64*, i64** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @FROM_SCALE_NZ(i64 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  br label %170

167:                                              ; preds = %154
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  store i8* null, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %157
  br label %171

171:                                              ; preds = %170, %150
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = call i32 @TAB_APPEND(i32 %174, i32 %177, %struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %171
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %145

183:                                              ; preds = %145
  %184 = load i64*, i64** %9, align 8
  %185 = call i32 @free(i64* %184)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = call i32 @TAB_APPEND(i32 %188, i32 %191, %struct.TYPE_10__* %192)
  br label %194

194:                                              ; preds = %183
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %126

197:                                              ; preds = %126
  ret void
}

declare dso_local %struct.TYPE_10__* @vlc_input_title_New(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_10__* @vlc_seekpoint_New(...) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dvdnav_get_number_of_titles(i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dvdnav_describe_title_chapters(i32, i32, i64**, i64*) #1

declare dso_local i8* @FROM_SCALE_NZ(i64) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
