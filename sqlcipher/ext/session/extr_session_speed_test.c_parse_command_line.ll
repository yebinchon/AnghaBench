; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_session_speed_test.c_parse_command_line.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_session_speed_test.c_parse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64 }

@CMDLINE_BARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"-cmdline:verbose\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Options are: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32, %struct.TYPE_7__*, i8*, i8*)* @parse_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_command_line(i32 %0, i8** %1, i32 %2, %struct.TYPE_7__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %155, %6
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %158

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %134, %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %137

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %20, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @sqlite3_strnicmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp eq i64 0, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %45
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @ambiguous_option_error(i8* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %18, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CMDLINE_BARE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = bitcast i8* %76 to i32*
  store i32 1, i32* %77, align 4
  br label %132

78:                                               ; preds = %63
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %86 = call i32 @option_requires_argument_error(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %131 [
    i32 129, label %91
    i32 128, label %105
    i32 130, label %117
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %93 = load i8**, i8*** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @get_integer_option(%struct.TYPE_7__* %92, i8* %97)
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = bitcast i8* %103 to i32*
  store i32 %98, i32* %104, align 4
  br label %131

105:                                              ; preds = %87
  %106 = load i8**, i8*** %8, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = bitcast i8* %115 to i8**
  store i8* %110, i8** %116, align 8
  br label %131

117:                                              ; preds = %87
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %119 = load i8**, i8*** %8, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @get_boolean_option(%struct.TYPE_7__* %118, i8* %123)
  %125 = load i8*, i8** %13, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = bitcast i8* %129 to i32*
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %87, %117, %105, %91
  br label %132

132:                                              ; preds = %131, %71
  br label %133

133:                                              ; preds = %132, %45
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  br label %37

137:                                              ; preds = %37
  %138 = load i32, i32* %18, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* %17, align 4
  %143 = call i64 @sqlite3_strnicmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %141, i32 %142)
  %144 = icmp eq i64 0, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %14, align 4
  store i32 1, i32* %18, align 4
  br label %146

146:                                              ; preds = %145, %140, %137
  %147 = load i32, i32* %18, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8*, i8** %16, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @unknown_option_error(i8* %150, %struct.TYPE_7__* %151, i8* %152)
  br label %154

154:                                              ; preds = %149, %146
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %25

158:                                              ; preds = %25
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %238

161:                                              ; preds = %158
  %162 = load i32, i32* @stdout, align 4
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %164

164:                                              ; preds = %232, %161
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %235

172:                                              ; preds = %164
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %22, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CMDLINE_BARE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %191, label %182

182:                                              ; preds = %172
  %183 = load i8*, i8** %13, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = bitcast i8* %187 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %182, %172
  %192 = load i32, i32* @stdout, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %191, %182
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %231 [
    i32 129, label %201
    i32 130, label %211
    i32 128, label %221
  ]

201:                                              ; preds = %197
  %202 = load i32, i32* @stdout, align 4
  %203 = load i8*, i8** %13, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = bitcast i8* %207 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %209)
  br label %231

211:                                              ; preds = %197
  %212 = load i32, i32* @stdout, align 4
  %213 = load i8*, i8** %13, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = bitcast i8* %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  br label %231

221:                                              ; preds = %197
  %222 = load i32, i32* @stdout, align 4
  %223 = load i8*, i8** %13, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  %228 = bitcast i8* %227 to i8**
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %197, %221, %211, %201
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %21, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %21, align 4
  br label %164

235:                                              ; preds = %164
  %236 = load i32, i32* @stdout, align 4
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %158
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @ambiguous_option_error(i8*) #1

declare dso_local i32 @option_requires_argument_error(%struct.TYPE_7__*) #1

declare dso_local i32 @get_integer_option(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @get_boolean_option(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @unknown_option_error(i8*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
