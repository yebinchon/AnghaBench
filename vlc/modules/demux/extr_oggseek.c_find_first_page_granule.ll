; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_find_first_page_granule.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_find_first_page_granule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@OGGSEEK_BYTES_TO_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"OggS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64, i64, %struct.TYPE_10__*, i64*)* @find_first_page_granule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_first_page_granule(%struct.TYPE_11__* %0, i64 %1, i64 %2, %struct.TYPE_10__* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i64*, i64** %11, align 8
  store i64 -1, i64* %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %13, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %16, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @seek_byte(%struct.TYPE_11__* %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %186

38:                                               ; preds = %5
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @OGGSEEK_BYTES_TO_READ, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @OGGSEEK_BYTES_TO_READ, align 8
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %67, %100
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 -1, i64* %6, align 8
  br label %186

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @get_data(%struct.TYPE_11__* %53, i64 %54)
  store i64 %55, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i64 -1, i64* %6, align 8
  br label %186

58:                                               ; preds = %52
  %59 = load i64, i64* @OGGSEEK_BYTES_TO_READ, align 8
  store i64 %59, i64* %13, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call i64 @ogg_sync_pageseek(%struct.TYPE_13__* %61, i32* %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  br label %45

76:                                               ; preds = %58
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 3
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88, %76
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %8, align 8
  br label %106

100:                                              ; preds = %88, %82, %79
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %45

106:                                              ; preds = %96
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @seek_byte(%struct.TYPE_11__* %107, i64 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = call i32 @ogg_stream_reset(i32* %113)
  br label %115

115:                                              ; preds = %106, %142, %153, %177
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %6, align 8
  br label %186

125:                                              ; preds = %115
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 0, i32* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = call i64 @oggseek_read_page(%struct.TYPE_11__* %128)
  store i64 %129, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %6, align 8
  br label %186

135:                                              ; preds = %125
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = call i64 @ogg_stream_pagein(i32* %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  br label %115

148:                                              ; preds = %135
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = call i64 @ogg_page_granulepos(i32* %150)
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %115

159:                                              ; preds = %148
  store i64 0, i64* %15, align 8
  br label %160

160:                                              ; preds = %165, %159
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = call i64 @ogg_stream_packetout(i32* %162, i32* %17)
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i64, i64* %15, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %15, align 8
  br label %160

168:                                              ; preds = %160
  %169 = load i64, i64* %15, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = call i64 @ogg_page_granulepos(i32* %173)
  %175 = load i64*, i64** %11, align 8
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* %8, align 8
  store i64 %176, i64* %6, align 8
  br label %186

177:                                              ; preds = %168
  %178 = load i64, i64* %12, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %8, align 8
  br label %115

186:                                              ; preds = %171, %131, %121, %57, %51, %34
  %187 = load i64, i64* %6, align 8
  ret i64 %187
}

declare dso_local i32 @seek_byte(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @get_data(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @ogg_sync_pageseek(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ogg_stream_reset(i32*) #1

declare dso_local i64 @oggseek_read_page(%struct.TYPE_11__*) #1

declare dso_local i64 @ogg_stream_pagein(i32*, i32*) #1

declare dso_local i64 @ogg_page_granulepos(i32*) #1

declare dso_local i64 @ogg_stream_packetout(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
