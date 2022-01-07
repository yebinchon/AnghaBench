; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_suggest.c_FormatError.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_suggest.c_FormatError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DE_BEGIN = common dso_local global i32 0, align 4
@SUG_IGN_FORMATMESSAGE = common dso_local global i32 0, align 4
@ERROR_EXTENDED_ERROR = common dso_local global i32 0, align 4
@WAITNET_LOADED = common dso_local global i64 0, align 8
@lcid = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_MAX_WIDTH_MASK = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@ERROR_RESOURCE_LANG_NOT_FOUND = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i32 0, align 4
@CHAR_NEWLINE = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FormatError(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [128 x i32], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %213

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @lstrlen(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %213

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = call i32* @FormatSuggest(i32 %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DE_BEGIN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SUG_IGN_FORMATMESSAGE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %114, label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* @ERROR_EXTENDED_ERROR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i64, i64* @WAITNET_LOADED, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %70 = call i32 @COUNTOF(i32* %69)
  %71 = call i32 @WNetGetLastError(i32* %16, i32* %66, i32 %67, i32* %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @lstrlen(i32* %73)
  store i32 %74, i32* %5, align 4
  br label %213

75:                                               ; preds = %58
  %76 = load i32, i32* @lcid, align 4
  %77 = call i64 @LANGIDFROMLCID(i32 %76)
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %110, %75
  %79 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %80 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FORMAT_MESSAGE_MAX_WIDTH_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @FormatMessage(i32 %83, i32* null, i32 %84, i64 %85, i32* %86, i32 %90, i32* null)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %78
  %95 = load i32, i32* @LANG_NEUTRAL, align 4
  %96 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %97 = call i64 @MAKELANGID(i32 %95, i32 %96)
  %98 = load i64, i64* %14, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i64, i64* @ERROR_RESOURCE_LANG_NOT_FOUND, align 8
  %102 = call i64 (...) @GetLastError()
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %100, %94, %78
  %105 = phi i1 [ false, %94 ], [ false, %78 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* @LANG_NEUTRAL, align 4
  %108 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %109 = call i64 @MAKELANGID(i32 %107, i32 %108)
  store i64 %109, i64* %14, align 8
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %78, label %113

113:                                              ; preds = %110
  store i32 2, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %51, %41
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @CHAR_NULL, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32*, i32** %12, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %171

124:                                              ; preds = %121
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %124
  store i32 0, i32* %18, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32*, i32** %7, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %129
  br label %172

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %155, %144
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* @CHAR_NEWLINE, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 0, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %13, align 4
  br label %145

158:                                              ; preds = %145
  %159 = load i32, i32* @hAppInstance, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @LoadString(i32 %159, i32 %162, i32* %163, i32 %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %5, align 4
  br label %213

171:                                              ; preds = %124, %121
  br label %172

172:                                              ; preds = %171, %143
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %211

175:                                              ; preds = %172
  %176 = load i32, i32* @CHAR_NEWLINE, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %176, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %175
  %185 = load i32, i32* @CHAR_NULL, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %184, %175
  %192 = load i32, i32* %11, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 13, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %194
  %203 = load i32, i32* @CHAR_NULL, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %194
  br label %210

210:                                              ; preds = %209, %191
  br label %211

211:                                              ; preds = %210, %172
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %158, %72, %40, %21
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @lstrlen(i32*) #1

declare dso_local i32* @FormatSuggest(i32) #1

declare dso_local i32 @WNetGetLastError(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i64 @LANGIDFROMLCID(i32) #1

declare dso_local i32 @FormatMessage(i32, i32*, i32, i64, i32*, i32, i32*) #1

declare dso_local i64 @MAKELANGID(i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
