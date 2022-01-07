; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_..dvb-text.h_vlc_from_EIT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_..dvb-text.h_vlc_from_EIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ISO_6937\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ISO_8859-%u\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ISO_8859-%hhu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EUC-KR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"GB2312\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\0D\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @vlc_from_EIT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_from_EIT(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %226

22:                                               ; preds = %2
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %8, align 8
  store i64 1, i64* %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %10, align 1
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %79

31:                                               ; preds = %22
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 1, %33
  %35 = and i32 %34, 3838
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = add i32 4, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 @snprintf(i8* %38, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %42)
  br label %78

44:                                               ; preds = %31
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %76 [
    i32 16, label %47
    i32 17, label %72
    i32 20, label %72
    i32 18, label %73
    i32 19, label %74
    i32 21, label %75
  ]

47:                                               ; preds = %44
  store i64 3, i64* %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %48, 3
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %47
  store i8* null, i8** %3, align 8
  br label %226

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %10, align 1
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 1, %62
  %64 = and i32 %63, 61438
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %68 = load i8, i8* %10, align 1
  %69 = call i32 @snprintf(i8* %67, i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %68)
  br label %71

70:                                               ; preds = %57
  store i8* null, i8** %3, align 8
  br label %226

71:                                               ; preds = %66
  br label %77

72:                                               ; preds = %44, %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %77

73:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %77

74:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %77

75:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %77

76:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %226

77:                                               ; preds = %75, %74, %73, %72, %71
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i64, i64* %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %5, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %5, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i8* @FromCharset(i8* %86, i8* %87, i64 %88)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %79
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i8* @strndup(i8* %93, i64 %94)
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp eq i8* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i8* null, i8** %3, align 8
  br label %226

102:                                              ; preds = %92
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @EnsureUTF8(i8* %103)
  br label %105

105:                                              ; preds = %102, %79
  %106 = load i8*, i8** %11, align 8
  %107 = call i64 @strlen(i8* %106)
  store i64 %107, i64* %5, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext -62)
  store i8* %109, i8** %12, align 8
  br label %110

110:                                              ; preds = %158, %105
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %162

113:                                              ; preds = %110
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, -118
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @memcpy(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i8*, i8** %12, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, -122
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, -121
  br i1 %133, label %134, label %157

134:                                              ; preds = %128, %122
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  store i64 %139, i64* %13, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %13, align 8
  %145 = sub i64 %143, %144
  %146 = call i32 @memmove(i8* %140, i8* %142, i64 %145)
  %147 = load i64, i64* %5, align 8
  %148 = sub i64 %147, 2
  store i64 %148, i64* %5, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* %13, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %134
  br label %162

156:                                              ; preds = %134
  br label %157

157:                                              ; preds = %156, %128
  br label %158

158:                                              ; preds = %157
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = call i8* @strchr(i8* %160, i8 signext -62)
  store i8* %161, i8** %12, align 8
  br label %110

162:                                              ; preds = %155, %110
  %163 = load i8*, i8** %11, align 8
  %164 = call i8* @strchr(i8* %163, i8 signext -18)
  store i8* %164, i8** %14, align 8
  br label %165

165:                                              ; preds = %220, %162
  %166 = load i8*, i8** %14, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %224

168:                                              ; preds = %165
  %169 = load i8*, i8** %14, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, -126
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %220

175:                                              ; preds = %168
  %176 = load i8*, i8** %14, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, -118
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 @memcpy(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  br label %184

184:                                              ; preds = %181, %175
  %185 = load i8*, i8** %14, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, -122
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, -121
  br i1 %195, label %196, label %219

196:                                              ; preds = %190, %184
  %197 = load i8*, i8** %14, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  store i64 %201, i64* %15, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 3
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* %15, align 8
  %207 = sub i64 %205, %206
  %208 = call i32 @memmove(i8* %202, i8* %204, i64 %207)
  %209 = load i64, i64* %5, align 8
  %210 = sub i64 %209, 3
  store i64 %210, i64* %5, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = load i64, i64* %5, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 0, i8* %213, align 1
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* %15, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %196
  br label %224

218:                                              ; preds = %196
  br label %219

219:                                              ; preds = %218, %190
  br label %220

220:                                              ; preds = %219, %174
  %221 = load i8*, i8** %14, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = call i8* @strchr(i8* %222, i8 signext -18)
  store i8* %223, i8** %14, align 8
  br label %165

224:                                              ; preds = %217, %165
  %225 = load i8*, i8** %11, align 8
  store i8* %225, i8** %3, align 8
  br label %226

226:                                              ; preds = %224, %101, %76, %70, %56, %21
  %227 = load i8*, i8** %3, align 8
  ret i8* %227
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i8* @FromCharset(i8*, i8*, i64) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
