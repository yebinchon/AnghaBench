; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_find.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.format_entry = type { i8*, i64, i8*, i32 (%struct.format_tree*, %struct.format_entry*)* }
%struct.environ_entry = type { i8* }
%struct.options_entry = type { i32 }

@format_find.s = internal global [64 x i8] zeroinitializer, align 16
@FORMAT_TIMESTRING = common dso_local global i32 0, align 4
@global_options = common dso_local global i32 0, align 4
@global_w_options = common dso_local global i32 0, align 4
@global_s_options = common dso_local global i32 0, align 4
@format_entry_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_environ = common dso_local global i32 0, align 4
@FORMAT_BASENAME = common dso_local global i32 0, align 4
@FORMAT_DIRNAME = common dso_local global i32 0, align 4
@FORMAT_QUOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_tree*, i8*, i32)* @format_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_find(%struct.format_tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.format_entry*, align 8
  %9 = alloca %struct.format_entry, align 8
  %10 = alloca %struct.environ_entry*, align 8
  %11 = alloca %struct.options_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @FORMAT_TIMESTRING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %3
  %21 = load i32, i32* @global_options, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.options_entry* @options_parse_get(i32 %21, i8* %22, i32* %12, i32 0)
  store %struct.options_entry* %23, %struct.options_entry** %11, align 8
  %24 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %25 = icmp eq %struct.options_entry* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %28 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %33 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.options_entry* @options_parse_get(i32 %36, i8* %37, i32* %12, i32 0)
  store %struct.options_entry* %38, %struct.options_entry** %11, align 8
  br label %39

39:                                               ; preds = %31, %26, %20
  %40 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %41 = icmp eq %struct.options_entry* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %44 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %49 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call %struct.options_entry* @options_parse_get(i32 %52, i8* %53, i32* %12, i32 0)
  store %struct.options_entry* %54, %struct.options_entry** %11, align 8
  br label %55

55:                                               ; preds = %47, %42, %39
  %56 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %57 = icmp eq %struct.options_entry* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @global_w_options, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call %struct.options_entry* @options_parse_get(i32 %59, i8* %60, i32* %12, i32 0)
  store %struct.options_entry* %61, %struct.options_entry** %11, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %64 = icmp eq %struct.options_entry* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %67 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %72 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call %struct.options_entry* @options_parse_get(i32 %75, i8* %76, i32* %12, i32 0)
  store %struct.options_entry* %77, %struct.options_entry** %11, align 8
  br label %78

78:                                               ; preds = %70, %65, %62
  %79 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %80 = icmp eq %struct.options_entry* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @global_s_options, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call %struct.options_entry* @options_parse_get(i32 %82, i8* %83, i32* %12, i32 0)
  store %struct.options_entry* %84, %struct.options_entry** %11, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %87 = icmp ne %struct.options_entry* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.options_entry*, %struct.options_entry** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i8* @options_tostring(%struct.options_entry* %89, i32 %90, i32 1)
  store i8* %91, i8** %13, align 8
  br label %202

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %3
  store i8* null, i8** %13, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %9, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @format_entry_tree, align 4
  %97 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %98 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %97, i32 0, i32 1
  %99 = call %struct.format_entry* @RB_FIND(i32 %96, i32* %98, %struct.format_entry* %9)
  store %struct.format_entry* %99, %struct.format_entry** %8, align 8
  %100 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %101 = icmp ne %struct.format_entry* %100, null
  br i1 %101, label %102, label %161

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @FORMAT_TIMESTRING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %109 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i8* null, i8** %4, align 8
  br label %244

113:                                              ; preds = %107
  %114 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %115 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %114, i32 0, i32 1
  %116 = call i32 @ctime_r(i64* %115, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_find.s, i64 0, i64 0))
  %117 = call i64 @strcspn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_find.s, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* @format_find.s, i64 0, i64 %117
  store i8 0, i8* %118, align 1
  %119 = call i8* @xstrdup(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_find.s, i64 0, i64 0))
  store i8* %119, i8** %13, align 8
  br label %202

120:                                              ; preds = %102
  %121 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %122 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %127 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @xasprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  br label %202

130:                                              ; preds = %120
  %131 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %132 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %156

