; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32, %struct.field*, i8*, i8* }
%struct.field = type { i32 }
%struct.line = type { i64, i32 }

@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@parse_file.utf8_bom = internal constant [3 x i32] [i32 239, i32 187, i32 191], align 4
@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@Version = common dso_local global i32 0, align 4
@Signature = common dso_local global i32 0, align 4
@Chicago = common dso_local global i32 0, align 4
@WindowsNT = common dso_local global i32 0, align 4
@Windows95 = common dso_local global i32 0, align 4
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@ERROR_WRONG_INF_STYLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inf_file* (i32, i32*, i32)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inf_file* @parse_file(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inf_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.line*, align 8
  %20 = alloca %struct.field*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GetFileSize(i32 %21, i32* null)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_READONLY, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @CreateFileMappingW(i32 %23, i32* null, i32 %24, i32 0, i32 %25, i32* null)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store %struct.inf_file* null, %struct.inf_file** %4, align 8
  br label %220

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @FILE_MAP_READ, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i8* @MapViewOfFile(i32 %31, i32 %32, i32 0, i32 0, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @NtClose(i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store %struct.inf_file* null, %struct.inf_file** %4, align 8
  br label %220

40:                                               ; preds = %30
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %43 = call i8* @HeapAlloc(i32 %41, i32 %42, i32 32)
  %44 = bitcast i8* %43 to %struct.inf_file*
  store %struct.inf_file* %44, %struct.inf_file** %10, align 8
  %45 = icmp ne %struct.inf_file* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %47, i32* %9, align 4
  br label %204

48:                                               ; preds = %40
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i8* @HeapAlloc(i32 %49, i32 0, i32 %53)
  %55 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %56 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = icmp ne i8* %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %59, i32* %9, align 4
  br label %204

60:                                               ; preds = %48
  %61 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %62 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %65 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %67 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @RtlIsTextUnicode(i8* %68, i32 %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %116, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @CP_ACP, align 4
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %75, 12
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @memcmp(i8* %78, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @parse_file.utf8_bom, i64 0, i64 0), i32 12)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @CP_UTF8, align 4
  store i32 %82, i32* %14, align 4
  store i32 12, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %77, %72
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i8* @HeapAlloc(i32 %84, i32 0, i32 %88)
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @MultiByteToWideChar(i32 %93, i32 0, i8* %97, i32 %100, i32* %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @parse_buffer(%struct.inf_file* %104, i32* %105, i32* %109, i32* %110)
  store i32 %111, i32* %9, align 4
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @HeapFree(i32 %112, i32 0, i32* %113)
  br label %115

115:                                              ; preds = %92, %83
  br label %135

116:                                              ; preds = %60
  %117 = load i8*, i8** %8, align 8
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %17, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 65279
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %17, align 8
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i32*
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @parse_buffer(%struct.inf_file* %126, i32* %127, i32* %132, i32* %133)
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %125, %115
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %203, label %138

138:                                              ; preds = %135
  %139 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %140 = load i32, i32* @Version, align 4
  %141 = call i32 @find_section(%struct.inf_file* %139, i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %190

144:                                              ; preds = %138
  %145 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @Signature, align 4
  %148 = call %struct.line* @find_line(%struct.inf_file* %145, i32 %146, i32 %147)
  store %struct.line* %148, %struct.line** %19, align 8
  %149 = load %struct.line*, %struct.line** %19, align 8
  %150 = icmp ne %struct.line* %149, null
  br i1 %150, label %151, label %189

151:                                              ; preds = %144
  %152 = load %struct.line*, %struct.line** %19, align 8
  %153 = getelementptr inbounds %struct.line, %struct.line* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %151
  %157 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %158 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %157, i32 0, i32 1
  %159 = load %struct.field*, %struct.field** %158, align 8
  %160 = load %struct.line*, %struct.line** %19, align 8
  %161 = getelementptr inbounds %struct.line, %struct.line* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.field, %struct.field* %159, i64 %163
  store %struct.field* %164, %struct.field** %20, align 8
  %165 = load %struct.field*, %struct.field** %20, align 8
  %166 = getelementptr inbounds %struct.field, %struct.field* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @Chicago, align 4
  %169 = call i32 @strcmpiW(i32 %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %156
  br label %204

172:                                              ; preds = %156
  %173 = load %struct.field*, %struct.field** %20, align 8
  %174 = getelementptr inbounds %struct.field, %struct.field* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @WindowsNT, align 4
  %177 = call i32 @strcmpiW(i32 %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  br label %204

180:                                              ; preds = %172
  %181 = load %struct.field*, %struct.field** %20, align 8
  %182 = getelementptr inbounds %struct.field, %struct.field* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @Windows95, align 4
  %185 = call i32 @strcmpiW(i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180
  br label %204

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %151, %144
  br label %190

190:                                              ; preds = %189, %138
  %191 = load i32*, i32** %6, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32*, i32** %6, align 8
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @INF_STYLE_WIN4, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @ERROR_WRONG_INF_STYLE, align 4
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %200, %195
  br label %203

203:                                              ; preds = %202, %135
  br label %204

204:                                              ; preds = %203, %187, %179, %171, %58, %46
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @UnmapViewOfFile(i8* %205)
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %211 = icmp ne %struct.inf_file* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  %214 = call i32 @free_inf_file(%struct.inf_file* %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @SetLastError(i32 %216)
  store %struct.inf_file* null, %struct.inf_file** %10, align 8
  br label %218

218:                                              ; preds = %215, %204
  %219 = load %struct.inf_file*, %struct.inf_file** %10, align 8
  store %struct.inf_file* %219, %struct.inf_file** %4, align 8
  br label %220

220:                                              ; preds = %218, %39, %29
  %221 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  ret %struct.inf_file* %221
}

declare dso_local i32 @GetFileSize(i32, i32*) #1

declare dso_local i32 @CreateFileMappingW(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @RtlIsTextUnicode(i8*, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @parse_buffer(%struct.inf_file*, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @find_section(%struct.inf_file*, i32) #1

declare dso_local %struct.line* @find_line(%struct.inf_file*, i32, i32) #1

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @free_inf_file(%struct.inf_file*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
