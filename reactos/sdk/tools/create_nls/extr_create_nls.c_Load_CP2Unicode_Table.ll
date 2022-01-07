; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_Load_CP2Unicode_Table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_Load_CP2Unicode_Table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8, i8**, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Loading translation table \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Not enough memory for Codepage to Unicode table\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Line %d: Entry 0x%06lX: File \22%s\22 corrupted\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Line %d: Entry 0x%06lX unicode value: File \22%s\22 corrupted\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DBCS LEAD BYTE\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Line %d: Entry 0x%04lX: Error: DBCS lead byte overflowed\0A\00", align 1
@MAX_LEADBYTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"Line %d: Error: could not start new lead byte range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.TYPE_5__*)* @Load_CP2Unicode_Table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Load_CP2Unicode_Table(i8* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = call i32 @memset(%struct.TYPE_5__* %19, i32 0, i32 32)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8 63, i8* %27, align 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8 63, i8* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = call i32 @patch_codepage_info(%struct.TYPE_5__* %32)
  %34 = call i64 @malloc(i32 65536)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %250

40:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %41

54:                                               ; preds = %41
  store i32 256, i32* %10, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 65536
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load i8*, i8** %5, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %4, align 8
  br label %250

77:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %245, %192, %111, %105, %77
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = load i32*, i32** %12, align 8
  %81 = call i64 @fgets(i8* %79, i32 256, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %246

83:                                               ; preds = %78
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %92, %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isspace(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  br label %87

95:                                               ; preds = %87
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 35
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %95
  br label %78

106:                                              ; preds = %99
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strtol(i8* %107, i8** %9, i32 0)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 65535
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113, i8* %114)
  br label %78

116:                                              ; preds = %106
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %117, 255
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 2, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %119, %116
  br label %128

128:                                              ; preds = %133, %127
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @isspace(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %128

136:                                              ; preds = %128
  %137 = load i8*, i8** %9, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 35
  br i1 %145, label %146, label %147

146:                                              ; preds = %140, %136
  br label %164

147:                                              ; preds = %140
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @strtol(i8* %148, i8** %9, i32 0)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %150, 65535
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i8*, i8** %5, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %154, i8* %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %11, align 4
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %13, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 %159, i8* %163, align 1
  br label %164

164:                                              ; preds = %157, %146
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i8*, i8** %9, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 35
  br label %175

175:                                              ; preds = %170, %165
  %176 = phi i1 [ false, %165 ], [ %174, %170 ]
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %9, align 8
  br label %165

180:                                              ; preds = %175
  %181 = load i8*, i8** %9, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 35
  br i1 %184, label %185, label %240

185:                                              ; preds = %180
  %186 = load i8*, i8** %9, align 8
  %187 = call i64 @strstr(i8* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %240

189:                                              ; preds = %185
  %190 = load i32, i32* %10, align 4
  %191 = icmp sgt i32 %190, 255
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %193, i32 %194)
  br label %78

196:                                              ; preds = %189
  %197 = load i8*, i8** %13, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %196
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i8**, i8*** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 %210, 1
  %212 = mul nsw i32 %211, 2
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %209, i64 %214
  store i8* %206, i8** %215, align 8
  br label %239

216:                                              ; preds = %196
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @MAX_LEADBYTES, align 4
  %219 = sdiv i32 %218, 2
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sub nsw i32 %230, 1
  %232 = mul nsw i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %229, i64 %233
  store i8* %226, i8** %234, align 8
  br label %238

235:                                              ; preds = %216
  %236 = load i32, i32* %16, align 4
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %235, %221
  br label %239

239:                                              ; preds = %238, %203
  br label %245

240:                                              ; preds = %185, %180
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 0, i32* %15, align 4
  br label %244

244:                                              ; preds = %243, %240
  br label %245

245:                                              ; preds = %244, %239
  br label %78

246:                                              ; preds = %78
  %247 = load i32*, i32** %12, align 8
  %248 = call i32 @fclose(i32* %247)
  %249 = load i8*, i8** %13, align 8
  store i8* %249, i8** %4, align 8
  br label %250

250:                                              ; preds = %246, %74, %38
  %251 = load i8*, i8** %4, align 8
  ret i8* %251
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @patch_codepage_info(%struct.TYPE_5__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
