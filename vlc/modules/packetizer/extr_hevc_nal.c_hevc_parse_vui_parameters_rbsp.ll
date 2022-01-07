; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_vui_parameters_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_vui_parameters_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i8*, %struct.TYPE_13__, i8*, i8*, i8*, %struct.TYPE_12__, i8*, %struct.TYPE_11__, i8*, i8*, i8*, %struct.TYPE_9__, i8* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }

@ISO_23001_8_CP_UNSPECIFIED = common dso_local global i8* null, align 8
@ISO_23001_8_TC_UNSPECIFIED = common dso_local global i8* null, align 8
@ISO_23001_8_MC_UNSPECIFIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, i32)* @hevc_parse_vui_parameters_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_vui_parameters_rbsp(i32* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @bs_remain(i32* %8)
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %225

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @bs_read1(i32* %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 14
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 14
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @bs_read(i32* %22, i32 8)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @bs_read(i32* %34, i32 16)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @bs_read(i32* %39, i32 16)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  br label %44

44:                                               ; preds = %33, %21
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @bs_read1(i32* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 12
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 12
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @bs_read1(i32* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @bs_read1(i32* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 10
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %125

68:                                               ; preds = %59
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @bs_read(i32* %69, i32 3)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i8* %70, i8** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i8* @bs_read1(i32* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @bs_read1(i32* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %68
  %90 = load i32*, i32** %5, align 8
  %91 = call i8* @bs_read(i32* %90, i32 8)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i8* %91, i8** %95, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i8* @bs_read(i32* %96, i32 8)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @bs_read(i32* %102, i32 8)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i8* %103, i8** %107, align 8
  br label %124

108:                                              ; preds = %68
  %109 = load i8*, i8** @ISO_23001_8_CP_UNSPECIFIED, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i8* %109, i8** %113, align 8
  %114 = load i8*, i8** @ISO_23001_8_TC_UNSPECIFIED, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i8* %114, i8** %118, align 8
  %119 = load i8*, i8** @ISO_23001_8_MC_UNSPECIFIED, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %108, %89
  br label %125

125:                                              ; preds = %124, %59
  %126 = load i32*, i32** %5, align 8
  %127 = call i8* @bs_read1(i32* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 8
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 8
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %125
  %135 = load i32*, i32** %5, align 8
  %136 = call i8* @bs_read_ue(i32* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i8* @bs_read_ue(i32* %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %134, %125
  %146 = load i32*, i32** %5, align 8
  %147 = call i8* @bs_read1(i32* %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call i8* @bs_read1(i32* %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i8* @bs_read1(i32* %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %145
  %161 = load i32*, i32** %5, align 8
  %162 = call i8* @bs_read1(i32* %161)
  %163 = icmp ne i8* %162, null
  br label %164

164:                                              ; preds = %160, %145
  %165 = phi i1 [ false, %145 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %164
  %174 = load i32*, i32** %5, align 8
  %175 = call i8* @bs_read_ue(i32* %174)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  store i8* %175, i8** %178, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i8* @bs_read_ue(i32* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  store i8* %180, i8** %183, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = call i8* @bs_read_ue(i32* %184)
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  store i8* %185, i8** %188, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = call i8* @bs_read_ue(i32* %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  br label %194

194:                                              ; preds = %173, %164
  %195 = load i32*, i32** %5, align 8
  %196 = call i8* @bs_read1(i32* %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %219

203:                                              ; preds = %194
  %204 = load i32*, i32** %5, align 8
  %205 = call i8* @bs_read(i32* %204, i32 32)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  store i8* %205, i8** %208, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = call i8* @bs_read(i32* %209, i32 32)
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  store i8* %210, i8** %213, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 @bs_remain(i32* %214)
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %218

217:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %225

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218, %194
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @bs_remain(i32* %220)
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %225

224:                                              ; preds = %219
  store i32 1, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %223, %217, %11
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i8* @bs_read_ue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
