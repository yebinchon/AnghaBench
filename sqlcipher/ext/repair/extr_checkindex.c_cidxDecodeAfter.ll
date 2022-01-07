; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxDecodeAfter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxDecodeAfter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error parsing after value\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8***)* @cidxDecodeAfter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxDecodeAfter(i32* %0, i32 %1, i8* %2, i8*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8*** %3, i8**** %9, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8** @cidxMalloc(i32* %11, i32 %27)
  store i8** %28, i8*** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %202

32:                                               ; preds = %4
  %33 = load i8**, i8*** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = bitcast i8** %36 to i8*
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @memcpy(i8* %39, i8* %40, i32 %42)
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %198, %32
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %201

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i8*, i8** %15, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %15, align 8
  br label %49

57:                                               ; preds = %49
  %58 = load i8*, i8** %15, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 78
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %15, align 8
  %64 = call i64 @memcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %206

67:                                               ; preds = %62
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %69, i8** %15, align 8
  br label %174

70:                                               ; preds = %57
  %71 = load i8*, i8** %15, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 88
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %15, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 39
  br i1 %79, label %80, label %126

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %15, align 8
  %82 = load i8**, i8*** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 88
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %15, align 8
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i8*, i8** %15, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 39
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %206

99:                                               ; preds = %93
  %100 = load i8*, i8** %15, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %15, align 8
  br label %102

102:                                              ; preds = %99, %122
  %103 = load i8*, i8** %15, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %206

108:                                              ; preds = %102
  %109 = load i8*, i8** %15, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 39
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %15, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 39
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %125

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i8*, i8** %15, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %15, align 8
  br label %102

125:                                              ; preds = %120
  br label %173

126:                                              ; preds = %75
  %127 = load i8*, i8** %15, align 8
  %128 = load i8**, i8*** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  store i8* %127, i8** %131, align 8
  br label %132

132:                                              ; preds = %169, %126
  %133 = load i8*, i8** %15, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sge i32 %135, 48
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i8*, i8** %15, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 57
  br i1 %141, label %167, label %142

142:                                              ; preds = %137, %132
  %143 = load i8*, i8** %15, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %167, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %15, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = load i8*, i8** %15, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %15, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 101
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** %15, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 69
  br label %167

167:                                              ; preds = %162, %157, %152, %147, %142, %137
  %168 = phi i1 [ true, %157 ], [ true, %152 ], [ true, %147 ], [ true, %142 ], [ true, %137 ], [ %166, %162 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i8*, i8** %15, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %15, align 8
  br label %132

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %125
  br label %174

174:                                              ; preds = %173, %67
  br label %175

175:                                              ; preds = %180, %174
  %176 = load i8*, i8** %15, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %15, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %15, align 8
  br label %175

183:                                              ; preds = %175
  %184 = load i8*, i8** %15, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp eq i32 %187, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 0, i32 44
  %193 = icmp ne i32 %186, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %206

195:                                              ; preds = %183
  %196 = load i8*, i8** %15, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %15, align 8
  store i8 0, i8* %196, align 1
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %44

201:                                              ; preds = %44
  br label %202

202:                                              ; preds = %201, %4
  %203 = load i8**, i8*** %10, align 8
  %204 = load i8***, i8**** %9, align 8
  store i8** %203, i8*** %204, align 8
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %5, align 4
  br label %213

206:                                              ; preds = %194, %107, %98, %66
  %207 = load i8**, i8*** %10, align 8
  %208 = call i32 @sqlite3_free(i8** %207)
  %209 = load i8***, i8**** %9, align 8
  store i8** null, i8*** %209, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @cidxCursorError(i32* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %212 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %206, %202
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @cidxMalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8**) #1

declare dso_local i32 @cidxCursorError(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
