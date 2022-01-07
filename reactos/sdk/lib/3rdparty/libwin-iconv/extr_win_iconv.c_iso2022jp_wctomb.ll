; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_wctomb.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@iso2022jp_esc = common dso_local global %struct.TYPE_5__* null, align 8
@MB_CHAR_MAX = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ISO2022JP_CS_ASCII = common dso_local global i32 0, align 4
@ISO2022_SI = common dso_local global i32 0, align 4
@iso2022_SO_seq = common dso_local global i8* null, align 8
@ISO2022_SO = common dso_local global i32 0, align 4
@iso2022_SI_seq = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i8*, i32)* @iso2022jp_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022jp_wctomb(%struct.TYPE_6__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @iso2022jp_esc, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %12, align 8
  %26 = load i32, i32* @MB_CHAR_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load i32, i32* @MB_CHAR_MAX, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @ConvertINetUnicodeToMultiByte(i32* %18, i32 %34, i32* %35, i32* %9, i8* %29, i32* %15)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %5
  %45 = load i32, i32* @EILSEQ, align 4
  %46 = call i32 @seterror(i32 %45)
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @E2BIG, align 4
  %53 = call i32 @seterror(i32 %52)
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  store i32 %59, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %108

60:                                               ; preds = %55
  store i32 1, i32* %23, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %20, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %77 = load i32, i32* %23, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %20, align 4
  %83 = call i64 @strncmp(i8* %29, i8* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %69
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %21, align 4
  br label %96

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %23, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %23, align 4
  br label %61

96:                                               ; preds = %85, %61
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = load i32, i32* %23, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @EILSEQ, align 4
  %106 = call i32 @seterror(i32 %105)
  store i32 %106, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %58
  %109 = load i32, i32* @ISO2022_SI, align 4
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %29, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8*, i8** @iso2022_SO_seq, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %114, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load i32, i32* @ISO2022_SO, align 4
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %120, %108
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %124
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 128
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @EILSEQ, align 4
  %141 = call i32 @seterror(i32 %140)
  store i32 %141, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

142:                                              ; preds = %134, %124
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %144, %145
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* @EILSEQ, align 4
  %150 = call i32 @seterror(i32 %149)
  store i32 %150, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = call i64 @ISO2022_MODE(i32 %156, i32 %157)
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %152
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %29, i64 %165
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @memmove(i8* %29, i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %160
  store i32 0, i32* %20, align 4
  br label %212

170:                                              ; preds = %152
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %194

174:                                              ; preds = %170
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %176 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %29, i64 %182
  %184 = load i32, i32* %19, align 4
  %185 = call i32 @memmove(i8* %183, i8* %29, i32 %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %187 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @memcpy(i8* %29, i8* %191, i32 %192)
  br label %194

194:                                              ; preds = %174, %170
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @ISO2022_MODE_SHIFT(i64 %197)
  %199 = load i32, i32* @ISO2022_SO, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %194
  %202 = getelementptr inbounds i8, i8* %29, i64 1
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i32 @memmove(i8* %202, i8* %29, i32 %205)
  %207 = load i8*, i8** @iso2022_SI_seq, align 8
  %208 = call i32 @memcpy(i8* %29, i8* %207, i32 1)
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %20, align 4
  br label %211

211:                                              ; preds = %201, %194
  br label %212

212:                                              ; preds = %211, %169
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %20, align 4
  %216 = add nsw i32 %214, %215
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* @E2BIG, align 4
  %220 = call i32 @seterror(i32 %219)
  store i32 %220, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

221:                                              ; preds = %212
  %222 = load i8*, i8** %10, align 8
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i32 @memcpy(i8* %222, i8* %29, i32 %225)
  %227 = load i32, i32* %21, align 4
  %228 = load i32, i32* %22, align 4
  %229 = call i64 @ISO2022_MODE(i32 %227, i32 %228)
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %235

235:                                              ; preds = %221, %218, %148, %139, %104, %51, %44
  %236 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %236)
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ConvertINetUnicodeToMultiByte(i32*, i32, i32*, i32*, i8*, i32*) #2

declare dso_local i32 @seterror(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @ISO2022_MODE(i32, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @ISO2022_MODE_SHIFT(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
