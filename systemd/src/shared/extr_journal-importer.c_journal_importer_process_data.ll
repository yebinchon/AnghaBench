; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_journal-importer.c_journal_importer_process_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_journal-importer.c_journal_importer_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32 }

@IMPORTER_STATE_EOF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Received empty line, event is ready\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Ignoring invalid field: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Received: %.*s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wtf?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_importer_process_data(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %249 [
    i32 128, label %15
    i32 129, label %138
    i32 131, label %170
    i32 130, label %229
  ]

15:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @assert(i8* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i32 @get_line(%struct.TYPE_8__* %24, i8** %5, i64* %7)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %251

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** @IMPORTER_STATE_EOF, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %251

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @assert(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @assert(i8* %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = call i32 (i8*, ...) @log_trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %251

60:                                               ; preds = %38
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i8* @memchr(i8* %61, i8 signext 61, i64 %62)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %119

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @journal_field_valid(i8* %69, i32 %75, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %66
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @strndupa(i8* %79, i32 %85)
  store i8* %86, i8** %9, align 8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @cellescape(i8* %87, i32 64, i8* %88)
  %90 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 0, i32* %2, align 4
  br label %251

91:                                               ; preds = %66
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @process_special_field(%struct.TYPE_8__* %95, i8* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  br label %106

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  store i32 %107, i32* %2, align 4
  br label %251

108:                                              ; preds = %91
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i8*, i8** %5, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @iovw_put(i32* %110, i8* %111, i64 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %251

118:                                              ; preds = %108
  br label %129

119:                                              ; preds = %60
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 61, i8* %123, align 1
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 129, i32* %128, align 8
  br label %129

129:                                              ; preds = %119, %118
  %130 = load i64, i64* %7, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %137 = call i32 (i8*, ...) @log_trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %131, i8* %132, i8* %136)
  store i32 0, i32* %2, align 4
  br label %251

138:                                              ; preds = %1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @assert(i8* %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = call i32 @get_data_size(%struct.TYPE_8__* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %251

153:                                              ; preds = %138
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i8*, i8** @IMPORTER_STATE_EOF, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %251

161:                                              ; preds = %153
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ugt i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 131, i32 130
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %2, align 4
  br label %251

170:                                              ; preds = %1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ugt i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @assert(i8* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = call i32 @get_data_data(%struct.TYPE_8__* %179, i8** %10)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %251

185:                                              ; preds = %170
  %186 = load i32, i32* %4, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i8*, i8** @IMPORTER_STATE_EOF, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  store i32 0, i32* %2, align 4
  br label %251

193:                                              ; preds = %185
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @assert(i8* %194)
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 -4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  store i8* %202, i8** %11, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 4
  %205 = load i8*, i8** %11, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @memmove(i8* %204, i8* %205, i64 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i8*, i8** %11, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %216, %219
  %221 = call i32 @iovw_put(i32* %211, i8* %213, i64 %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %193
  %225 = load i32, i32* %4, align 4
  store i32 %225, i32* %2, align 4
  br label %251

226:                                              ; preds = %193
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 130, i32* %228, align 8
  store i32 0, i32* %2, align 4
  br label %251

229:                                              ; preds = %1
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %231 = call i32 @get_data_newline(%struct.TYPE_8__* %230)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %251

236:                                              ; preds = %229
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load i8*, i8** @IMPORTER_STATE_EOF, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  store i32 0, i32* %2, align 4
  br label %251

244:                                              ; preds = %236
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store i64 0, i64* %246, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  store i32 128, i32* %248, align 8
  store i32 0, i32* %2, align 4
  br label %251

249:                                              ; preds = %1
  %250 = call i32 @assert_not_reached(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %251

251:                                              ; preds = %28, %33, %58, %78, %106, %116, %129, %151, %156, %161, %183, %188, %224, %226, %234, %239, %244, %249
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @get_line(%struct.TYPE_8__*, i8**, i64*) #1

declare dso_local i32 @log_trace(i8*, ...) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @journal_field_valid(i8*, i32, i32) #1

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @cellescape(i8*, i32, i8*) #1

declare dso_local i32 @process_special_field(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @iovw_put(i32*, i8*, i64) #1

declare dso_local i32 @get_data_size(%struct.TYPE_8__*) #1

declare dso_local i32 @get_data_data(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @get_data_newline(%struct.TYPE_8__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
