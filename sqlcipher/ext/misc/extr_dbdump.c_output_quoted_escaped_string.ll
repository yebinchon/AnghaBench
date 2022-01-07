; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_output_quoted_escaped_string.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_output_quoted_escaped_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i8*, i32)* }

@.str = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"replace(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\012\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\015\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c",'%s',char(13))\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c",'%s',char(10))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @output_quoted_escaped_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_quoted_escaped_string(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca [20 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 39
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 13
  br label %33

33:                                               ; preds = %29, %25, %21, %13
  %34 = phi i1 [ false, %25 ], [ false, %21 ], [ false, %13 ], [ %32, %29 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %33
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (%struct.TYPE_4__*, i8*, ...) @output_formatted(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %230

47:                                               ; preds = %39
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %48

81:                                               ; preds = %48
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32 (i8*, i32)*, i32 (i8*, i32)** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %87(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %94 = call i8* @unused_string(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %84, %81
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32 (i8*, i32)*, i32 (i8*, i32)** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %101(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %108 = call i8* @unused_string(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  store i8* %108, i8** %8, align 8
  br label %109

109:                                              ; preds = %98, %95
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32 (i8*, i32)*, i32 (i8*, i32)** %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %112(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %199, %190, %171, %109
  %118 = load i8*, i8** %4, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %208

121:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %145, %121
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %6, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %122
  %131 = load i8, i8* %6, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 10
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i8, i8* %6, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 13
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i8, i8* %6, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 39
  br label %142

142:                                              ; preds = %138, %134, %130, %122
  %143 = phi i1 [ false, %134 ], [ false, %130 ], [ false, %122 ], [ %141, %138 ]
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %122

148:                                              ; preds = %142
  %149 = load i8, i8* %6, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 39
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 (%struct.TYPE_4__*, i8*, ...) @output_formatted(%struct.TYPE_4__* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %160, i8* %161)
  %163 = load i32, i32* %5, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %4, align 8
  br label %167

167:                                              ; preds = %158, %155
  %168 = load i8, i8* %6, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 39
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32 (i8*, i32)*, i32 (i8*, i32)** %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 %174(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  br label %117

179:                                              ; preds = %167
  %180 = load i8, i8* %6, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %208

184:                                              ; preds = %179
  %185 = load i8*, i8** %4, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %4, align 8
  %187 = load i8, i8* %6, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 10
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32 (i8*, i32)*, i32 (i8*, i32)** %192, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 %193(i8* %194, i32 %197)
  br label %117

199:                                              ; preds = %184
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32 (i8*, i32)*, i32 (i8*, i32)** %201, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 %202(i8* %203, i32 %206)
  br label %117

208:                                              ; preds = %183, %117
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32 (i8*, i32)*, i32 (i8*, i32)** %210, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 %211(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %208
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 (%struct.TYPE_4__*, i8*, ...) @output_formatted(%struct.TYPE_4__* %219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %218, %208
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = call i32 (%struct.TYPE_4__*, i8*, ...) @output_formatted(%struct.TYPE_4__* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %225, %222
  br label %230

230:                                              ; preds = %229, %43
  ret void
}

declare dso_local i32 @output_formatted(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i8* @unused_string(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
