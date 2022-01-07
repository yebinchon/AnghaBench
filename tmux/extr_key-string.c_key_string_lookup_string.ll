; ModuleID = '/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_lookup_string.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_lookup_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32 }

@key_string_lookup_string.other = internal global i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [28 x i8] c"!#()+,-.0123456789:;<=>?'\0D\09\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@KEYC_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@KEYC_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@KEYC_CTRL = common dso_local global i32 0, align 4
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4
@KEYC_BASE = common dso_local global i32 0, align 4
@KEYC_BSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_string_lookup_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.utf8_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @KEYC_NONE, align 4
  store i32 %15, i32* %2, align 4
  br label %217

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @KEYC_ANY, align 4
  store i32 %21, i32* %2, align 4
  br label %217

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 120
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %40, i32* %2, align 4
  br label %217

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 2097151
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %45, i32* %2, align 4
  br label %217

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %217

48:                                               ; preds = %28, %22
  store i32 0, i32* %6, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 94
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @KEYC_CTRL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %60, %54, %48
  %67 = call i32 @key_string_get_modifiers(i8** %3)
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %79, i32* %2, align 4
  br label %217

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 127
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 32
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 127
  br i1 %101, label %102, label %104

102:                                              ; preds = %99, %92
  %103 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %103, i32* %2, align 4
  br label %217

104:                                              ; preds = %99
  br label %162

105:                                              ; preds = %86, %80
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = call i32 @utf8_open(%struct.utf8_data* %7, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @UTF8_MORE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %105
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %7, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %119, i32* %2, align 4
  br label %217

120:                                              ; preds = %112
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i8*, i8** %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 @utf8_append(%struct.utf8_data* %7, i32 %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %121

137:                                              ; preds = %121
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @UTF8_DONE, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %142, i32* %2, align 4
  br label %217

143:                                              ; preds = %137
  %144 = call i32 @utf8_combine(%struct.utf8_data* %7, i32* %10)
  %145 = load i32, i32* @UTF8_DONE, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %148, i32* %2, align 4
  br label %217

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %2, align 4
  br label %217

153:                                              ; preds = %105
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 @key_string_search_table(i8* %154)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @KEYC_UNKNOWN, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %160, i32* %2, align 4
  br label %217

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %104
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @KEYC_BASE, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %162
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @KEYC_CTRL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %213

171:                                              ; preds = %166
  %172 = load i8*, i8** @key_string_lookup_string.other, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @strchr(i8* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %213, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = icmp sge i32 %177, 97
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %4, align 4
  %181 = icmp sle i32 %180, 122
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %4, align 4
  %184 = sub nsw i32 %183, 96
  store i32 %184, i32* %4, align 4
  br label %208

185:                                              ; preds = %179, %176
  %186 = load i32, i32* %4, align 4
  %187 = icmp sge i32 %186, 64
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* %4, align 4
  %190 = icmp sle i32 %189, 95
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %4, align 4
  %193 = sub nsw i32 %192, 64
  store i32 %193, i32* %4, align 4
  br label %207

194:                                              ; preds = %188, %185
  %195 = load i32, i32* %4, align 4
  %196 = icmp eq i32 %195, 32
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  br label %206

198:                                              ; preds = %194
  %199 = load i32, i32* %4, align 4
  %200 = icmp eq i32 %199, 63
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32, i32* @KEYC_BSPACE, align 4
  store i32 %202, i32* %4, align 4
  br label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @KEYC_UNKNOWN, align 4
  store i32 %204, i32* %2, align 4
  br label %217

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %205, %197
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %182
  %209 = load i32, i32* @KEYC_CTRL, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %171, %166, %162
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %6, align 4
  %216 = or i32 %214, %215
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %213, %203, %159, %149, %147, %141, %118, %102, %78, %46, %44, %39, %20, %14
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @key_string_get_modifiers(i8**) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i32) #1

declare dso_local i32 @utf8_combine(%struct.utf8_data*, i32*) #1

declare dso_local i32 @key_string_search_table(i8*) #1

declare dso_local i32 @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
