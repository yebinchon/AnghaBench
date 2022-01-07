; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_structure.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CONF_MAX_DEPTH = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i64 0, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"next event %d depth %d seq %d\00", align 1
@CONF_ROOT_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"conf: '%s' has more than one \22key:value\22 at depth %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"conf: '%s' has a depth greater than %d\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"conf: '%s' missing sequence directive at depth %d\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"conf: '%s' has more than one sequence directive\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"conf: '%s' has sequence at depth %d instead of %d\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"conf: '%s' has invalid \22key:value\22 at depth %d\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"conf: '%s' has invalid empty \22key:\22 at depth %d\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"conf: '%s' has invalid mapping \22key:\22 at depth %d\00", align 1
@NC_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*)* @conf_validate_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_validate_structure(%struct.conf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %3, align 8
  %14 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.conf*, %struct.conf** %3, align 8
  %20 = call i64 @conf_yaml_init(%struct.conf* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @NC_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %228

26:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %18, i64 %34
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %27

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %215, %39
  %41 = load %struct.conf*, %struct.conf** %3, align 8
  %42 = call i64 @conf_event_next(%struct.conf* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @NC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %228

48:                                               ; preds = %40
  %49 = load %struct.conf*, %struct.conf** %3, align 8
  %50 = getelementptr inbounds %struct.conf, %struct.conf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @LOG_VVERB, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @log_debug(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %203 [
    i32 128, label %59
    i32 135, label %59
    i32 136, label %60
    i32 129, label %61
    i32 133, label %62
    i32 134, label %92
    i32 130, label %113
    i32 131, label %147
    i32 132, label %156
  ]

59:                                               ; preds = %48, %48
  br label %205

60:                                               ; preds = %48
  br label %205

61:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %205

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CONF_ROOT_DEPTH, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %18, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  %73 = load %struct.conf*, %struct.conf** %3, align 8
  %74 = getelementptr inbounds %struct.conf, %struct.conf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %89

78:                                               ; preds = %66, %62
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  %83 = load %struct.conf*, %struct.conf** %3, align 8
  %84 = getelementptr inbounds %struct.conf, %struct.conf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %87 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %205

92:                                               ; preds = %48
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %12, align 4
  br label %106

100:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  %101 = load %struct.conf*, %struct.conf** %3, align 8
  %102 = getelementptr inbounds %struct.conf, %struct.conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %99
  br label %107

107:                                              ; preds = %106, %92
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %18, i64 %111
  store i32 0, i32* %112, align 4
  br label %205

113:                                              ; preds = %48
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  %117 = load %struct.conf*, %struct.conf** %3, align 8
  %118 = getelementptr inbounds %struct.conf, %struct.conf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %146

121:                                              ; preds = %113
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  store i32 1, i32* %11, align 4
  %126 = load %struct.conf*, %struct.conf** %3, align 8
  %127 = getelementptr inbounds %struct.conf, %struct.conf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %131 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %129, i32 %130)
  br label %145

132:                                              ; preds = %121
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %18, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  store i32 1, i32* %11, align 4
  %139 = load %struct.conf*, %struct.conf** %3, align 8
  %140 = getelementptr inbounds %struct.conf, %struct.conf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %132
  br label %145

145:                                              ; preds = %144, %125
  br label %146

146:                                              ; preds = %145, %116
  store i32 1, i32* %12, align 4
  br label %205

147:                                              ; preds = %48
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ASSERT(i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %18, i64 %154
  store i32 0, i32* %155, align 4
  br label %205

156:                                              ; preds = %48
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  store i32 1, i32* %11, align 4
  %160 = load %struct.conf*, %struct.conf** %3, align 8
  %161 = getelementptr inbounds %struct.conf, %struct.conf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %162, i32 %163)
  br label %197

165:                                              ; preds = %156
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @CONF_ROOT_DEPTH, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %18, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  store i32 1, i32* %11, align 4
  %176 = load %struct.conf*, %struct.conf** %3, align 8
  %177 = getelementptr inbounds %struct.conf, %struct.conf* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (i8*, i32, ...) @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %178, i32 %179)
  br label %196

181:                                              ; preds = %169, %165
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @CONF_MAX_DEPTH, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %18, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %18, i64 %193
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %191, %185, %181
  br label %196

196:                                              ; preds = %195, %175
  br label %197

197:                                              ; preds = %196, %159
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %18, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  br label %205

203:                                              ; preds = %48
  %204 = call i32 (...) @NOT_REACHED()
  br label %205

205:                                              ; preds = %203, %197, %147, %146, %107, %89, %61, %60, %59
  %206 = load %struct.conf*, %struct.conf** %3, align 8
  %207 = call i32 @conf_event_done(%struct.conf* %206)
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br label %215

215:                                              ; preds = %211, %208
  %216 = phi i1 [ false, %208 ], [ %214, %211 ]
  br i1 %216, label %40, label %217

217:                                              ; preds = %215
  %218 = load %struct.conf*, %struct.conf** %3, align 8
  %219 = call i32 @conf_yaml_deinit(%struct.conf* %218)
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = load i64, i64* @NC_OK, align 8
  br label %226

224:                                              ; preds = %217
  %225 = load i64, i64* @NC_ERROR, align 8
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i64 [ %223, %222 ], [ %225, %224 ]
  store i64 %227, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %228

228:                                              ; preds = %226, %46, %24
  %229 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i64, i64* %2, align 8
  ret i64 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @conf_yaml_init(%struct.conf*) #2

declare dso_local i64 @conf_event_next(%struct.conf*) #2

declare dso_local i32 @log_debug(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @log_error(i8*, i32, ...) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @NOT_REACHED(...) #2

declare dso_local i32 @conf_event_done(%struct.conf*) #2

declare dso_local i32 @conf_yaml_deinit(%struct.conf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
