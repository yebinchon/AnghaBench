; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_ipv4address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_ipv4address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8*, i64 }
%struct.TYPE_8__ = type { i64, i64, i8*, i64 }

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Adding zero\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"(%p %p %x %d): Canonicalized IPv4 address, ip=%s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_8__*, i64, i64)* @canonicalize_ipv4address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @canonicalize_ipv4address(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @canonicalize_implicit_ipv4address(%struct.TYPE_7__* %19, %struct.TYPE_8__* %20, i64 %21, i64 %22)
  store i64 %23, i64* %5, align 8
  br label %258

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %195

35:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %160, %35
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %163

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %52, label %99

52:                                               ; preds = %43
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 2
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %98

75:                                               ; preds = %65, %58, %55
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 %84, i8* %91, align 1
  br label %92

92:                                               ; preds = %78, %75
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %65
  br label %159

99:                                               ; preds = %52, %43
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %133

108:                                              ; preds = %99
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %117, i8* %124, align 1
  br label %125

125:                                              ; preds = %111, %108
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  store i64 0, i64* %11, align 8
  %130 = load i64, i64* @FALSE, align 8
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %12, align 8
  br label %158

133:                                              ; preds = %99
  %134 = load i64, i64* %9, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 %142, i8* %149, align 1
  br label %150

150:                                              ; preds = %136, %133
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* @TRUE, align 8
  store i64 %157, i64* %13, align 8
  br label %158

158:                                              ; preds = %150, %125
  br label %159

159:                                              ; preds = %158, %98
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %10, align 8
  br label %37

163:                                              ; preds = %37
  br label %164

164:                                              ; preds = %191, %163
  %165 = load i64, i64* %12, align 8
  %166 = icmp ult i64 %165, 3
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  %168 = load i64, i64* %9, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %186, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 46, i8* %177, align 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  store i8 48, i8* %185, align 1
  br label %186

186:                                              ; preds = %170, %167
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 2
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %186
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %164

194:                                              ; preds = %164
  br label %223

195:                                              ; preds = %24
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = mul i64 %211, 4
  %213 = trunc i64 %212 to i32
  %214 = call i32 @memcpy(i8* %205, i8* %208, i32 %213)
  br label %215

215:                                              ; preds = %198, %195
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, %218
  store i64 %222, i64* %220, align 8
  br label %223

223:                                              ; preds = %215, %194
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sub i64 %226, %229
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  %233 = load i64, i64* %9, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %255, label %235

235:                                              ; preds = %223
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %9, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @debugstr_wn(i8* %246, i64 %249)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %236, %struct.TYPE_8__* %237, i64 %238, i64 %239, i32 %250, i64 %253)
  br label %255

255:                                              ; preds = %235, %223
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* @TRUE, align 8
  store i64 %257, i64* %5, align 8
  br label %258

258:                                              ; preds = %256, %18
  %259 = load i64, i64* %5, align 8
  ret i64 %259
}

declare dso_local i64 @canonicalize_implicit_ipv4address(%struct.TYPE_7__*, %struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
