; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_page_composition.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_page_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8*, i8* }

@DVBSUB_PCS_STATE_CHANGE = common dso_local global i32 0, align 4
@DVBSUB_PCS_STATE_ACQUISITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"didn't receive an acquisition page yet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @decode_page_composition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_page_composition(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @bs_read(i32* %15, i32 8)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @bs_read(i32* %18, i32 4)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @bs_read(i32* %21, i32 2)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @bs_skip(i32* %24, i32 2)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @DVBSUB_PCS_STATE_CHANGE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i32 @free_all(%struct.TYPE_9__* %30)
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DVBSUB_PCS_STATE_ACQUISITION, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @DVBSUB_PCS_STATE_CHANGE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Dbg(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41, %37, %32
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 2
  %66 = mul nsw i32 8, %65
  %67 = call i32 @bs_skip(i32* %63, i32 %66)
  br label %205

68:                                               ; preds = %54, %49
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = call i32 @free(%struct.TYPE_11__* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %91, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %68
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = icmp ne %struct.TYPE_12__* %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = call %struct.TYPE_12__* @malloc(i32 4)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = icmp ne %struct.TYPE_12__* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %205

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i32 %118, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sdiv i32 %126, 6
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %112
  br label %205

139:                                              ; preds = %112
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.TYPE_11__* @vlc_alloc(i32 %144, i32 4)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = icmp ne %struct.TYPE_11__* %154, null
  br i1 %155, label %156, label %205

156:                                              ; preds = %139
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %201, %156
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %158, %163
  br i1 %164, label %165, label %204

165:                                              ; preds = %157
  %166 = load i32*, i32** %5, align 8
  %167 = call i8* @bs_read(i32* %166, i32 8)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  store i8* %167, i8** %176, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @bs_skip(i32* %177, i32 8)
  %179 = load i32*, i32** %5, align 8
  %180 = call i8* @bs_read(i32* %179, i32 16)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  store i8* %180, i8** %189, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i8* @bs_read(i32* %190, i32 16)
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i8* %191, i8** %200, align 8
  br label %201

201:                                              ; preds = %165
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %157

204:                                              ; preds = %157
  br label %205

205:                                              ; preds = %62, %110, %138, %204, %139
  ret void
}

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @free_all(%struct.TYPE_9__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local %struct.TYPE_11__* @vlc_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
