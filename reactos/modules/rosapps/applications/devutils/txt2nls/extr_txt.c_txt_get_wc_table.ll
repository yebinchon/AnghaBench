; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/txt2nls/extr_txt.c_txt_get_wc_table.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/txt2nls/extr_txt.c_txt_get_wc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to read TXT file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WCTABLE\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Wrong WCTABLE size: %u (line: %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"WCTABLE not found.\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Wrong unicode char value: %u (line: %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Wrong char value: %u (line: %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @txt_get_wc_table(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i64 4, i64 4
  %27 = mul i64 65536, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @malloc(i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %210

34:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %36, 65535
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  store i32* %42, i32** %17, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %18, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i8*, i8** %5, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %200

66:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %103, %66
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @fgets(i8* %68, i32 256, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %76 = call i8* @strstr(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %103

79:                                               ; preds = %72
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %87, %79
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isspace(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  br label %82

90:                                               ; preds = %82
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strtoul(i8* %91, i8** %9, i32 10)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 65536
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  br label %200

102:                                              ; preds = %95
  store i32 1, i32* %15, align 4
  br label %104

103:                                              ; preds = %72
  br label %67

104:                                              ; preds = %102, %67
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %200

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %196, %142, %109
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %112 = load i32*, i32** %16, align 8
  %113 = call i64 @fgets(i8* %111, i32 256, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i1 [ false, %110 ], [ %117, %115 ]
  br i1 %119, label %120, label %199

120:                                              ; preds = %118
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %123, i8** %9, align 8
  br label %124

124:                                              ; preds = %129, %120
  %125 = load i8*, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isspace(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %9, align 8
  br label %124

132:                                              ; preds = %124
  %133 = load i8*, i8** %9, align 8
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 59
  br i1 %141, label %142, label %143

142:                                              ; preds = %136, %132
  br label %110

143:                                              ; preds = %136
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @strtoul(i8* %144, i8** %9, i32 16)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp sgt i32 %146, 65535
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %149, i32 %150)
  br label %200

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %158, %152
  %154 = load i8*, i8** %9, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i64 @isspace(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  br label %153

161:                                              ; preds = %153
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strtoul(i8* %162, i8** %9, i32 16)
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* %19, align 4
  %168 = icmp sgt i32 %167, 65535
  br i1 %168, label %175, label %169

169:                                              ; preds = %166, %161
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %19, align 4
  %174 = icmp sgt i32 %173, 255
  br i1 %174, label %175, label %179

175:                                              ; preds = %172, %166
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %176, i32 %177)
  br label %200

179:                                              ; preds = %172, %169
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32*, i32** %10, align 8
  store i32* %183, i32** %21, align 8
  %184 = load i32, i32* %19, align 4
  %185 = load i32*, i32** %21, align 8
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  br label %196

189:                                              ; preds = %179
  %190 = load i32*, i32** %10, align 8
  store i32* %190, i32** %22, align 8
  %191 = load i32, i32* %19, align 4
  %192 = load i32*, i32** %22, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  br label %196

196:                                              ; preds = %189, %182
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %12, align 4
  br label %110

199:                                              ; preds = %118
  store i32 1, i32* %14, align 4
  br label %200

200:                                              ; preds = %199, %175, %148, %107, %98, %64
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @free(i32* %204)
  store i32* null, i32** %10, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @fclose(i32* %207)
  %209 = load i32*, i32** %10, align 8
  store i32* %209, i32** %4, align 8
  br label %210

210:                                              ; preds = %206, %32
  %211 = load i32*, i32** %4, align 8
  ret i32* %211
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
