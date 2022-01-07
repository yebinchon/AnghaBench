; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_podcast.c_ParseRequest.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_podcast.c_ParseRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i8**, i32, i8**, i32 }

@.str = private unnamed_addr constant [13 x i8] c"podcast-urls\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"demux=directory\00", align 1
@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"RM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ParseRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseRequest(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %173

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  store i8 0, i8* %21, align 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = call i32 @vlc_object_parent(%struct.TYPE_9__* %27)
  %29 = call i8* @var_GetNonEmptyString(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ParseUrls(%struct.TYPE_9__* %30, i8* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %26, %20
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %100, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %61, %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %64

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %42

64:                                               ; preds = %59, %42
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32* @strdup(i8* %77)
  %79 = call i32 @TAB_APPEND(i32 %73, i8** %76, i32* %78)
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32* @input_item_New(i8* %80, i8* %81)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %85 = call i32 @input_item_AddOption(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @TAB_APPEND(i32 %88, i8** %91, i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @services_discovery_AddItem(%struct.TYPE_9__* %94, i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = call i32 @SaveUrls(%struct.TYPE_9__* %97)
  br label %99

99:                                               ; preds = %70, %64
  br label %166

100:                                              ; preds = %35
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %165, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %159, %104
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %162

113:                                              ; preds = %107
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strcmp(i8* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %158, label %124

124:                                              ; preds = %113
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @services_discovery_RemoveItem(%struct.TYPE_9__* %125, i8* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @input_item_Release(i8* %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @TAB_ERASE(i32 %144, i8** %147, i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 4
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @TAB_ERASE(i32 %152, i8** %155, i32 %156)
  br label %162

158:                                              ; preds = %113
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %107

162:                                              ; preds = %124, %107
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %164 = call i32 @SaveUrls(%struct.TYPE_9__* %163)
  br label %165

165:                                              ; preds = %162, %100
  br label %166

166:                                              ; preds = %165, %99
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i8* null, i8** %172, align 8
  br label %173

173:                                              ; preds = %166, %19
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @var_GetNonEmptyString(i32, i8*) #1

declare dso_local i32 @vlc_object_parent(%struct.TYPE_9__*) #1

declare dso_local i32 @ParseUrls(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @TAB_APPEND(i32, i8**, i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_AddOption(i32*, i8*, i32) #1

declare dso_local i32 @services_discovery_AddItem(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SaveUrls(%struct.TYPE_9__*) #1

declare dso_local i32 @services_discovery_RemoveItem(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @input_item_Release(i8*) #1

declare dso_local i32 @TAB_ERASE(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
