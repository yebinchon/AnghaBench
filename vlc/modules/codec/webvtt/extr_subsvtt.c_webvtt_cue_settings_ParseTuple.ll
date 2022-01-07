; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_cue_settings_ParseTuple.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_cue_settings_ParseTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, %struct.TYPE_6__, i8*, i32, i8*, %struct.TYPE_5__, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rl\00", align 1
@WEBVTT_ALIGN_RIGHT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@WEBVTT_ALIGN_LEFT = common dso_local global i8* null, align 8
@WEBVTT_ALIGN_AUTO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@WEBVTT_ALIGN_CENTER = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@WEBVTT_ALIGN_END = common dso_local global i8* null, align 8
@WEBVTT_ALIGN_START = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"line-left\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"line-right\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*)* @webvtt_cue_settings_ParseTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @webvtt_cue_settings_ParseTuple(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @WEBVTT_ALIGN_RIGHT, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  br label %33

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @WEBVTT_ALIGN_LEFT, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load i8*, i8** @WEBVTT_ALIGN_AUTO, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %16
  br label %209

34:                                               ; preds = %3
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 37)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @parse_percent(i8* %46, i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %59

53:                                               ; preds = %38
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @us_strtof(i8* %54, i32* null)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %45
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 44)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = icmp ne i8* %62, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** @WEBVTT_ALIGN_CENTER, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  br label %86

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** @WEBVTT_ALIGN_END, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  br label %85

81:                                               ; preds = %73
  %82 = load i8*, i8** @WEBVTT_ALIGN_START, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %59
  br label %208

88:                                               ; preds = %34
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %134, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = call i32 @parse_percent(i8* %93, i32* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 44)
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %8, align 8
  %101 = icmp ne i8* %99, null
  br i1 %101, label %102, label %133

102:                                              ; preds = %92
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** @WEBVTT_ALIGN_LEFT, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  br label %132

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** @WEBVTT_ALIGN_RIGHT, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  br label %131

118:                                              ; preds = %110
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** @WEBVTT_ALIGN_CENTER, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %130

126:                                              ; preds = %118
  %127 = load i8*, i8** @WEBVTT_ALIGN_AUTO, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %114
  br label %132

132:                                              ; preds = %131, %106
  br label %133

133:                                              ; preds = %132, %92
  br label %207

134:                                              ; preds = %88
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = call i32 @parse_percent(i8* %139, i32* %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  br label %206

147:                                              ; preds = %134
  %148 = load i8*, i8** %5, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %147
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @free(i32 %154)
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @strdup(i8* %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %205

160:                                              ; preds = %147
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %204, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** @WEBVTT_ALIGN_START, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %203

172:                                              ; preds = %164
  %173 = load i8*, i8** %6, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** @WEBVTT_ALIGN_END, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  br label %202

180:                                              ; preds = %172
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** @WEBVTT_ALIGN_LEFT, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  br label %201

188:                                              ; preds = %180
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i8*, i8** @WEBVTT_ALIGN_RIGHT, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  br label %200

196:                                              ; preds = %188
  %197 = load i8*, i8** @WEBVTT_ALIGN_CENTER, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %192
  br label %201

201:                                              ; preds = %200, %184
  br label %202

202:                                              ; preds = %201, %176
  br label %203

203:                                              ; preds = %202, %168
  br label %204

204:                                              ; preds = %203, %160
  br label %205

205:                                              ; preds = %204, %151
  br label %206

206:                                              ; preds = %205, %138
  br label %207

207:                                              ; preds = %206, %133
  br label %208

208:                                              ; preds = %207, %87
  br label %209

209:                                              ; preds = %208, %33
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_percent(i8*, i32*) #1

declare dso_local i32 @us_strtof(i8*, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
