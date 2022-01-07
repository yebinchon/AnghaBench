; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_metadata.c_ParseFlacPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_metadata.c_ParseFlacPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ParseFlacPicture.pi_cover_score = internal constant [21 x i8] c"\00\05\04\14\13\0D\12\11\10\0E\0F\09\08\07\0A\0B\06\01\0C\03\02", align 16
@.str = private unnamed_addr constant [10 x i8] c"picture%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".png\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ParseFlacPicture(i32* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [24 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %207

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @GetDWBE(i32* %22)
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = icmp uge i64 %25, 4
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %29, 4
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @GetDWBE(i32* %34)
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = icmp uge i64 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 4
  store i64 %42, i64* %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %7, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32* null, i32** %6, align 8
  br label %207

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i64, i64* %13, align 8
  %54 = call i8* @strndup(i8* %52, i64 %53)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp eq i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32* null, i32** %6, align 8
  br label %207

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp uge i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %66)
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %7, align 8
  br label %74

74:                                               ; preds = %62
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @free(i8* %78)
  store i32* null, i32** %6, align 8
  br label %207

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @GetDWBE(i32* %81)
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = icmp uge i64 %84, 4
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %86)
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, 4
  store i64 %89, i64* %8, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %83
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @free(i8* %97)
  store i32* null, i32** %6, align 8
  br label %207

99:                                               ; preds = %92
  store i32* null, i32** %15, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = load i64, i64* %13, align 8
  %103 = call i8* @strndup(i8* %101, i64 %102)
  store i8* %103, i8** %16, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = icmp eq i8* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %201

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp uge i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %115)
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %8, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %7, align 8
  br label %123

123:                                              ; preds = %111
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @EnsureUTF8(i8* %124)
  %126 = load i64, i64* %8, align 8
  %127 = icmp ult i64 %126, 20
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %201

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %8, align 8
  %132 = icmp uge i64 %131, 16
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %133)
  %135 = load i64, i64* %8, align 8
  %136 = sub i64 %135, 16
  store i64 %136, i64* %8, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  store i32* %138, i32** %7, align 8
  br label %139

139:                                              ; preds = %130
  %140 = load i32*, i32** %7, align 8
  %141 = call i64 @GetDWBE(i32* %140)
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %8, align 8
  %144 = icmp uge i64 %143, 4
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %145)
  %147 = load i64, i64* %8, align 8
  %148 = sub i64 %147, 4
  store i64 %148, i64* %8, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32* %150, i32** %7, align 8
  br label %151

151:                                              ; preds = %142
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %13, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %201

156:                                              ; preds = %151
  %157 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @snprintf(i8* %157, i32 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @strcasecmp(i8* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %165 = call i32 @strcat(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %174

166:                                              ; preds = %156
  %167 = load i8*, i8** %14, align 8
  %168 = call i32 @strcasecmp(i8* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %172 = call i32 @strcat(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %166
  br label %174

174:                                              ; preds = %173, %163
  %175 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %176 = load i8*, i8** %14, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i32* @vlc_input_attachment_New(i8* %175, i8* %176, i8* %177, i32* %178, i64 %179)
  store i32* %180, i32** %15, align 8
  %181 = load i64, i64* %12, align 8
  %182 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ParseFlacPicture.pi_cover_score, i64 0, i64 0))
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %174
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds [21 x i8], [21 x i8]* @ParseFlacPicture.pi_cover_score, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load i32, i32* %9, align 4
  %194 = load i32*, i32** %11, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i64, i64* %12, align 8
  %196 = getelementptr inbounds [21 x i8], [21 x i8]* @ParseFlacPicture.pi_cover_score, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = load i32*, i32** %10, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %192, %184, %174
  br label %201

201:                                              ; preds = %200, %155, %128, %109
  %202 = load i8*, i8** %14, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i32*, i32** %15, align 8
  store i32* %206, i32** %6, align 8
  br label %207

207:                                              ; preds = %201, %96, %77, %60, %49, %20
  %208 = load i32*, i32** %6, align 8
  ret i32* %208
}

declare dso_local i64 @GetDWBE(i32*) #1

declare dso_local i32 @assert(...) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @vlc_input_attachment_New(i8*, i8*, i8*, i32*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