135:                                              ; preds = %130
  %136 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %137 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %136, i32 0, i32 3
  %138 = load i32 (%struct.format_tree*, %struct.format_entry*)*, i32 (%struct.format_tree*, %struct.format_entry*)** %137, align 8
  %139 = icmp ne i32 (%struct.format_tree*, %struct.format_entry*)* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %142 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %141, i32 0, i32 3
  %143 = load i32 (%struct.format_tree*, %struct.format_entry*)*, i32 (%struct.format_tree*, %struct.format_entry*)** %142, align 8
  %144 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %145 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %146 = call i32 %143(%struct.format_tree* %144, %struct.format_entry* %145)
  %147 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %148 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %154 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151, %140
  br label %156

156:                                              ; preds = %155, %135, %130
  %157 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %158 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @xstrdup(i8* %159)
  store i8* %160, i8** %13, align 8
  br label %202

161:                                              ; preds = %93
  %162 = load i32, i32* %7, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* @FORMAT_TIMESTRING, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %201

167:                                              ; preds = %161
  store %struct.environ_entry* null, %struct.environ_entry** %10, align 8
  %168 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %169 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = icmp ne %struct.TYPE_6__* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %174 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %6, align 8
  %179 = call %struct.environ_entry* @environ_find(i32 %177, i8* %178)
  store %struct.environ_entry* %179, %struct.environ_entry** %10, align 8
  br label %180

180:                                              ; preds = %172, %167
  %181 = load %struct.environ_entry*, %struct.environ_entry** %10, align 8
  %182 = icmp eq %struct.environ_entry* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* @global_environ, align 4
  %185 = load i8*, i8** %6, align 8
  %186 = call %struct.environ_entry* @environ_find(i32 %184, i8* %185)
  store %struct.environ_entry* %186, %struct.environ_entry** %10, align 8
  br label %187

187:                                              ; preds = %183, %180
  %188 = load %struct.environ_entry*, %struct.environ_entry** %10, align 8
  %189 = icmp ne %struct.environ_entry* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load %struct.environ_entry*, %struct.environ_entry** %10, align 8
  %192 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.environ_entry*, %struct.environ_entry** %10, align 8
  %197 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @xstrdup(i8* %198)
  store i8* %199, i8** %13, align 8
  br label %202

200:                                              ; preds = %190, %187
  br label %201

201:                                              ; preds = %200, %161
  store i8* null, i8** %4, align 8
  br label %244

202:                                              ; preds = %195, %156, %125, %113, %88
  %203 = load i8*, i8** %13, align 8
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store i8* null, i8** %4, align 8
  br label %244

206:                                              ; preds = %202
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @FORMAT_BASENAME, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i8*, i8** %13, align 8
  store i8* %212, i8** %14, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = call i8* @basename(i8* %213)
  %215 = call i8* @xstrdup(i8* %214)
  store i8* %215, i8** %13, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = call i32 @free(i8* %216)
  br label %218

218:                                              ; preds = %211, %206
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @FORMAT_DIRNAME, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load i8*, i8** %13, align 8
  store i8* %224, i8** %14, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = call i8* @dirname(i8* %225)
  %227 = call i8* @xstrdup(i8* %226)
  store i8* %227, i8** %13, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = call i32 @free(i8* %228)
  br label %230

230:                                              ; preds = %223, %218
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @FORMAT_QUOTE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load i8*, i8** %13, align 8
  store i8* %236, i8** %14, align 8
  %237 = load i8*, i8** %14, align 8
  %238 = call i8* @format_quote(i8* %237)
  %239 = call i8* @xstrdup(i8* %238)
  store i8* %239, i8** %13, align 8
  %240 = load i8*, i8** %14, align 8
  %241 = call i32 @free(i8* %240)
  br label %242

242:                                              ; preds = %235, %230
  %243 = load i8*, i8** %13, align 8
  store i8* %243, i8** %4, align 8
  br label %244

244:                                              ; preds = %242, %205, %201, %112
  %245 = load i8*, i8** %4, align 8
  ret i8* %245
}

declare dso_local %struct.options_entry* @options_parse_get(i32, i8*, i32*, i32) #1

declare dso_local i8* @options_tostring(%struct.options_entry*, i32, i32) #1

declare dso_local %struct.format_entry* @RB_FIND(i32, i32*, %struct.format_entry*) #1

declare dso_local i32 @ctime_r(i64*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i64) #1

declare dso_local %struct.environ_entry* @environ_find(i32, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i8* @format_quote(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
