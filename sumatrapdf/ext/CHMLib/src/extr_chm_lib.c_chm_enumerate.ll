; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_enumerate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i32, i64 }
%struct.chmUnitInfo = type { i32, i8* }
%struct.chmPmglHeader = type { i32, i32* }

@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@CHM_ENUMERATE_DIRS = common dso_local global i32 0, align 4
@CHM_ENUMERATE_FILES = common dso_local global i32 0, align 4
@CHM_ENUMERATE_SPECIAL = common dso_local global i32 0, align 4
@CHM_ENUMERATE_NORMAL = common dso_local global i32 0, align 4
@CHM_ENUMERATE_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chm_enumerate(%struct.chmFile* %0, i32 %1, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.chmPmglHeader, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.chmUnitInfo, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)* %2, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %22 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32* @malloc(i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 7
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 248
  store i32 %29, i32* %19, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %204

33:                                               ; preds = %4
  %34 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %35 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %198, %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %201

40:                                               ; preds = %37
  %41 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %44 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %49 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %47, %50
  %52 = add i64 %45, %51
  %53 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %54 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @_chm_fetch_bytes(%struct.chmFile* %41, i32* %42, i64 %52, i64 %55)
  %57 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %58 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @free(i32* %62)
  store i32 0, i32* %5, align 4
  br label %204

64:                                               ; preds = %40
  %65 = load i32*, i32** %11, align 8
  store i32* %65, i32** %14, align 8
  %66 = load i32, i32* @_CHM_PMGL_LEN, align 4
  store i32 %66, i32* %15, align 4
  %67 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %68 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @_unmarshal_pmgl_header(i32** %14, i32* %15, i64 %69, %struct.chmPmglHeader* %12)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @free(i32* %73)
  store i32 0, i32* %5, align 4
  br label %204

75:                                               ; preds = %64
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %78 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %12, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = ptrtoint i32* %80 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %13, align 8
  br label %88

88:                                               ; preds = %197, %182, %172, %75
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ult i32* %89, %90
  br i1 %91, label %92, label %198

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = call i32 @_chm_parse_PMGL_entry(i32** %14, %struct.chmUnitInfo* %17)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @free(i32* %97)
  store i32 0, i32* %5, align 4
  br label %204

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strlen(i8* %101)
  %103 = sub i64 %102, 1
  store i64 %103, i64* %16, align 8
  %104 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = load i32, i32* @CHM_ENUMERATE_DIRS, align 4
  %113 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %99
  %117 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 47
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load i32, i32* @CHM_ENUMERATE_FILES, align 4
  %126 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %116
  %130 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 47
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 35
  br i1 %142, label %150, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 36
  br i1 %149, label %150, label %155

150:                                              ; preds = %143, %136
  %151 = load i32, i32* @CHM_ENUMERATE_SPECIAL, align 4
  %152 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 8
  br label %160

155:                                              ; preds = %143
  %156 = load i32, i32* @CHM_ENUMERATE_NORMAL, align 4
  %157 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %155, %150
  br label %166

161:                                              ; preds = %129
  %162 = load i32, i32* @CHM_ENUMERATE_META, align 4
  %163 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %161, %160
  %167 = load i32, i32* %18, align 4
  %168 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  br label %88

173:                                              ; preds = %166
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* %19, align 4
  %178 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  br label %88

183:                                              ; preds = %176, %173
  %184 = load i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)*, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)** %8, align 8
  %185 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 %184(%struct.chmFile* %185, %struct.chmUnitInfo* %17, i8* %186)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  switch i32 %188, label %196 [
    i32 129, label %189
    i32 130, label %192
    i32 128, label %193
  ]

189:                                              ; preds = %183
  %190 = load i32*, i32** %11, align 8
  %191 = call i32 @free(i32* %190)
  store i32 0, i32* %5, align 4
  br label %204

192:                                              ; preds = %183
  br label %197

193:                                              ; preds = %183
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @free(i32* %194)
  store i32 1, i32* %5, align 4
  br label %204

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %192
  br label %88

198:                                              ; preds = %88
  %199 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %12, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %10, align 4
  br label %37

201:                                              ; preds = %37
  %202 = load i32*, i32** %11, align 8
  %203 = call i32 @free(i32* %202)
  store i32 1, i32* %5, align 4
  br label %204

204:                                              ; preds = %201, %193, %189, %96, %72, %61, %32
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @_chm_fetch_bytes(%struct.chmFile*, i32*, i64, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_unmarshal_pmgl_header(i32**, i32*, i64, %struct.chmPmglHeader*) #1

declare dso_local i32 @_chm_parse_PMGL_entry(i32**, %struct.chmUnitInfo*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
