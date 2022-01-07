; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c___synctex_open.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c___synctex_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@synctex_suffix = common dso_local global i8* null, align 8
@synctex_suffix_gz = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"!  __synctex_open: Memory problem (1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"!  __synctex_open: Copy problem\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"!  __synctex_open: Concatenation problem (can't add suffix '%s')\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"SyncTeX: could not open %s, error %i\0A\00", align 1
@synctex_io_gz_mask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"SyncTeX: could not rename %s to %s, error %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"SyncTeX: could not open again %s, error %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"SyncTeX: could not open renamed %s, error %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__synctex_open(i8* %0, i8** %1, i32** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %214

21:                                               ; preds = %5
  %22 = load i32**, i32*** %9, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %214

24:                                               ; preds = %21
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %214

27:                                               ; preds = %24
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i8* @_synctex_get_io_mode_name(i32 %30)
  store i8* %31, i8** %17, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i8*, i8** @synctex_suffix, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %33, %35
  %37 = load i8*, i8** @synctex_suffix_gz, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %36, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @malloc(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* null, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %215

49:                                               ; preds = %27
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strcpy(i8* %51, i8* %52)
  %54 = icmp ne i8* %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %201, %186, %157, %124, %114, %90, %80, %68, %55
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @free(i8* %60)
  store i32 2, i32* %6, align 4
  br label %215

62:                                               ; preds = %49
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @_synctex_strip_last_path_extension(i8* %63)
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %57

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  store i8* null, i8** %18, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @_synctex_copy_with_quoting_last_path_component(i8* %73, i8** %18, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %18, align 8
  %79 = icmp eq i8* null, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %72
  br label %57

81:                                               ; preds = %77
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %18, align 8
  store i8* %83, i8** %12, align 8
  br label %84

84:                                               ; preds = %81, %69
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** @synctex_suffix, align 8
  %88 = call i8* @strcat(i8* %86, i8* %87)
  %89 = icmp ne i8* %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** @synctex_suffix, align 8
  %92 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  br label %57

93:                                               ; preds = %84
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** @synctex_suffix, align 8
  %100 = call i8* @strcat(i8* %98, i8* %99)
  %101 = icmp ne i8* %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @free(i8* %103)
  store i8* null, i8** %14, align 8
  br label %105

105:                                              ; preds = %102, %96, %93
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32* @gzopen(i8* %106, i8* %107)
  store i32* %108, i32** %13, align 8
  %109 = icmp eq i32* null, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %105
  %111 = load i32, i32* @errno, align 4
  %112 = load i32, i32* @ENOENT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8*, i8** %12, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %115, i32 %116)
  br label %57

118:                                              ; preds = %110
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** @synctex_suffix_gz, align 8
  %122 = call i8* @strcat(i8* %120, i8* %121)
  %123 = icmp ne i8* %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i8*, i8** @synctex_suffix_gz, align 8
  %126 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  br label %57

127:                                              ; preds = %118
  %128 = load i32, i32* @synctex_io_gz_mask, align 4
  %129 = load i32, i32* %16, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i8* @_synctex_get_io_mode_name(i32 %131)
  store i8* %132, i8** %17, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load i8*, i8** %14, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i8*, i8** @synctex_suffix_gz, align 8
  %139 = call i8* @strcat(i8* %137, i8* %138)
  %140 = icmp ne i8* %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @free(i8* %142)
  store i8* null, i8** %14, align 8
  br label %144

144:                                              ; preds = %141, %135, %127
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i32* @gzopen(i8* %145, i8* %146)
  store i32* %147, i32** %13, align 8
  %148 = icmp eq i32* null, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load i32, i32* @errno, align 4
  %151 = load i32, i32* @ENOENT, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %12, align 8
  %155 = load i32, i32* @errno, align 4
  %156 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149
  br label %57

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %105
  %160 = load i8*, i8** %14, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %207

162:                                              ; preds = %159
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @gzclose(i32* %163)
  %165 = load i8*, i8** %12, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i64 @rename(i8* %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load i8*, i8** %12, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = load i32, i32* @errno, align 4
  %173 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %170, i8* %171, i32 %172)
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = call i32* @gzopen(i8* %174, i8* %175)
  store i32* %176, i32** %13, align 8
  %177 = icmp eq i32* null, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %169
  %179 = load i32, i32* @errno, align 4
  %180 = load i32, i32* @ENOENT, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i8*, i8** %12, align 8
  %184 = load i32, i32* @errno, align 4
  %185 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %178
  br label %57

187:                                              ; preds = %169
  br label %206

188:                                              ; preds = %162
  %189 = load i8*, i8** %14, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call i32* @gzopen(i8* %189, i8* %190)
  store i32* %191, i32** %13, align 8
  %192 = icmp eq i32* null, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i32, i32* @errno, align 4
  %195 = load i32, i32* @ENOENT, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i8*, i8** %14, align 8
  %199 = load i32, i32* @errno, align 4
  %200 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %193
  br label %57

202:                                              ; preds = %188
  %203 = load i8*, i8** %12, align 8
  %204 = call i32 @free(i8* %203)
  %205 = load i8*, i8** %14, align 8
  store i8* %205, i8** %12, align 8
  store i8* null, i8** %14, align 8
  br label %206

206:                                              ; preds = %202, %187
  br label %207

207:                                              ; preds = %206, %159
  %208 = load i32*, i32** %13, align 8
  %209 = load i32**, i32*** %9, align 8
  store i32* %208, i32** %209, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load i32*, i32** %11, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i8*, i8** %12, align 8
  %213 = load i8**, i8*** %8, align 8
  store i8* %212, i8** %213, align 8
  store i32 0, i32* %6, align 4
  br label %215

214:                                              ; preds = %24, %21, %5
  store i32 3, i32* %6, align 4
  br label %215

215:                                              ; preds = %214, %207, %57, %47
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i8* @_synctex_get_io_mode_name(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @_synctex_error(i8*, ...) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_synctex_strip_last_path_extension(i8*) #1

declare dso_local i64 @_synctex_copy_with_quoting_last_path_component(i8*, i8**, i64) #1

declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local i32* @gzopen(i8*, i8*) #1

declare dso_local i32 @gzclose(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
