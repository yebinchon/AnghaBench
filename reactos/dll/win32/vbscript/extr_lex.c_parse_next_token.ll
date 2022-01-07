; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_lex.c_parse_next_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_lex.c_parse_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i64, i32 }

@tNL = common dso_local global i64 0, align 8
@tEOF = common dso_local global i32 0, align 4
@tREM = common dso_local global i32 0, align 4
@tEMPTYBRACKETS = common dso_local global i32 0, align 4
@tNEQ = common dso_local global i32 0, align 4
@tLTEQ = common dso_local global i32 0, align 4
@tGTEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unhandled char %c in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @parse_next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_next_token(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = call i32 @skip_spaces(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @tNL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @tEOF, align 4
  %25 = sext i32 %24 to i64
  br label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @tNL, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i64 [ %25, %23 ], [ %27, %26 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %231

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 48, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @parse_numeric_literal(%struct.TYPE_10__* %44, i8* %45)
  store i32 %46, i32* %3, align 4
  br label %231

47:                                               ; preds = %39, %31
  %48 = load i8, i8* %6, align 1
  %49 = call i64 @isalphaW(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = call i32 @check_keywords(%struct.TYPE_10__* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @parse_identifier(%struct.TYPE_10__* %57, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %231

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @tREM, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %231

66:                                               ; preds = %60
  store i8 39, i8* %6, align 1
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i8, i8* %6, align 1
  %69 = sext i8 %68 to i32
  switch i32 %69, label %220 [
    i32 10, label %70
    i32 13, label %70
    i32 39, label %77
    i32 58, label %80
    i32 41, label %80
    i32 44, label %80
    i32 61, label %80
    i32 43, label %80
    i32 42, label %80
    i32 47, label %80
    i32 94, label %80
    i32 92, label %80
    i32 46, label %80
    i32 95, label %80
    i32 45, label %87
    i32 40, label %116
    i32 34, label %136
    i32 38, label %140
    i32 60, label %160
    i32 62, label %205
  ]

70:                                               ; preds = %67, %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load i64, i64* @tNL, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %231

77:                                               ; preds = %67
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = call i32 @comment_line(%struct.TYPE_10__* %78)
  store i32 %79, i32* %3, align 4
  br label %231

80:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %231

87:                                               ; preds = %67
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 45
  br i1 %99, label %100, label %111

100:                                              ; preds = %92
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 62
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = call i32 @comment_line(%struct.TYPE_10__* %109)
  store i32 %110, i32* %3, align 4
  br label %231

111:                                              ; preds = %100, %92, %87
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %113, align 8
  store i32 45, i32* %3, align 4
  br label %231

116:                                              ; preds = %67
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = call i32 @skip_spaces(%struct.TYPE_10__* %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 41
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %131, align 8
  %134 = load i32, i32* @tEMPTYBRACKETS, align 4
  store i32 %134, i32* %3, align 4
  br label %231

135:                                              ; preds = %116
  store i32 40, i32* %3, align 4
  br label %231

136:                                              ; preds = %67
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @parse_string_literal(%struct.TYPE_10__* %137, i8* %138)
  store i32 %139, i32* %3, align 4
  br label %231

140:                                              ; preds = %67
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %142, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 104
  br i1 %147, label %155, label %148

148:                                              ; preds = %140
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 72
  br i1 %154, label %155, label %159

155:                                              ; preds = %148, %140
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @parse_hex_literal(%struct.TYPE_10__* %156, i8* %157)
  store i32 %158, i32* %3, align 4
  br label %231

159:                                              ; preds = %148
  store i32 38, i32* %3, align 4
  br label %231

160:                                              ; preds = %67
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  switch i32 %166, label %204 [
    i32 62, label %167
    i32 61, label %173
    i32 33, label %179
  ]

167:                                              ; preds = %160
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %169, align 8
  %172 = load i32, i32* @tNEQ, align 4
  store i32 %172, i32* %3, align 4
  br label %231

173:                                              ; preds = %160
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %175, align 8
  %178 = load i32, i32* @tLTEQ, align 4
  store i32 %178, i32* %3, align 4
  br label %231

179:                                              ; preds = %160
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %203

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 45
  br i1 %191, label %192, label %203

192:                                              ; preds = %184
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 45
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = call i32 @comment_line(%struct.TYPE_10__* %201)
  store i32 %202, i32* %3, align 4
  br label %231

203:                                              ; preds = %192, %184, %179
  br label %204

204:                                              ; preds = %203, %160
  store i32 60, i32* %3, align 4
  br label %231

205:                                              ; preds = %67
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %207, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 61
  br i1 %212, label %213, label %219

213:                                              ; preds = %205
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %215, align 8
  %218 = load i32, i32* @tGTEQ, align 4
  store i32 %218, i32* %3, align 4
  br label %231

219:                                              ; preds = %205
  store i32 62, i32* %3, align 4
  br label %231

220:                                              ; preds = %67
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i8, i8* %223, align 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @debugstr_w(i8* %227)
  %229 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %224, i32 %228)
  br label %230

230:                                              ; preds = %220
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %219, %213, %204, %200, %173, %167, %159, %155, %136, %135, %129, %111, %108, %80, %77, %70, %64, %56, %43, %28
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @skip_spaces(%struct.TYPE_10__*) #1

declare dso_local i32 @parse_numeric_literal(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @isalphaW(i8 signext) #1

declare dso_local i32 @check_keywords(%struct.TYPE_10__*) #1

declare dso_local i32 @parse_identifier(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @comment_line(%struct.TYPE_10__*) #1

declare dso_local i32 @parse_string_literal(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @parse_hex_literal(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @FIXME(i8*, i8 signext, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
