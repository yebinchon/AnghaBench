; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"systemd.journald.forward_to_syslog\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to parse forward to syslog switch \22%s\22. Ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"systemd.journald.forward_to_kmsg\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to parse forward to kmsg switch \22%s\22. Ignoring.\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"systemd.journald.forward_to_console\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Failed to parse forward to console switch \22%s\22. Ignoring.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"systemd.journald.forward_to_wall\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Failed to parse forward to wall switch \22%s\22. Ignoring.\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"systemd.journald.max_level_console\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Failed to parse max level console value \22%s\22. Ignoring.\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"systemd.journald.max_level_store\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Failed to parse max level store value \22%s\22. Ignoring.\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"systemd.journald.max_level_syslog\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Failed to parse max level syslog value \22%s\22. Ignoring.\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"systemd.journald.max_level_kmsg\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Failed to parse max level kmsg value \22%s\22. Ignoring.\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"systemd.journald.max_level_wall\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Failed to parse max level wall value \22%s\22. Ignoring.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"systemd.journald\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"Unknown journald kernel command line option \22%s\22. Ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = call i32 @assert(%struct.TYPE_3__* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @proc_cmdline_key_streq(i8* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @parse_boolean(i8* %21)
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 1, %23 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @log_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  br label %236

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @proc_cmdline_key_streq(i8* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @parse_boolean(i8* %44)
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 1, %46 ]
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %235

59:                                               ; preds = %36
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @proc_cmdline_key_streq(i8* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @parse_boolean(i8* %67)
  br label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 1, %69 ]
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @log_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  br label %234

82:                                               ; preds = %59
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @proc_cmdline_key_streq(i8* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @parse_boolean(i8* %90)
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32 [ %91, %89 ], [ 1, %92 ]
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %97
  br label %233

105:                                              ; preds = %82
  %106 = load i8*, i8** %5, align 8
  %107 = call i64 @proc_cmdline_key_streq(i8* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @proc_cmdline_value_missing(i8* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %237

115:                                              ; preds = %109
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @log_level_from_string(i8* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @log_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  br label %127

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %120
  br label %232

128:                                              ; preds = %105
  %129 = load i8*, i8** %5, align 8
  %130 = call i64 @proc_cmdline_key_streq(i8* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @proc_cmdline_value_missing(i8* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %237

138:                                              ; preds = %132
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @log_level_from_string(i8* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @log_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %144)
  br label %150

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %143
  br label %231

151:                                              ; preds = %128
  %152 = load i8*, i8** %5, align 8
  %153 = call i64 @proc_cmdline_key_streq(i8* %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %151
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @proc_cmdline_value_missing(i8* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %237

161:                                              ; preds = %155
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @log_level_from_string(i8* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8* %167)
  br label %173

169:                                              ; preds = %161
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %166
  br label %230

174:                                              ; preds = %151
  %175 = load i8*, i8** %5, align 8
  %176 = call i64 @proc_cmdline_key_streq(i8* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %174
  %179 = load i8*, i8** %5, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = call i64 @proc_cmdline_value_missing(i8* %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %237

184:                                              ; preds = %178
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @log_level_from_string(i8* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 @log_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8* %190)
  br label %196

192:                                              ; preds = %184
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %189
  br label %229

197:                                              ; preds = %174
  %198 = load i8*, i8** %5, align 8
  %199 = call i64 @proc_cmdline_key_streq(i8* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %197
  %202 = load i8*, i8** %5, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = call i64 @proc_cmdline_value_missing(i8* %202, i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %237

207:                                              ; preds = %201
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @log_level_from_string(i8* %208)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i8*, i8** %6, align 8
  %214 = call i32 @log_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8* %213)
  br label %219

215:                                              ; preds = %207
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %212
  br label %228

220:                                              ; preds = %197
  %221 = load i8*, i8** %5, align 8
  %222 = call i64 @startswith(i8* %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @log_warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %224, %220
  br label %228

228:                                              ; preds = %227, %219
  br label %229

229:                                              ; preds = %228, %196
  br label %230

230:                                              ; preds = %229, %173
  br label %231

231:                                              ; preds = %230, %150
  br label %232

232:                                              ; preds = %231, %127
  br label %233

233:                                              ; preds = %232, %104
  br label %234

234:                                              ; preds = %233, %81
  br label %235

235:                                              ; preds = %234, %58
  br label %236

236:                                              ; preds = %235, %35
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %236, %206, %183, %160, %137, %114
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @assert(%struct.TYPE_3__*) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @log_level_from_string(i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
