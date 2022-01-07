; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_string.c_match.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_string.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i8*, i32 }

@LJ_MAX_XLEVEL = common dso_local global i64 0, align 8
@LJ_ERR_STRPATX = common dso_local global i32 0, align 4
@CAP_POSITION = common dso_local global i32 0, align 4
@CAP_UNFINISHED = common dso_local global i32 0, align 4
@LJ_ERR_STRPATB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i8*, i8*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @LJ_MAX_XLEVEL, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LJ_ERR_STRPATX, align 4
  %23 = call i32 @lj_err_caller(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  br label %25

25:                                               ; preds = %230, %199, %141, %121, %70, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %162 [
    i32 40, label %29
    i32 41, label %50
    i32 128, label %56
    i32 0, label %146
    i32 36, label %147
  ]

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 41
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i32, i32* @CAP_POSITION, align 4
  %41 = call i8* @start_capture(%struct.TYPE_10__* %36, i8* %37, i8* %39, i32 %40)
  store i8* %41, i8** %5, align 8
  br label %49

42:                                               ; preds = %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i32, i32* @CAP_UNFINISHED, align 4
  %48 = call i8* @start_capture(%struct.TYPE_10__* %43, i8* %44, i8* %46, i32 %47)
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %42, %35
  br label %236

50:                                               ; preds = %25
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i8* @end_capture(%struct.TYPE_10__* %51, i8* %52, i8* %54)
  store i8* %55, i8** %5, align 8
  br label %236

56:                                               ; preds = %25
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %123 [
    i32 98, label %61
    i32 102, label %73
  ]

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = call i8* @matchbalance(%struct.TYPE_10__* %62, i8* %63, i8* %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %145

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %6, align 8
  br label %25

73:                                               ; preds = %56
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 91
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LJ_ERR_STRPATB, align 4
  %85 = call i32 @lj_err_caller(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i8* @classend(%struct.TYPE_10__* %87, i8* %88)
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %101

96:                                               ; preds = %86
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  br label %101

101:                                              ; preds = %96, %95
  %102 = phi i32 [ 0, %95 ], [ %100, %96 ]
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  %104 = load i8, i8* %8, align 1
  %105 = call i32 @uchar(i8 signext %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  %109 = call i32 @matchbracketclass(i32 %105, i8* %106, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %101
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @uchar(i8 signext %113)
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  %118 = call i32 @matchbracketclass(i32 %114, i8* %115, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111, %101
  store i8* null, i8** %5, align 8
  br label %145

121:                                              ; preds = %111
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %6, align 8
  br label %25

123:                                              ; preds = %56
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @uchar(i8 signext %126)
  %128 = call i32 @lj_char_isdigit(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @uchar(i8 signext %135)
  %137 = call i8* @match_capture(%struct.TYPE_10__* %131, i8* %132, i32 %136)
  store i8* %137, i8** %5, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %145

141:                                              ; preds = %130
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %143, i8** %6, align 8
  br label %25

144:                                              ; preds = %123
  br label %163

145:                                              ; preds = %140, %120, %69
  br label %236

146:                                              ; preds = %25
  br label %236

147:                                              ; preds = %25
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %163

154:                                              ; preds = %147
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i8* null, i8** %5, align 8
  br label %161

161:                                              ; preds = %160, %154
  br label %236

162:                                              ; preds = %25
  br label %163

163:                                              ; preds = %162, %153, %144
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i8* @classend(%struct.TYPE_10__* %164, i8* %165)
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ult i8* %167, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load i8*, i8** %5, align 8
  %174 = load i8, i8* %173, align 1
  %175 = call i32 @uchar(i8 signext %174)
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = call i32 @singlematch(i32 %175, i8* %176, i8* %177)
  %179 = icmp ne i32 %178, 0
  br label %180

180:                                              ; preds = %172, %163
  %181 = phi i1 [ false, %163 ], [ %179, %172 ]
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %10, align 4
  %183 = load i8*, i8** %9, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  switch i32 %185, label %227 [
    i32 63, label %186
    i32 42, label %202
    i32 43, label %208
    i32 45, label %221
  ]

186:                                              ; preds = %180
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = call i8* @match(%struct.TYPE_10__* %190, i8* %192, i8* %194)
  store i8* %195, i8** %11, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i8*, i8** %11, align 8
  store i8* %198, i8** %5, align 8
  br label %235

199:                                              ; preds = %189, %186
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8* %201, i8** %6, align 8
  br label %25

202:                                              ; preds = %180
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = call i8* @max_expand(%struct.TYPE_10__* %203, i8* %204, i8* %205, i8* %206)
  store i8* %207, i8** %5, align 8
  br label %235

208:                                              ; preds = %180
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8*, i8** %6, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i8* @max_expand(%struct.TYPE_10__* %212, i8* %214, i8* %215, i8* %216)
  br label %219

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %211
  %220 = phi i8* [ %217, %211 ], [ null, %218 ]
  store i8* %220, i8** %5, align 8
  br label %235

221:                                              ; preds = %180
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i8* @min_expand(%struct.TYPE_10__* %222, i8* %223, i8* %224, i8* %225)
  store i8* %226, i8** %5, align 8
  br label %235

227:                                              ; preds = %180
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i8*, i8** %5, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %5, align 8
  %233 = load i8*, i8** %9, align 8
  store i8* %233, i8** %6, align 8
  br label %25

234:                                              ; preds = %227
  store i8* null, i8** %5, align 8
  br label %235

235:                                              ; preds = %234, %221, %219, %202, %197
  br label %236

236:                                              ; preds = %235, %161, %146, %145, %50, %49
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, -1
  store i64 %240, i64* %238, align 8
  %241 = load i8*, i8** %5, align 8
  ret i8* %241
}

declare dso_local i32 @lj_err_caller(i32, i32) #1

declare dso_local i8* @start_capture(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i8* @end_capture(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i8* @matchbalance(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i8* @classend(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @matchbracketclass(i32, i8*, i8*) #1

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i32 @lj_char_isdigit(i32) #1

declare dso_local i8* @match_capture(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @singlematch(i32, i8*, i8*) #1

declare dso_local i8* @max_expand(%struct.TYPE_10__*, i8*, i8*, i8*) #1

declare dso_local i8* @min_expand(%struct.TYPE_10__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
