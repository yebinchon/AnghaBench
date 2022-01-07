; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_process_marker.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_process_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i8***, i8*** }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8** }

@.str = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"progressive jpeg\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"JPEG format not supported (progressive)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@dezigzag = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @process_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_marker(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %215 [
    i32 128, label %19
    i32 194, label %21
    i32 221, label %23
    i32 219, label %38
    i32 196, label %97
  ]

19:                                               ; preds = %2
  %20 = call i32 @e(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %235

21:                                               ; preds = %2
  %22 = call i32 @e(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  br label %235

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get16(i32 %26)
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @e(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %3, align 4
  br label %235

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get16(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 1, i32* %3, align 4
  br label %235

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @get16(i32 %41)
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %90, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get8(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 15
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 @e(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  br label %235

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @e(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %3, align 4
  br label %235

65:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @get8u(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i8***, i8**** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8**, i8*** %76, i64 %78
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64*, i64** @dezigzag, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8*, i8** %80, i64 %85
  store i8* %73, i8** %86, align 8
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %66

90:                                               ; preds = %66
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 65
  store i32 %92, i32* %6, align 4
  br label %44

93:                                               ; preds = %44
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %235

97:                                               ; preds = %2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @get16(i32 %100)
  %102 = sub nsw i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %207, %97
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %211

106:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @get8(i32 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = ashr i32 %111, 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %17, align 4
  %119 = icmp sgt i32 %118, 3
  br i1 %119, label %120, label %122

120:                                              ; preds = %117, %106
  %121 = call i32 @e(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %121, i32* %3, align 4
  br label %235

122:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %140, %122
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @get8(i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %123

143:                                              ; preds = %123
  %144 = load i32, i32* %6, align 4
  %145 = sub nsw i32 %144, 17
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = ptrtoint %struct.TYPE_5__* %154 to i32
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %157 = call i32 @build_huffman(i32 %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %235

160:                                              ; preds = %148
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  store i8** %168, i8*** %11, align 8
  br label %190

169:                                              ; preds = %143
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = ptrtoint %struct.TYPE_6__* %175 to i32
  %177 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %178 = call i32 @build_huffman(i32 %176, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %235

181:                                              ; preds = %169
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  store i8** %189, i8*** %11, align 8
  br label %190

190:                                              ; preds = %181, %160
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %204, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @get8u(i32 %198)
  %200 = load i8**, i8*** %11, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %195
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %191

207:                                              ; preds = %191
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %6, align 4
  br label %103

211:                                              ; preds = %103
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %3, align 4
  br label %235

215:                                              ; preds = %2
  %216 = load i32, i32* %5, align 4
  %217 = icmp sge i32 %216, 224
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %5, align 4
  %220 = icmp sle i32 %219, 239
  br i1 %220, label %224, label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* %5, align 4
  %223 = icmp eq i32 %222, 254
  br i1 %223, label %224, label %234

224:                                              ; preds = %221, %218
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @get16(i32 %230)
  %232 = sub nsw i32 %231, 2
  %233 = call i32 @skip(i32 %227, i32 %232)
  store i32 1, i32* %3, align 4
  br label %235

234:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %234, %224, %211, %180, %159, %120, %93, %63, %58, %31, %29, %21, %19
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @e(i8*, i8*) #1

declare dso_local i32 @get16(i32) #1

declare dso_local i32 @get8(i32) #1

declare dso_local i8* @get8u(i32) #1

declare dso_local i32 @build_huffman(i32, i32*) #1

declare dso_local i32 @skip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
